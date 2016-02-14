/*******************************************************************************
* File Name: V_motor.c  
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
#include "V_motor.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 V_motor__PORT == 15 && ((V_motor__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: V_motor_Write
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
void V_motor_Write(uint8 value) 
{
    uint8 staticBits = (V_motor_DR & (uint8)(~V_motor_MASK));
    V_motor_DR = staticBits | ((uint8)(value << V_motor_SHIFT) & V_motor_MASK);
}


/*******************************************************************************
* Function Name: V_motor_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  V_motor_DM_STRONG     Strong Drive 
*  V_motor_DM_OD_HI      Open Drain, Drives High 
*  V_motor_DM_OD_LO      Open Drain, Drives Low 
*  V_motor_DM_RES_UP     Resistive Pull Up 
*  V_motor_DM_RES_DWN    Resistive Pull Down 
*  V_motor_DM_RES_UPDWN  Resistive Pull Up/Down 
*  V_motor_DM_DIG_HIZ    High Impedance Digital 
*  V_motor_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void V_motor_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(V_motor_0, mode);
}


/*******************************************************************************
* Function Name: V_motor_Read
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
*  Macro V_motor_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 V_motor_Read(void) 
{
    return (V_motor_PS & V_motor_MASK) >> V_motor_SHIFT;
}


/*******************************************************************************
* Function Name: V_motor_ReadDataReg
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
uint8 V_motor_ReadDataReg(void) 
{
    return (V_motor_DR & V_motor_MASK) >> V_motor_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(V_motor_INTSTAT) 

    /*******************************************************************************
    * Function Name: V_motor_ClearInterrupt
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
    uint8 V_motor_ClearInterrupt(void) 
    {
        return (V_motor_INTSTAT & V_motor_MASK) >> V_motor_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
