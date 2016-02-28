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
    struct data Data;
    
    if(getData(&Data))
    {
        TX_AND_POWER_Write(0);
        #if TEST == ON
            char buf[500];
            sprintf(buf, "V_m: %lfV\n\rA_m: %fA\n\rP_m: %fW\n\rRPM: %f\n\rMoment: %fNm\n\rP_mek: %fW\n\rDistance: %lu\n\rtime: %lums\n\rstop: %X\r\n\r\n"
                ,Data.V_motor.avg, Data.A_motor.avg, Data.P_motor.avg, Data.RPM.avg, Data.Moment.avg, Data.P_mekanisk.avg, Data.distance, Data.time_ms, Data.stop);
            USBUART_1_PutString(buf); 
        #endif
        //SendPackage(&Data);
        TX_AND_POWER_Write(1);
        
    }
    
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
    //UART_init();
    isr_4_StartEx(PID_isr);
    Clock_4_Start();
    #if TEST == ON
        USBUART_1_Start(0, USBUART_1_5V_OPERATION) ;
    	while(USBUART_1_GetConfiguration()){};  
    	USBUART_1_CDC_Init();
       while(USBUART_1_CDCIsReady() == 0u);
    #endif
}

/* [] END OF FILE */
