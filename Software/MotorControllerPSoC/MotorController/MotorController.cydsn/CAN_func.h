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
#ifndef CAN_FUNC_H
#define CAN_FUNC_H
enum CAN_flag {CAN_STATUS, BATTERY_V, BATTERY_A, DOD, T_BATTERY, IR};
extern void CAN_func(uint8 mailbox,enum CAN_flag);
#endif
/* [] END OF FILE */
