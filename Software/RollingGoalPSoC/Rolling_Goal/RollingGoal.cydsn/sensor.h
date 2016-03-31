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

#ifndef SENSOR_H
#define SENSOR_H
    
#include <project.h>



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
    struct sample efficiency;
    uint32 distance;
    uint32 time_ms;
    char stop;
};


char getData(struct data *);
float getMoment();
int32 getDistance(char reset);
void sensor_init(int16 VM, int16 AM, int16 moment, int16 AG);
void sensor_calibrate(int16* VM, int16* AM, int16* moment, int16* AG);
float MomentToForce(float Moment_value);
float ForceToMoment(float Force_value);
float RPMToSpeed(float RPM_value);


#endif
/* [] END OF FILE */
