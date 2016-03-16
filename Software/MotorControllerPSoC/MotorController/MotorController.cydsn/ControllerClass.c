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
    volatile struct PIDparameter PID;
    size_t sizes[] = {sizeof(struct PIDparameter)};
    
    //size_t test = sizeof(struct PIDparameter);
    
    EEPROM_init(sizes, 1);
    
    if(EEPROM_read(0, (uint8 *)&PID) == 0)
    {
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
        EEPROM_write(0, (const uint8 *)&PID);
    }
    
    S_init();
    MC_init(Pedal_init(), S_RPM_ptr(), (struct PIDparameter *)&PID);

}

void run()
{
    Pedal_update();
}

/* [] END OF FILE */
