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

struct BMSData * BMSdata; //Ik' tænk over hvordan det virker, det gøre det bare ;)

uint32 * speed;
uint32 * power;

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
        PID.preShift = 8;
        PID.valid = 1;
        EEPROM_write(0, (const uint8 *)&PID);
    }
    
    S_init();
    MC_init(Pedal_init(), S_RPM_ptr(), S_Current_ptr(), S_Volt_ptr(), (struct PIDparameter *)&PID);
    Logger_Init();
    BMSdata = CAN_init();
}


struct dataSample
{
    int16 MC_volt;
    int16 MC_current;
};

void run()
{
    Pedal_update();
    if(BMSdata->NewData == 0b00011111)
    {
        Logger_LogData(1,
            BMSdata->battery_V,
            BMSdata->battery_cell_no_max,
            BMSdata->battery_cell_V_max,
            BMSdata->battery_cell_no_min,
            BMSdata->battery_cell_V_min,
            BMSdata->battery_A,
            BMSdata->IR_no_max,
            BMSdata->IR_max,
            BMSdata->IR_no_min,
            BMSdata->IR_min,
            BMSdata->Tbatt,
            BMSdata->state,
            BMSdata->RunTime,
            *speed,
            *power
        );
        
        BMSdata->NewData = 0x00;
    }
}

/* [] END OF FILE */
