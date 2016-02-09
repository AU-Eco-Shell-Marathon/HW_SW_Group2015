/*******************************************************************************
* File Name: AD_konverter_PM.c
* Version 2.0
*
* Description:
*  This file contains the setup, control and status commands to support
*  component operations in low power mode.
*
* Note:
*
********************************************************************************
* Copyright 2012-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "AD_konverter.h"
#include "AD_konverter_SAR.h"
#if(AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL)
    #include "AD_konverter_IntClock.h"
#endif   /* AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL */


/*******************************************************************************
* Function Name: AD_konverter_Sleep
********************************************************************************
*
* Summary:
*  Stops the ADC operation and saves the configuration registers and component
*  enable state. Should be called just prior to entering sleep
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Side Effects:
*  None.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void AD_konverter_Sleep(void)
{
    AD_konverter_SAR_Stop();
    AD_konverter_SAR_Sleep();
    AD_konverter_Disable();

    #if(AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL)
        AD_konverter_IntClock_Stop();
    #endif   /* AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL */
}


/*******************************************************************************
* Function Name: AD_konverter_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component enable state and configuration registers. This should
*  be called just after awaking from sleep mode
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Side Effects:
*  None.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void AD_konverter_Wakeup(void)
{
    AD_konverter_SAR_Wakeup();
    AD_konverter_SAR_Enable();

    #if(AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL)
        AD_konverter_IntClock_Start();
    #endif   /* AD_konverter_CLOCK_SOURCE == AD_konverter_CLOCK_INTERNAL */

    /* The block is ready to use 10 us after the SAR enable signal is set high. */
    CyDelayUs(10u);
    
    AD_konverter_Enable();

    #if(AD_konverter_SAMPLE_MODE == AD_konverter_SAMPLE_MODE_FREE_RUNNING)
        AD_konverter_SAR_StartConvert();
    #endif /* (AD_konverter_SAMPLE_MODE == AD_konverter_SAMPLE_MODE_FREE_RUNNING) */

    (void) CY_GET_REG8(AD_konverter_STATUS_PTR);
}


/*******************************************************************************
* Function Name: AD_konverter_SaveConfig
********************************************************************************
*
* Summary:
*  Save the current configuration of ADC non-retention registers
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Side Effects:
*  None.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void AD_konverter_SaveConfig(void)
{

}


/*******************************************************************************
* Function Name: AD_konverter_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the configuration of ADC non-retention registers
*
* Parameters:
*  None.
*
* Return:
*  None.
*
* Side Effects:
*  None.
*
* Reentrant:
*  No.
*
*******************************************************************************/
void AD_konverter_RestoreConfig(void)
{

}


/* [] END OF FILE */
