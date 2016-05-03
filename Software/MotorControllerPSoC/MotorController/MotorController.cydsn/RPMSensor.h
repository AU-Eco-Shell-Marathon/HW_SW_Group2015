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
#ifndef RPMSENSOR_H
#define RPMSENSOR_H

#include <project.h>
    
void RPMSensor_init();

uint16 RPMSensor_getValue();

uint16 RPMSensor_getSpeed();

#endif
/* [] END OF FILE */
