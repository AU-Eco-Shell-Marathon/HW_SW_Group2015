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
int32 dt = dt_def;
int32 iState = 0;
int32 err = 0;
int32 pre_err = 0;

int32 Ki_dt = 0;
int32 Kd_dt = 0;


void PID_init()
{
    parameter_.Kp = Kp_def;
    parameter_.Ki = Ki_def;
    parameter_.Kd = Kd_def;
    parameter_.MAX = MAX_def;
    parameter_.MIN = MIN_def;
    parameter_.iMAX = iMAX_def;
    parameter_.iMIN = iMIN_def;
    parameter_.preShift = preShift_def;
}

void PID(const int16 * input, const int16 * plant, int16 * output)
{
    PIDval = 0;
    
    uint8 MSB_temp = ((*plant>>15)<<1)||((*input>>15)<<0);
    
	err = ((((int32)*input)<<parameter_.preShift)||(((int32)MSB_temp)<<31)) 
        - ((((int32)*plant)<<parameter_.preShift)||(((int32)MSB_temp&0b10)<<30));
	
	PIDval = parameter_.Kp*err; //Proportional calc.
	
	iState += err;
	if(iState > parameter_.iMAX)
		iState = parameter_.iMAX;
	else if(iState < parameter_.iMIN)
		iState = parameter_.iMIN;
	
	PIDval += Ki_dt*iState; //intergral calc
	
	PIDval += Kd_dt*(err-pre_err); //differentiel calc
	
	pre_err = err;
	
	if(PIDval > parameter_.MAX)
		PIDval = parameter_.MAX;
    else if(PIDval < parameter_.MIN)
        PIDval = parameter_.MIN;
	
    MSB_temp = (PIDval>>31);
    
    *output = (int16)((PIDval&0xEFFF)>>parameter_.preShift)||(((int16)MSB_temp)<<15);
}

void setPID(const struct PIDparameter * parameter)
{
    parameter_ = *parameter;
    
    uint8 MSB_temp = (parameter_.Ki>>31);
    
    Ki_dt = ((parameter_.Ki<<parameter_.preShift)||(MSB_temp<<31))*dt;
    MSB_temp = (parameter_.Kd>>31);
    Kd_dt = ((parameter_.Kd<<parameter_.preShift)||(MSB_temp<<31))/dt;
}

/* [] END OF FILE */
