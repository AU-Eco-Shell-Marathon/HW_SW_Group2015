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
#include "EEPROM.h"
#define START_EEPROM_SECTOR  (1u)
#define START_BYTE         ((START_EEPROM_SECTOR * EEPROM_SIZEOF_SECTOR) + 0x00)


size_t dataSize[255] = {0};


char EEPROM_read(uint8 id, void * data);


char EEPROM_write(uint8 id, void * data)
{
    uint8 i;
    uint32 pos = 0;
    for(i = 0; i < id; i++)
    {
        
    }
}

char EEPROM_init(size_t * types, uint8 count)
{
    uint8 i;
    
    for(i = 0; i < count; i++)
    {
        dataSize[i] = types[i];   
    }
    
    return 1;
}

/*

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

*/

/* [] END OF FILE */
