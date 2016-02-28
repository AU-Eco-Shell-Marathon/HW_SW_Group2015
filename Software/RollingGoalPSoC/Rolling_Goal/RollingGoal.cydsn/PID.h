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
#define Kp_def 1;
#define Ki_def 0.1;
#define Kd_def 0.001;
#define MAX_def 230;
#define MIN_def 25;
#define iMAX_def 1000;
#define iMIN_def -1000;
#define dt_def 10;

struct PIDparameter
{
    float Kp;
    float Ki;
    float Kd;
    float MAX;
    float MIN;
    float iMAX;
    float iMIN;
    char valid;
};

void PID_init();
void PID_tick(int sensor, int input);
void setPID(const struct PIDparameter * parameter);
/* [] END OF FILE */
