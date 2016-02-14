/*******************************************************************************
* File Name: Stroem_Overvaagning.c  
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
#include "Stroem_Overvaagning.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 Stroem_Overvaagning__PORT == 15 && ((Stroem_Overvaagning__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: Stroem_Overvaagning_Write
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
void Stroem_Overvaagning_Write(uint8 value) 
{
    uint8 staticBits = (Stroem_Overvaagning_DR & (uint8)(~Stroem_Overvaagning_MASK));
    Stroem_Overvaagning_DR = staticBits | ((uint8)(value << Stroem_Overvaagning_SHIFT) & Stroem_Overvaagning_MASK);
}


/*******************************************************************************
* Function Name: Stroem_Overvaagning_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  Stroem_Overvaagning_DM_STRONG     Strong Drive 
*  Stroem_Overvaagning_DM_OD_HI      Open Drain, Drives High 
*  Stroem_Overvaagning_DM_OD_LO      Open Drain, Drives Low 
*  Stroem_Overvaagning_DM_RES_UP     Resistive Pull Up 
*  Stroem_Overvaagning_DM_RES_DWN    Resistive Pull Down 
*  Stroem_Overvaagning_DM_RES_UPDWN  Resistive Pull Up/Down 
*  Stroem_Overvaagning_DM_DIG_HIZ    High Impedance Digital 
*  Stroem_Overvaagning_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void Stroem_Overvaagning_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(Stroem_Overvaagning_0, mode);
}


/*******************************************************************************
* Function Name: Stroem_Overvaagning_Read
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
*  Macro Stroem_Overvaagning_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 Stroem_Overvaagning_Read(void) 
{
    return (Stroem_Overvaagning_PS & Stroem_Overvaagning_MASK) >> Stroem_Overvaagning_SHIFT;
}


/*******************************************************************************
* Function Name: Stroem_Overvaagning_ReadDataReg
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
uint8 Stroem_Overvaagning_ReadDataReg(void) 
{
    return (Stroem_Overvaagning_DR & Stroem_Overvaagning_MASK) >> Stroem_Overvaagning_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(Stroem_Overvaagning_INTSTAT) 

    /*******************************************************************************
    * Function Name: Stroem_Overvaagning_ClearInterrupt
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
    uint8 Stroem_Overvaagning_ClearInterrupt(void) 
    {
        return (Stroem_Overvaagning_INTSTAT & Stroem_Overvaagning_MASK) >> Stroem_Overvaagning_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
