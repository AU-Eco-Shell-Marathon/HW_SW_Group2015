/*******************************************************************************
* File Name: RPM.c  
* Version 2.10
*
* Description:
*  This file contains API to enable firmware control of a Pins component.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "cytypes.h"
#include "RPM.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 RPM__PORT == 15 && ((RPM__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: RPM_Write
********************************************************************************
*
* Summary:
*  Assign a new value to the digital port's data output register.  
*
* Parameters:  
*  prtValue:  The value to be assigned to the Digital Port. 
*
* Return: 
*  None
*  
*******************************************************************************/
void RPM_Write(uint8 value) 
{
    uint8 staticBits = (RPM_DR & (uint8)(~RPM_MASK));
    RPM_DR = staticBits | ((uint8)(value << RPM_SHIFT) & RPM_MASK);
}


/*******************************************************************************
* Function Name: RPM_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  RPM_DM_STRONG     Strong Drive 
*  RPM_DM_OD_HI      Open Drain, Drives High 
*  RPM_DM_OD_LO      Open Drain, Drives Low 
*  RPM_DM_RES_UP     Resistive Pull Up 
*  RPM_DM_RES_DWN    Resistive Pull Down 
*  RPM_DM_RES_UPDWN  Resistive Pull Up/Down 
*  RPM_DM_DIG_HIZ    High Impedance Digital 
*  RPM_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void RPM_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(RPM_0, mode);
}


/*******************************************************************************
* Function Name: RPM_Read
********************************************************************************
*
* Summary:
*  Read the current value on the pins of the Digital Port in right justified 
*  form.
*
* Parameters:  
*  None
*
* Return: 
*  Returns the current value of the Digital Port as a right justified number
*  
* Note:
*  Macro RPM_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 RPM_Read(void) 
{
    return (RPM_PS & RPM_MASK) >> RPM_SHIFT;
}


/*******************************************************************************
* Function Name: RPM_ReadDataReg
********************************************************************************
*
* Summary:
*  Read the current value assigned to a Digital Port's data output register
*
* Parameters:  
*  None 
*
* Return: 
*  Returns the current value assigned to the Digital Port's data output register
*  
*******************************************************************************/
uint8 RPM_ReadDataReg(void) 
{
    return (RPM_DR & RPM_MASK) >> RPM_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(RPM_INTSTAT) 

    /*******************************************************************************
    * Function Name: RPM_ClearInterrupt
    ********************************************************************************
    * Summary:
    *  Clears any active interrupts attached to port and returns the value of the 
    *  interrupt status register.
    *
    * Parameters:  
    *  None 
    *
    * Return: 
    *  Returns the value of the interrupt status register
    *  
    *******************************************************************************/
    uint8 RPM_ClearInterrupt(void) 
    {
        return (RPM_INTSTAT & RPM_MASK) >> RPM_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
