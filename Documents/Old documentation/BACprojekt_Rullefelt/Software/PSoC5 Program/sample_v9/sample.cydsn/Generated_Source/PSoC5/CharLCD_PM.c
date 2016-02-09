/*******************************************************************************
* File Name: CharLCD_PM.c
* Version 2.10
*
* Description:
*  This file provides the API source code for the Static Segment LCD component.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "CharLCD.h"


static CharLCD_BACKUP_STRUCT CharLCD_backup;


/*******************************************************************************
* Function Name: CharLCD_SaveConfig
********************************************************************************
*
* Summary:
*  Does nothing, provided for consistency.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void CharLCD_SaveConfig(void) 
{
}


/*******************************************************************************
* Function Name: CharLCD_RestoreConfig
********************************************************************************
*
* Summary:
*  Does nothing, provided for consistency.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void CharLCD_RestoreConfig(void) 
{
}


/*******************************************************************************
* Function Name: CharLCD_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the sleep mode.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void CharLCD_Sleep(void) 
{
    CharLCD_backup.enableState = CharLCD_enableState;
    CharLCD_SaveConfig();
    CharLCD_Stop();
}


/*******************************************************************************
* Function Name: CharLCD_Wakeup
********************************************************************************
*
* Summary:
*  Wakes the component from sleep mode. Configures DMA and enables the component
*  for normal operation.
*
* Parameters:
*  CharLCD_enableState - Global variable.
*
* Return:
*  Status one of standard status for PSoC3 Component
*       CYRET_SUCCESS - Function completed successfully.
*       CYRET_LOCKED - The object was locked, already in use. Some of TDs or
*                      a channel already in use.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void CharLCD_Wakeup(void) 
{
    CharLCD_RestoreConfig();

    if(CharLCD_backup.enableState == 1u)
    {
        CharLCD_Enable();
    }
}


/* [] END OF FILE */
