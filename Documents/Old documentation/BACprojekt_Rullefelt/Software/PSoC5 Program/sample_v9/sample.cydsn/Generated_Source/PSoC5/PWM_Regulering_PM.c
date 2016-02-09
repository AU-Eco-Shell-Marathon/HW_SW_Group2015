/*******************************************************************************
* File Name: PWM_Regulering_PM.c
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

#include "PWM_Regulering.h"

static PWM_Regulering_backupStruct PWM_Regulering_backup;


/*******************************************************************************
* Function Name: PWM_Regulering_SaveConfig
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
*  PWM_Regulering_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void PWM_Regulering_SaveConfig(void) 
{

    #if(!PWM_Regulering_UsingFixedFunction)
        #if(!PWM_Regulering_PWMModeIsCenterAligned)
            PWM_Regulering_backup.PWMPeriod = PWM_Regulering_ReadPeriod();
        #endif /* (!PWM_Regulering_PWMModeIsCenterAligned) */
        PWM_Regulering_backup.PWMUdb = PWM_Regulering_ReadCounter();
        #if (PWM_Regulering_UseStatus)
            PWM_Regulering_backup.InterruptMaskValue = PWM_Regulering_STATUS_MASK;
        #endif /* (PWM_Regulering_UseStatus) */

        #if(PWM_Regulering_DeadBandMode == PWM_Regulering__B_PWM__DBM_256_CLOCKS || \
            PWM_Regulering_DeadBandMode == PWM_Regulering__B_PWM__DBM_2_4_CLOCKS)
            PWM_Regulering_backup.PWMdeadBandValue = PWM_Regulering_ReadDeadTime();
        #endif /*  deadband count is either 2-4 clocks or 256 clocks */

        #if(PWM_Regulering_KillModeMinTime)
             PWM_Regulering_backup.PWMKillCounterPeriod = PWM_Regulering_ReadKillTime();
        #endif /* (PWM_Regulering_KillModeMinTime) */

        #if(PWM_Regulering_UseControl)
            PWM_Regulering_backup.PWMControlRegister = PWM_Regulering_ReadControlRegister();
        #endif /* (PWM_Regulering_UseControl) */
    #endif  /* (!PWM_Regulering_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: PWM_Regulering_RestoreConfig
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
*  PWM_Regulering_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Regulering_RestoreConfig(void) 
{
        #if(!PWM_Regulering_UsingFixedFunction)
            #if(!PWM_Regulering_PWMModeIsCenterAligned)
                PWM_Regulering_WritePeriod(PWM_Regulering_backup.PWMPeriod);
            #endif /* (!PWM_Regulering_PWMModeIsCenterAligned) */

            PWM_Regulering_WriteCounter(PWM_Regulering_backup.PWMUdb);

            #if (PWM_Regulering_UseStatus)
                PWM_Regulering_STATUS_MASK = PWM_Regulering_backup.InterruptMaskValue;
            #endif /* (PWM_Regulering_UseStatus) */

            #if(PWM_Regulering_DeadBandMode == PWM_Regulering__B_PWM__DBM_256_CLOCKS || \
                PWM_Regulering_DeadBandMode == PWM_Regulering__B_PWM__DBM_2_4_CLOCKS)
                PWM_Regulering_WriteDeadTime(PWM_Regulering_backup.PWMdeadBandValue);
            #endif /* deadband count is either 2-4 clocks or 256 clocks */

            #if(PWM_Regulering_KillModeMinTime)
                PWM_Regulering_WriteKillTime(PWM_Regulering_backup.PWMKillCounterPeriod);
            #endif /* (PWM_Regulering_KillModeMinTime) */

            #if(PWM_Regulering_UseControl)
                PWM_Regulering_WriteControlRegister(PWM_Regulering_backup.PWMControlRegister);
            #endif /* (PWM_Regulering_UseControl) */
        #endif  /* (!PWM_Regulering_UsingFixedFunction) */
    }


/*******************************************************************************
* Function Name: PWM_Regulering_Sleep
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
*  PWM_Regulering_backup.PWMEnableState:  Is modified depending on the enable
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void PWM_Regulering_Sleep(void) 
{
    #if(PWM_Regulering_UseControl)
        if(PWM_Regulering_CTRL_ENABLE == (PWM_Regulering_CONTROL & PWM_Regulering_CTRL_ENABLE))
        {
            /*Component is enabled */
            PWM_Regulering_backup.PWMEnableState = 1u;
        }
        else
        {
            /* Component is disabled */
            PWM_Regulering_backup.PWMEnableState = 0u;
        }
    #endif /* (PWM_Regulering_UseControl) */

    /* Stop component */
    PWM_Regulering_Stop();

    /* Save registers configuration */
    PWM_Regulering_SaveConfig();
}


/*******************************************************************************
* Function Name: PWM_Regulering_Wakeup
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
*  PWM_Regulering_backup.pwmEnable:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void PWM_Regulering_Wakeup(void) 
{
     /* Restore registers values */
    PWM_Regulering_RestoreConfig();

    if(PWM_Regulering_backup.PWMEnableState != 0u)
    {
        /* Enable component's operation */
        PWM_Regulering_Enable();
    } /* Do nothing if component's block was disabled before */

}


/* [] END OF FILE */
