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
    
};


char getData(struct data *);
int32 getMoment();
void sensor_init();

/* [] END OF FILE */
