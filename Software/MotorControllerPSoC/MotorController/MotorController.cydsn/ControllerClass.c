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
    struct PIDparameter PID;
    PID.Kp = 1000;
    PID.Ki = 100;
    PID.Kd = 1;
    PID.KShift = 3;
    PID.MAX = 100;
    PID.MIN = 0;
    PID.iMAX = 10;
    PID.iMIN = -10;
    PID.preShift = 8;
    PID.valid = 1;
    
    
    S_init();
    MC_init(Pedal_init(), S_RPM_ptr(), &PID);

}

void run()
{
    Pedal_update();
}

/* [] END OF FILE */
