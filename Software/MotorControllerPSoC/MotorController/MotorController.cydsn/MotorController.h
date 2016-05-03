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
#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H
#include <project.h>
#include "PID.h"
#include "effectSensor.h"
#include "RPMSensor.h"
#include "Motor_lookupTable.h"
#include "Pedal.h"


void MC_stop();
void MC_start();
void MC_init(const struct PIDparameter * pidval);
void MC_ChangePID(const struct PIDparameter * pidval);

#endif
/* [] END OF FILE */
