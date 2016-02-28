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
#define N 128

// Alt data kommer i micro prefix, undtagen RPM og distance.

struct sample
{
    float avg;
    float rms;
    float min;
    float max;
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


char getData(struct data *);
int32 getMoment();
int32 getDistance(char reset);
void sensor_init();

/* [] END OF FILE */
