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
#ifndef PID_H
#define PID_H
#include <project.h>

#define Kp_def 1000;
#define Ki_def 10;
#define Kd_def 0;
#define MAX_def 255;
#define MIN_def 0;
#define preShift_def 3;
#define dt_def 10;

struct PIDparameter
{
    int32 Kp;
    int32 Ki;
    int32 Kd;
    int32 KShift;
    int32 MAX;
    int32 MIN;
    int32 preShift;
    char valid;
};

void PID_init();
void PID(const uint16 * input, const uint16 * plant, uint16 * output);
void setPID(const struct PIDparameter * parameter);
#endif
/* [] END OF FILE */
