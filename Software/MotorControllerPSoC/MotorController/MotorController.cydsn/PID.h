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

#define Kp_def 1000;
#define Ki_def 10;
#define Kd_def 1;
#define MAX_def 230;
#define MIN_def 25;
#define iMAX_def 1000;
#define iMIN_def -1000;
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
    int32 iMAX;
    int32 iMIN;
    int32 preShift;
    char valid;
};

void PID_init();
void PID(const uint16 * input, const uint16 * plant, uint16 * output);
void setPID(const struct PIDparameter * parameter);
/* [] END OF FILE */
