/*******************************************************************************
* File Name: Moment.c  
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
#include "Moment.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 Moment__PORT == 15 && ((Moment__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: Moment_Write
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
void Moment_Write(uint8 value) 
{
    uint8 staticBits = (Moment_DR & (uint8)(~Moment_MASK));
    Moment_DR = staticBits | ((uint8)(value << Moment_SHIFT) & Moment_MASK);
}


/*******************************************************************************
* Function Name: Moment_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  Moment_DM_STRONG     Strong Drive 
*  Moment_DM_OD_HI      Open Drain, Drives High 
*  Moment_DM_OD_LO      Open Drain, Drives Low 
*  Moment_DM_RES_UP     Resistive Pull Up 
*  Moment_DM_RES_DWN    Resistive Pull Down 
*  Moment_DM_RES_UPDWN  Resistive Pull Up/Down 
*  Moment_DM_DIG_HIZ    High Impedance Digital 
*  Moment_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void Moment_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(Moment_0, mode);
}


/*******************************************************************************
* Function Name: Moment_Read
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
*  Macro Moment_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 Moment_Read(void) 
{
    return (Moment_PS & Moment_MASK) >> Moment_SHIFT;
}


/*******************************************************************************
* Function Name: Moment_ReadDataReg
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
uint8 Moment_ReadDataReg(void) 
{
    return (Moment_DR & Moment_MASK) >> Moment_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(Moment_INTSTAT) 

    /*******************************************************************************
    * Function Name: Moment_ClearInterrupt
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
    uint8 Moment_ClearInterrupt(void) 
    {
        return (Moment_INTSTAT & Moment_MASK) >> Moment_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
