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
#include "MotorController.h"
#include "Pedal.h"
#include "Logger.h"
#include "EEPROM.h"
#include "CAN.h"

enum dataType{BMS, ADC};

void init();
void run();
void logData(uint8* data, enum dataType Type);


/* [] END OF FILE */
