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

struct PIDval;

void MC_stop();
void MC_start();
void MC_init(const uint8 * speed, const uint32 * rpm);
void MC_ChangePID(const struct PIDval * pidval);

/* [] END OF FILE */
