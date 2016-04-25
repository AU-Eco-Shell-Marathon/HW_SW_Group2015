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
#include "MotorController.h"


const uint8 * speed_ = NULL;
const uint16 * rpm_ = NULL;
const uint16 * volt_ = NULL;
const uint16 * current_ = NULL;

uint16 Threshold_ = 57713; // i mRPM
enum STATES {TEST, ACC, CAB, STOP}; //CAB = cost and burn

enum STATES state = STOP;

CY_ISR_PROTO(MOTOR_tick);
CY_ISR_PROTO(OVERCURRENT);

CY_ISR(MOTOR_tick)
{
    if(speed_ != NULL && rpm_ != NULL && volt_ != NULL && current_ != NULL)
    {
        uint16 output;
        uint16 power;
        
        switch(state){
        case TEST:
            //til test og andet.
            break;
        case ACC:
            power = (((uint16)ADC_V_CountsTo_mVolts(*volt_))>>8)*((uint16)ADC_A_CountsTo_mVolts(*current_)>>8)*15.625;
            PID(LUT_speed(speed_, rpm_, &power), rpm_, &output);
            PWM_motor_WriteCompare((uint8)output);
            if(*rpm_ >= ((uint16)*speed_)<<8) state = CAB;
            break;
        case CAB:
            PWM_motor_WriteCompare(0x00);
            if(*rpm_ <= (((uint16)*speed_)<<8) - Threshold_) state = ACC;
            break;
        case STOP:
            PWM_motor_WriteCompare(0x00);
            break;
        default:
            PWM_motor_WriteCompare(0x00);
            break;
        }
    }
    else
    {
        PWM_motor_WriteCompare(0x00);
    }
}


CY_ISR(OVERCURRENT)
{
    MC_stop();
}

void MC_start()
{
    state = ACC;
}

void MC_stop()
{
    state = STOP;
}

void MC_init(const uint8 * speed, const uint16 * rpm, const uint16 * current,const uint16 * volt, const struct PIDparameter * pidval)
{
    PID_init();
    setPID(pidval);
    VDAC8_1_Start();
    Comp_1_Start();
    isr_overCurrent_StartEx(OVERCURRENT);
    speed_ = speed;
    rpm_ = rpm;
    current_ = current;
    volt_ = volt;
    isr_motor_StartEx(MOTOR_tick);
    Clock_motor_Start();
    PWM_motor_Start();
    MC_start();
}

void MC_ChangePID(const struct PIDparameter * pidval)
{
    setPID(pidval);
}

void MC_setThreshold(uint16 Threshold)
{
       Threshold_ = Threshold;
}




/* [] END OF FILE */
