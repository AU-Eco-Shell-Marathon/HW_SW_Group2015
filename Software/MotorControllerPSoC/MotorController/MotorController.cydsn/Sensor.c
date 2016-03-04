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
int16 RPM_temp = 0;


CY_ISR_PROTO(RPM);
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
            RPM_temp = ((int16)(24000000/(temp - temp2)))&0xEFFF;
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

void S_init()
{
    RPM_isr_StartEx(RPM);
    Timer_RPM_Start();
}

const int16 * S_RPM_ptr()
{
    return &RPM_temp;
    
}

/* [] END OF FILE */
