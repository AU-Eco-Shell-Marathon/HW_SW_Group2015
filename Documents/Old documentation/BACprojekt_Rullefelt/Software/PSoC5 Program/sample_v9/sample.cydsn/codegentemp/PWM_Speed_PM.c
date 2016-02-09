/*******************************************************************************
* File Name: PWM_Speed_PM.c
* Version 3.30
*
* Description:
*  This file provides the power management source code to API for the
*  PWM.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "PWM_Speed.h"

static PWM_Speed_backupStruct PWM_Speed_backup;


/*******************************************************************************
* Function Name: PWM_Speed_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_Speed_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_Speed_SaveConfig(void) 
{

    #if(!PWM_Speed_UsingFixedFunction)
        #if(!PWM_Speed_PWMModeIsCenterAligned)
            PWM_Speed_backup.PWMPeriod = PWM_Speed_ReadPeriod();
        #endif /* (!PWM_Speed_PWMModeIsCenterAligned) */
        PWM_Speed_backup.PWMUdb = PWM_Speed_ReadCounter();
        #if (PWM_Speed_UseStatus)
            PWM_Speed_backup.InterruptMaskValue = PWM_Speed_STATUS_MASK;
        #endif /* (PWM_Speed_UseStatus) */

        #if(PWM_Speed_DeadBandMode == PWM_Speed__B_PWM__DBM_256_CLOCKS || \
            PWM_Speed_DeadBandMode == PWM_Speed__B_PWM__DBM_2_4_CLOCKS)
            PWM_Speed_backup.PWMdeadBandValue = PWM_Speed_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_Speed_KillModeMinTime)
             PWM_Speed_backup.PWMKillCounterPeriod = PWM_Speed_ReadKillTime();
        #endif /* (PWM_Speed_KillModeMinTime) */

        #if(PWM_Speed_UseControl)
            PWM_Speed_backup.PWMControlRegister = PWM_Speed_ReadControlRegister();
        #endif /* (PWM_Speed_UseControl) */
    #endif  /* (!PWM_Speed_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_Speed_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration of the component.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_Speed_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Speed_RestoreConfig(void) 
{
        #if(!PWM_Speed_UsingFixedFunction)
            #if(!PWM_Speed_PWMModeIsCenterAligned)
                PWM_Speed_WritePeriod(PWM_Speed_backup.PWMPeriod);
            #endif /* (!PWM_Speed_PWMModeIsCenterAligned) */

            PWM_Speed_WriteCounter(PWM_Speed_backup.PWMUdb);

            #if (PWM_Speed_UseStatus)
                PWM_Speed_STATUS_MASK = PWM_Speed_backup.InterruptMaskValue;
            #endif /* (PWM_Speed_UseStatus) */

            #if(PWM_Speed_DeadBandMode == PWM_Speed__B_PWM__DBM_256_CLOCKS || \
                PWM_Speed_DeadBandMode == PWM_Speed__B_PWM__DBM_2_4_CLOCKS)
                PWM_Speed_WriteDeadTime(PWM_Speed_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_Speed_KillModeMinTime)
                PWM_Speed_WriteKillTime(PWM_Speed_backup.PWMKillCounterPeriod);
            #endif /* (PWM_Speed_KillModeMinTime) */

            #if(PWM_Speed_UseControl)
                PWM_Speed_WriteControlRegister(PWM_Speed_backup.PWMControlRegister);
            #endif /* (PWM_Speed_UseControl) */
        #endif  /* (!PWM_Speed_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_Speed_Sleep
********************************************************************************
*
* Summary:
*  Disables block's operation and saves the user configuration. Should be called
*  just prior to entering sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_Speed_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_Speed_Sleep(void) 
{
    #if(PWM_Speed_UseControl)
        if(PWM_Speed_CTRL_ENABLE == (PWM_Speed_CONTROL & PWM_Speed_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_Speed_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_Speed_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_Speed_UseControl) */

    /* Stop component */
    PWM_Speed_Stop();

    /* Save registers configuration */
    PWM_Speed_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_Speed_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration. Should be called just after
*  awaking from sleep.
*
* Parameters:
*  None
*
* Return:
*  None
*
* Global variables:
*  PWM_Speed_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Speed_Wakeup(void) 
{
     /* Restore registers values */
    PWM_Speed_RestoreConfig();

    if(PWM_Speed_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_Speed_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
