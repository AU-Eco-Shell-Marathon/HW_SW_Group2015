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

// The following constant is the distance between 
// the spokes of the wheel (measured in mm)
#define DISTANCE 1000

// A 32-bit measures the amount of ticks since the
// last rising-edge from the sensor (1 tick = 1 ms)

#include "Speed_O_meter.h"

void Speed_O_meter_init()
{
    Timer_Speedometer_Start();
    Speedometer_isr_Enable();
}

CY_ISR(RPM_isr)
{
    uint16 time;
    float speed;
    
    time = Timer_Speedometer_ReadCapture();
    speed = DISTANCE/time;
    
    Timer_Speedometer_WriteCounter(0);
    Timer_Speedometer_ClearFIFO();
}

/* [] END OF FILE */
