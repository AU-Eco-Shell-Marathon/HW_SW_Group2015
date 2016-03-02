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
#include "ControllerClass.h"
#include <project.h>
#include <stdio.h>

int set_moment=0;

//struct sekvens * seq = NULL;


CY_ISR_PROTO(PID_isr);

CY_ISR(PID_isr)
{  
    PID_tick(getMoment(), set_moment);
}

CY_ISR(Send_ISR)
{
    struct data Data;
    if(getData(&Data))
        SendData(&Data);
}

/* 
struct sample
{
    int32 avg;
    float rms;
    int32 min;
    int32 max;
};

struct data
{
    struct sample V_motor;
    struct sample A_motor;
    struct sample P_motor;
    struct sample RPM;
    struct sample Moment;
    struct sample P_mekanisk;
    uint32 distance;
    uint32 time_ms;
    char stop;
};
*/

void run()
{
        TX_AND_POWER_Write(1);
        ReceiveUARTData();
        TX_AND_POWER_Write(0);    
}

void stop()
{
    
    
}


void update(const struct PIDparameter * parameter, const double * Moment, char restart)
{
    if(parameter->valid)
    {    
        setPID(parameter);
    }
    
    if(*Moment != -1)
    {
        set_moment=*Moment;
    }
    
    if(restart)
    {
        Control_Reg_1_Write(0b1);
        getDistance(0b1);
    }
}

void init()
{
    
    sensor_init();
    PID_init();
    isr_4_StartEx(PID_isr);
    Clock_4_Start();
    InitUart();
    Clock_5_Start();
    isr_5_StartEx(Send_ISR);
}

/* [] END OF FILE */
