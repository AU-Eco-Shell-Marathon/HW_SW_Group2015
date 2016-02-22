/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "sensor.h"
#include <Math.h>

CY_ISR_PROTO(SAR_ADC_1);
CY_ISR_PROTO(SAR_ADC_2);
CY_ISR_PROTO(RPM_isr);

void calcSamples(const int32 * values, const uint8 N_sample, struct sample * Sample);
void convertToUnit(int32 * value, const uint8 N_sample,int32 (*CountsTo)(int16), const uint8 type);
int32 CountToAmp(int32);
int32 CountToMoment(int32);

// Mållinger.
int32 V_motor[N];
int32 A_motor[N];
int32 Moment[N];
int32 RPM[N];
uint8 n = 0;

int32 Moment_temp = 0;
uint32 RPM_Moment_temp = 0;

// Mållinger af RPM

uint32 RPM_temp = 0;
//uint32 RPM_max = 0;
//uint32 RPM_sum = 0;
//uint32 RPM_min = 0xFFFFFFFF;
//uint16 RPM_samples = 0;

// strømovervågning til belastningskredsløb.
int16 A_generator_max = 0;
int32 A_generator_sum = 0;
int16 A_generator_min = 0xEFFF;
uint16 A_generator_samples = 0;


CY_ISR(SAR_ADC_1)
{
    Moment_temp = ADC_SAR_Seq_1_GetResult16(2);
    if(n == N)
        return;
    
    V_motor[n]=ADC_SAR_Seq_1_GetResult16(0);
    A_motor[n]=ADC_SAR_Seq_1_GetResult16(1);
    
    RPM_Moment_temp = RPM_temp;
    
    Moment[n]=Moment_temp;
    RPM[n]=RPM_Moment_temp;
    
    n++;
}

CY_ISR(SAR_ADC_2)
{
    if(A_generator_samples == 0xFFFF)
        return;
    
    
    uint16 A_temp = ADC_SAR_1_GetResult16();
    
    if(A_temp > A_generator_max)
        A_generator_max = A_temp;
    else if(A_temp < A_generator_min)
        A_generator_min = A_temp;
    
    A_generator_sum += (uint32)A_temp;
    
    A_generator_samples++;
    
}

CY_ISR(RPM_isr)
{
    uint32 temp = 0;
    uint8 count = 0;
    
    while(Timer_1_STATUS&(1<<3))
    {
        temp += Timer_1_ReadCapture();
        count++;
    };
    
    if(count >= 1)
        temp = temp/count;
    
    RPM_temp = 60000/temp;
    
}

void sensor_init()
{
    isr_1_StartEx(SAR_ADC_1);
    isr_2_StartEx(SAR_ADC_2);
    isr_3_StartEx(RPM_isr);
    ADC_SAR_1_Start();
    ADC_SAR_Seq_1_Start();
    Timer_1_Start();
    Counter_1_Start();
    Counter_2_Start();
    
    Opamp_1_Start();
    VDAC8_1_Start();
    Comp_1_Start();
    
    Clock_1_Start();
    Clock_2_Start();
    Clock_3_Start();
    Clock_5_Start();
    
    Control_Reg_1_Write(1);
    CyDelayUs(1000);
    Control_Reg_1_Write(0);
}

char getData(struct data * Data)
{
    if(n != N - 1)
        return 0;
    
    convertToUnit(V_motor, n, &ADC_SAR_Seq_1_CountsTo_uVolts,0);
    convertToUnit(A_motor, n, &ADC_SAR_Seq_1_CountsTo_uVolts,1);
    
    convertToUnit(Moment, n, &ADC_SAR_Seq_1_CountsTo_uVolts,2);
    
    int32 P_motor[N];
    int32 P_mekanisk[N];
    uint8 i;
    for(i = 0; i < N; i++)
    {
        P_motor[i] = (V_motor[i]/1000)*(A_motor[i]/1000);  
        P_mekanisk[i] = (Moment[i])*RPM[i];
    }

    calcSamples(V_motor, n, &Data->V_motor);
    calcSamples(A_motor, n, &Data->A_motor);
    calcSamples(Moment, n, &Data->Moment);
    calcSamples(RPM, n, &Data->RPM);
    calcSamples(P_motor, n, &Data->P_motor);
    calcSamples(P_mekanisk, n, &Data->P_mekanisk);
    
    Data->distance = Counter_1_ReadCounter();
    Data->time_ms = Counter_2_ReadCounter();
    Data->stop = Status_Reg_1_Read()&0b1;
    n=0;
    return 1;
}

int32 getMoment()
{
    return CountToMoment(ADC_SAR_1_CountsTo_uVolts(Moment_temp)) * RPM_Moment_temp;
}

void calcSamples(const int32 * values,const uint8 N_sample, struct sample * Sample)
{
    Sample->avg = 0;
    Sample->rms = 0;
    Sample->max = 0;
    Sample->min = 0xFFFF;
    
    uint8 i;
    for(i = 0; i < N_sample; i++)
    {         
        Sample->avg += values[i];
        
        if(values[i] > Sample->max)
            Sample->max = values[i];
        else if(values[i] < Sample->min)
            Sample->min = values[i];

    }
    
    if(N_sample == 128)
        Sample->avg = Sample->avg>>7;
    else
        Sample->avg = Sample->avg/N_sample;
    
    for(i = 0; i < N_sample; i++)
    {

        Sample->rms += (Sample->avg - values[i])^2;

    }
    Sample->rms = Sample->rms/128;
    if(Sample->rms < 0)
        Sample->rms = 0;
    else
        Sample->rms = sqrt((double)Sample->rms);

}

void convertToUnit(int32 * value, const uint8 N_sample,int32 (*CountsTo)(int16), const uint8 type)
{
    uint8 i;
    for(i = 0; i < N_sample; i++)
    {
        if(type == 0)
            value[i] = CountsTo(value[i]);
        else if(type == 1)
            value[i] = CountToAmp(CountsTo(value[i]));
        else if(type == 2)
            value[i] = CountToMoment(CountsTo(value[i]));
    }
    
}

int32 CountToMoment(int32 uvolt)
{
    return (uvolt - 2500000);
}

int32 CountToAmp(int32 uvolt)
{
    return ((uvolt/416) - (2500000/416))*10000;
}

/* [] END OF FILE */
