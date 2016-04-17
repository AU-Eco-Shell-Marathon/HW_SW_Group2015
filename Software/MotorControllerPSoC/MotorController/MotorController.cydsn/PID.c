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
#include <project.h>

struct PIDparameter parameter_;

int32 PIDval = 0;
int32 anti_windup_back_calc = 0;
int32 dt = dt_def;
int32 iState = 0;
int32 err = 0;
int32 pre_err = 0;

int32 Ki_dt = 0;
int32 Kd_dt = 0;
int32 Kp = 0;

void PID_init()
{
    parameter_.Kp = Kp_def;
    parameter_.Ki = Ki_def;
    parameter_.Kd = Kd_def;
    parameter_.MAX = MAX_def;
    parameter_.MIN = MIN_def;
    parameter_.preShift = preShift_def;
}



void PID(const uint8 * input, const uint16 * plant, uint16 * output)
{
    PIDval = 0;

    err = (((int32)(((uint16)*input)<<8))<<parameter_.preShift) - (((int32)*plant)<<parameter_.preShift);
    
    
	PIDval = Kp*err; //Proportional calc.
	
	iState += Ki_dt*err + anti_windup_back_calc; //intergral calc and anti windup

	PIDval += iState; //intergral calc
	
	PIDval += Kd_dt*(err-pre_err); //differentiel calc
	
	pre_err = err;
	
    anti_windup_back_calc = PIDval;
    
	if(PIDval > parameter_.MAX)
		PIDval = parameter_.MAX;
    else if(PIDval < parameter_.MIN)
        PIDval = parameter_.MIN;
	
    anti_windup_back_calc = PIDval - anti_windup_back_calc;
    
    *output = ((uint16)(PIDval>>parameter_.preShift));
}

void setPID(const struct PIDparameter * parameter)
{
    parameter_ = *parameter;
    
    uint32 MSB_temp = (parameter_.Ki>>31);
    
    Ki_dt = ((parameter_.Ki<<(parameter_.preShift-parameter_.KShift))||(MSB_temp<<31))*dt;
    MSB_temp = (parameter_.Kd>>31);
    Kd_dt = ((parameter_.Kd<<(parameter_.preShift-parameter_.KShift))||(MSB_temp<<31))/dt;
    MSB_temp = (parameter_.Kp>>31);
    Kp = (parameter_.Kp<<(parameter_.preShift-parameter_.KShift))||(MSB_temp<<31);
}

/* [] END OF FILE */
