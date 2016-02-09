/*******************************************************************************
* File Name: AD_konverter_SAR_PM.c
* Version 3.0
*
* Description:
*  This file provides Sleep/WakeUp APIs functionality.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "AD_konverter_SAR.h"


/***************************************
* Local data allocation
***************************************/

static AD_konverter_SAR_BACKUP_STRUCT  AD_konverter_SAR_backup =
{
    AD_konverter_SAR_DISABLED
};


/*******************************************************************************
* Function Name: AD_konverter_SAR_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the current user configuration.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void AD_konverter_SAR_SaveConfig(void)
{
    /* All configuration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: AD_konverter_SAR_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void AD_konverter_SAR_RestoreConfig(void)
{
    /* All congiguration registers are marked as [reset_all_retention] */
}


/*******************************************************************************
* Function Name: AD_konverter_SAR_Sleep
********************************************************************************
*
* Summary:
*  This is the preferred routine to prepare the component for sleep.
*  The AD_konverter_SAR_Sleep() routine saves the current component state,
*  then it calls the ADC_Stop() function.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  AD_konverter_SAR_backup - The structure field 'enableState' is modified
*  depending on the enable state of the block before entering to sleep mode.
*
*******************************************************************************/
void AD_konverter_SAR_Sleep(void)
{
    if((AD_konverter_SAR_PWRMGR_SAR_REG  & AD_konverter_SAR_ACT_PWR_SAR_EN) != 0u)
    {
        if((AD_konverter_SAR_SAR_CSR0_REG & AD_konverter_SAR_SAR_SOF_START_CONV) != 0u)
        {
            AD_konverter_SAR_backup.enableState = AD_konverter_SAR_ENABLED | AD_konverter_SAR_STARTED;
        }
        else
        {
            AD_konverter_SAR_backup.enableState = AD_konverter_SAR_ENABLED;
        }
        AD_konverter_SAR_Stop();
    }
    else
    {
        AD_konverter_SAR_backup.enableState = AD_konverter_SAR_DISABLED;
    }
}


/*******************************************************************************
* Function Name: AD_konverter_SAR_Wakeup
********************************************************************************
*
* Summary:
*  This is the preferred routine to restore the component to the state when
*  AD_konverter_SAR_Sleep() was called. If the component was enabled before the
*  AD_konverter_SAR_Sleep() function was called, the
*  AD_konverter_SAR_Wakeup() function also re-enables the component.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Global Variables:
*  AD_konverter_SAR_backup - The structure field 'enableState' is used to
*  restore the enable state of block after wakeup from sleep mode.
*
*******************************************************************************/
void AD_konverter_SAR_Wakeup(void)
{
    if(AD_konverter_SAR_backup.enableState != AD_konverter_SAR_DISABLED)
    {
        AD_konverter_SAR_Enable();
        #if(AD_konverter_SAR_DEFAULT_CONV_MODE != AD_konverter_SAR__HARDWARE_TRIGGER)
            if((AD_konverter_SAR_backup.enableState & AD_konverter_SAR_STARTED) != 0u)
            {
                AD_konverter_SAR_StartConvert();
            }
        #endif /* End AD_konverter_SAR_DEFAULT_CONV_MODE != AD_konverter_SAR__HARDWARE_TRIGGER */
    }
}


/* [] END OF FILE */
