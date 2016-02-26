/*******************************************************************************
* File Name: A_generator.c  
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
#include "A_generator.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 A_generator__PORT == 15 && ((A_generator__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: A_generator_Write
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
void A_generator_Write(uint8 value) 
{
    uint8 staticBits = (A_generator_DR & (uint8)(~A_generator_MASK));
    A_generator_DR = staticBits | ((uint8)(value << A_generator_SHIFT) & A_generator_MASK);
}


/*******************************************************************************
* Function Name: A_generator_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  A_generator_DM_STRONG     Strong Drive 
*  A_generator_DM_OD_HI      Open Drain, Drives High 
*  A_generator_DM_OD_LO      Open Drain, Drives Low 
*  A_generator_DM_RES_UP     Resistive Pull Up 
*  A_generator_DM_RES_DWN    Resistive Pull Down 
*  A_generator_DM_RES_UPDWN  Resistive Pull Up/Down 
*  A_generator_DM_DIG_HIZ    High Impedance Digital 
*  A_generator_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void A_generator_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(A_generator_0, mode);
}


/*******************************************************************************
* Function Name: A_generator_Read
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
*  Macro A_generator_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 A_generator_Read(void) 
{
    return (A_generator_PS & A_generator_MASK) >> A_generator_SHIFT;
}


/*******************************************************************************
* Function Name: A_generator_ReadDataReg
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
uint8 A_generator_ReadDataReg(void) 
{
    return (A_generator_DR & A_generator_MASK) >> A_generator_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(A_generator_INTSTAT) 

    /*******************************************************************************
    * Function Name: A_generator_ClearInterrupt
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
    uint8 A_generator_ClearInterrupt(void) 
    {
        return (A_generator_INTSTAT & A_generator_MASK) >> A_generator_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
