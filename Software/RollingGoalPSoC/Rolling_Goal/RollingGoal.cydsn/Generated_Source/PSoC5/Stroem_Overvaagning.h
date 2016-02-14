/*******************************************************************************
* File Name: Stroem_Overvaagning.h  
* Version 2.10
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_Stroem_Overvaagning_H) /* Pins Stroem_Overvaagning_H */
#define CY_PINS_Stroem_Overvaagning_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Stroem_Overvaagning_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Stroem_Overvaagning__PORT == 15 && ((Stroem_Overvaagning__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    Stroem_Overvaagning_Write(uint8 value) ;
void    Stroem_Overvaagning_SetDriveMode(uint8 mode) ;
uint8   Stroem_Overvaagning_ReadDataReg(void) ;
uint8   Stroem_Overvaagning_Read(void) ;
uint8   Stroem_Overvaagning_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define Stroem_Overvaagning_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define Stroem_Overvaagning_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define Stroem_Overvaagning_DM_RES_UP          PIN_DM_RES_UP
#define Stroem_Overvaagning_DM_RES_DWN         PIN_DM_RES_DWN
#define Stroem_Overvaagning_DM_OD_LO           PIN_DM_OD_LO
#define Stroem_Overvaagning_DM_OD_HI           PIN_DM_OD_HI
#define Stroem_Overvaagning_DM_STRONG          PIN_DM_STRONG
#define Stroem_Overvaagning_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define Stroem_Overvaagning_MASK               Stroem_Overvaagning__MASK
#define Stroem_Overvaagning_SHIFT              Stroem_Overvaagning__SHIFT
#define Stroem_Overvaagning_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Stroem_Overvaagning_PS                     (* (reg8 *) Stroem_Overvaagning__PS)
/* Data Register */
#define Stroem_Overvaagning_DR                     (* (reg8 *) Stroem_Overvaagning__DR)
/* Port Number */
#define Stroem_Overvaagning_PRT_NUM                (* (reg8 *) Stroem_Overvaagning__PRT) 
/* Connect to Analog Globals */                                                  
#define Stroem_Overvaagning_AG                     (* (reg8 *) Stroem_Overvaagning__AG)                       
/* Analog MUX bux enable */
#define Stroem_Overvaagning_AMUX                   (* (reg8 *) Stroem_Overvaagning__AMUX) 
/* Bidirectional Enable */                                                        
#define Stroem_Overvaagning_BIE                    (* (reg8 *) Stroem_Overvaagning__BIE)
/* Bit-mask for Aliased Register Access */
#define Stroem_Overvaagning_BIT_MASK               (* (reg8 *) Stroem_Overvaagning__BIT_MASK)
/* Bypass Enable */
#define Stroem_Overvaagning_BYP                    (* (reg8 *) Stroem_Overvaagning__BYP)
/* Port wide control signals */                                                   
#define Stroem_Overvaagning_CTL                    (* (reg8 *) Stroem_Overvaagning__CTL)
/* Drive Modes */
#define Stroem_Overvaagning_DM0                    (* (reg8 *) Stroem_Overvaagning__DM0) 
#define Stroem_Overvaagning_DM1                    (* (reg8 *) Stroem_Overvaagning__DM1)
#define Stroem_Overvaagning_DM2                    (* (reg8 *) Stroem_Overvaagning__DM2) 
/* Input Buffer Disable Override */
#define Stroem_Overvaagning_INP_DIS                (* (reg8 *) Stroem_Overvaagning__INP_DIS)
/* LCD Common or Segment Drive */
#define Stroem_Overvaagning_LCD_COM_SEG            (* (reg8 *) Stroem_Overvaagning__LCD_COM_SEG)
/* Enable Segment LCD */
#define Stroem_Overvaagning_LCD_EN                 (* (reg8 *) Stroem_Overvaagning__LCD_EN)
/* Slew Rate Control */
#define Stroem_Overvaagning_SLW                    (* (reg8 *) Stroem_Overvaagning__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Stroem_Overvaagning_PRTDSI__CAPS_SEL       (* (reg8 *) Stroem_Overvaagning__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Stroem_Overvaagning_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Stroem_Overvaagning__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Stroem_Overvaagning_PRTDSI__OE_SEL0        (* (reg8 *) Stroem_Overvaagning__PRTDSI__OE_SEL0) 
#define Stroem_Overvaagning_PRTDSI__OE_SEL1        (* (reg8 *) Stroem_Overvaagning__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Stroem_Overvaagning_PRTDSI__OUT_SEL0       (* (reg8 *) Stroem_Overvaagning__PRTDSI__OUT_SEL0) 
#define Stroem_Overvaagning_PRTDSI__OUT_SEL1       (* (reg8 *) Stroem_Overvaagning__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Stroem_Overvaagning_PRTDSI__SYNC_OUT       (* (reg8 *) Stroem_Overvaagning__PRTDSI__SYNC_OUT) 


#if defined(Stroem_Overvaagning__INTSTAT)  /* Interrupt Registers */

    #define Stroem_Overvaagning_INTSTAT                (* (reg8 *) Stroem_Overvaagning__INTSTAT)
    #define Stroem_Overvaagning_SNAP                   (* (reg8 *) Stroem_Overvaagning__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Stroem_Overvaagning_H */


/* [] END OF FILE */
