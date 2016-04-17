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
#include "Motor_LookupTable.h"
#include "LUT_data.h"

const uint8 * LUT_speed(const uint8 * wanted_speed,const uint16 * speed,const uint16 * power)
{
    if(*wanted_speed > (*speed)>>8)
    {
        return &RAMP_LUT[(*power>>LUT_SHIFT >= LUT_SIZE ? LUT_SIZE : *power>>LUT_SHIFT)];
    }
    else
    {
        return &CONST_LUT[(*power>>LUT_SHIFT >= LUT_SIZE ? LUT_SIZE : *power>>LUT_SHIFT)];
    }
}

/* [] END OF FILE */
