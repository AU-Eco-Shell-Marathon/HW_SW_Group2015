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
#include <project.h>
#include <stdio.h>

#define START_EEPROM_SECTOR  (1u)
#define PID_BYTES         ((START_EEPROM_SECTOR * EEPROM_SIZEOF_SECTOR) + 0x00)


float set_moment=0;

char save(const struct PIDparameter * PID,const float * moment);
char load(struct PIDparameter * PID, float * moment);

//struct sekvens * seq = NULL;


CY_ISR_PROTO(PID_isr);

CY_ISR(PID_isr)
{  
    PID_tick(getMoment(), set_moment);
}

CY_ISR(SendData_ISR)
{
    struct data Data;
    if(getData(&Data))
        SendData(&Data);
}

/* 
struct sample
{
    int32 avg;
    float rms;
    int32 min;
    int32 max;
};

struct data
{
    struct sample V_motor;
    struct sample A_motor;
    struct sample P_motor;
    struct sample RPM;
    struct sample Moment;
    struct sample P_mekanisk;
    uint32 distance;
    uint32 time_ms;
    char stop;
};
*/

void run()
{
    


    ReceiveUARTData(); 

        //TX_AND_POWER_Write(1);
        
        //TX_AND_POWER_Write(0);    
}

void stop()
{
    
    
}


void update(const struct PIDparameter * parameter, const float * Moment, char restart)
{
    if(parameter != NULL)
    {    
        setPID(parameter);
    }
    
    if(Moment != NULL)
    {
        set_moment=*Moment;
    }
    
    
    if(restart)
    {
        Control_Reg_1_Write(0b1);
        getDistance(0b1);
    }

    save(parameter, Moment);

    
}

void init()
{
    

    EEPROM_1_Start();
    sensor_init();
    
    PID_init();
    if(load(getPID_ptr(), &set_moment) == 0)
    {
        save(getPID_ptr(), &set_moment);
    }
    isr_4_StartEx(PID_isr);
    Clock_4_Start();
    InitUart();
    Clock_5_Start();
    isr_5_StartEx(SendData_ISR);
    
//    uint8 test = EEPROM_1_ReadByte(PID_BYTES);
//    if(test == 1u)
//    {
//        EEPROM_1_WriteByte(0u, PID_BYTES); 
//        TX_AND_POWER_Write(1);
//    }
//    else
//    {
//        EEPROM_1_WriteByte(1u, PID_BYTES); 
//        TX_AND_POWER_Write(0);
//    }
    
    

}

char save(const struct PIDparameter * PID, const float * moment)
{
    EEPROM_1_WriteByte(0x00, PID_BYTES);
    uint16 i;
    uint8 size_PID = sizeof(struct PIDparameter);
    uint8 size_MOMENT = sizeof(float);
    uint size = size_PID + size_MOMENT + 1;
    
    if(size > EEPROM_SIZEOF_SECTOR)
    {
        return -2; //fylder for meget.
    }
    
    uint8 *data = (uint8*)PID;
    if(PID != NULL)
    {
        for(i = 1; i < size_PID + 1; i++)
        {
            if(EEPROM_1_WriteByte(data[i], PID_BYTES + i) != CYRET_SUCCESS)
            {
                return -1; //fejl i tilskrivning
            }
        }
    }
    
    data = (uint8*)moment;
    
    if(moment != NULL)
    {
        for(i = size_PID + 1; i < size; i++)
        {
            if(EEPROM_1_WriteByte(data[i], PID_BYTES + i) != CYRET_SUCCESS)
            {
                return -1; //fejl i tilskrivning
            }
        }
    }
    
    EEPROM_1_WriteByte(0x33, PID_BYTES);
    return 1;
}

char load(struct PIDparameter * PID, float * moment)
{
    uint16 i;
    uint8 size_PID = sizeof(struct PIDparameter);
    uint8 size_MOMENT = sizeof(float);
    uint size = size_PID + size_MOMENT + 1;
    
    if(size > EEPROM_SIZEOF_SECTOR)
    {
        return -2; //fylder for meget.
    }
    
    if(EEPROM_1_ReadByte(PID_BYTES) != 0x33)
    {
        return 0; // ikke noget gemt data
    }
    uint8 * data = (uint8*)PID;
    for(i = 1; i < size_PID + 1; i++)
    {
        data[i] = EEPROM_1_ReadByte(PID_BYTES + i);
    }
    data = (uint8*)moment;
    for(i = size_PID + 1; i < size; i++)
    {
        data[i] = EEPROM_1_ReadByte(PID_BYTES + i);
    }
    
    return 1;
}

/* [] END OF FILE */
