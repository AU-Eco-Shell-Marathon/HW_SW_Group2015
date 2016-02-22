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
#define Kp_def 10;
#define Ki_def 1;
#define Kd_def 0;
#define MAX_def 255;
#define MIN_def 0;
#define iMAX_def 10;
#define iMIN_def -10;
#define dt_def 10;

struct PIDparameter
{
    int Kp;
    int Ki;
    int Kd;
    int MAX;
    int MIN;
    int iMAX;
    int iMIN;
};

void PID_init();
void PID_tick(int sensor, int input);
void setPID(const struct PIDparameter * parameter);
/* [] END OF FILE */
