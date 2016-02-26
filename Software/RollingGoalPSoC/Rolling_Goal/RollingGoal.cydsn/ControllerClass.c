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

int set_moment=0;

//struct sekvens * seq = NULL;


CY_ISR_PROTO(PID_isr);

CY_ISR(PID_isr)
{  
    PID_tick(getMoment(), set_moment);
}


void run()
{
    struct data Data;
    
    if(getData(&Data))
    {
        //SendPackage(&Data);
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
}

/* [] END OF FILE */
