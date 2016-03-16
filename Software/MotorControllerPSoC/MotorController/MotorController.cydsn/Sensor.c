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
#include "Sensor.h"
uint16 RPM_temp = 0;
uint16 Current_temp = 0;
uint16 Volt_temp = 0;

CY_ISR_PROTO(RPM);
CY_ISR_PROTO(POWERMONITOR);
char RPM_reset=0;
CY_ISR(RPM)
{

    uint8 STATUS = Timer_RPM_STATUS;
    
    if((STATUS&(1<<1)))//capture
    {
        uint32 temp = Timer_RPM_ReadCapture();
        uint32 temp2 = 0;
        if(Timer_RPM_STATUS&(1<<3))
            temp2 = Timer_RPM_ReadCapture();
            
        
        RPM_reset=0;
        
        if(temp2 != 0)
        {
            RPM_temp = ((uint16)(24000000/(temp - temp2)));
        }
        else
        {
            RPM_temp=0;
        }
        
    }
    else if((STATUS&(1<<0)))//TC
    {
        
        if(RPM_reset)
        {
            RPM_temp=0;
        }
        RPM_reset=1;
        
    }
    Timer_RPM_WriteCounter(24000000);
    Timer_RPM_ClearFIFO();
}

CY_ISR(POWERMONITOR)
{
    Volt_temp = PowerMonitor_1_GetConverterVoltage(0);
    Current_temp = PowerMonitor_1_GetConverterCurrent(0);
    
}

void S_init()
{
    RPM_isr_StartEx(RPM);
    isr_powermonitor_StartEx(POWERMONITOR);
    PowerMonitor_1_Init();
    Timer_RPM_Start();
}

const uint16 * S_RPM_ptr()
{
    return &RPM_temp;
    
}

/* [] END OF FILE */
