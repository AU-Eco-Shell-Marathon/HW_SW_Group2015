/*******************************************************************************
* File Name: Counter_Speed_PM.c  
* Version 3.0
*
*  Description:
*    This file provides the power management source code to API for the
*    Counter.  
*
*   Note:
*     None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "Counter_Speed.h"

static Counter_Speed_backupStruct Counter_Speed_backup;


/*******************************************************************************
* Function Name: Counter_Speed_SaveConfig
********************************************************************************
* Summary:
*     Save the current user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Counter_Speed_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Counter_Speed_SaveConfig(void) 
{
    #if (!Counter_Speed_UsingFixedFunction)

        Counter_Speed_backup.CounterUdb = Counter_Speed_ReadCounter();

        #if(!Counter_Speed_ControlRegRemoved)
            Counter_Speed_backup.CounterControlRegister = Counter_Speed_ReadControlRegister();
        #endif /* (!Counter_Speed_ControlRegRemoved) */

    #endif /* (!Counter_Speed_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Counter_Speed_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Counter_Speed_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Counter_Speed_RestoreConfig(void) 
{      
    #if (!Counter_Speed_UsingFixedFunction)

       Counter_Speed_WriteCounter(Counter_Speed_backup.CounterUdb);

        #if(!Counter_Speed_ControlRegRemoved)
            Counter_Speed_WriteControlRegister(Counter_Speed_backup.CounterControlRegister);
        #endif /* (!Counter_Speed_ControlRegRemoved) */

    #endif /* (!Counter_Speed_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Counter_Speed_Sleep
********************************************************************************
* Summary:
*     Stop and Save the user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Counter_Speed_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Counter_Speed_Sleep(void) 
{
    #if(!Counter_Speed_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Counter_Speed_CTRL_ENABLE == (Counter_Speed_CONTROL & Counter_Speed_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Counter_Speed_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Counter_Speed_backup.CounterEnableState = 0u;
        }
    #else
        Counter_Speed_backup.CounterEnableState = 1u;
        if(Counter_Speed_backup.CounterEnableState != 0u)
        {
            Counter_Speed_backup.CounterEnableState = 0u;
        }
    #endif /* (!Counter_Speed_ControlRegRemoved) */
    
    Counter_Speed_Stop();
    Counter_Speed_SaveConfig();
}


/*******************************************************************************
* Function Name: Counter_Speed_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*  
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Counter_Speed_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Counter_Speed_Wakeup(void) 
{
    Counter_Speed_RestoreConfig();
    #if(!Counter_Speed_ControlRegRemoved)
        if(Counter_Speed_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Counter_Speed_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Counter_Speed_ControlRegRemoved) */
    
}


/* [] END OF FILE */
