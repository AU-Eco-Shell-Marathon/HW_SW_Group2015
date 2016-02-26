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
#include "PID.h"
#include "sensor.h"

//struct sekvens{
//    int * seq_moment;
//    uint32 * seq_distance;
//    uint16 size;
//};

void run();
void stop();
void update(const struct PIDparameter *, const double * Moment, char restart);
void init();


/* [] END OF FILE */
