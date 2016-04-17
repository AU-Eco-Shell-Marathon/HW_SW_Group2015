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
#include <project.h>
#include "PID.h"
#include "Sensor.h"
#include "Motor_lookupTable.h"


void MC_stop();
void MC_start();
void MC_init(const uint8 * speed, const uint16 * rpm, const uint16 * current,const uint16 * volt, const struct PIDparameter * pidval);
void MC_ChangePID(const struct PIDparameter * pidval);

/* [] END OF FILE */
