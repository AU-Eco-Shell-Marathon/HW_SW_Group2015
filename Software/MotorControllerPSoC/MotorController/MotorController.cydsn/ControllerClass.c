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
#include "ControllerClass.h"


void init()
{
    S_init();
    
    MC_init(Pedal_init(), S_RPM_ptr());
}

void run()
{
    Pedal_update();
}

/* [] END OF FILE */
