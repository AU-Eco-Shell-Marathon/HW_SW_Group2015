/*******************************************************************************
* File Name: A_generator.h  
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

#if !defined(CY_PINS_A_generator_H) /* Pins A_generator_H */
#define CY_PINS_A_generator_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "A_generator_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 A_generator__PORT == 15 && ((A_generator__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    A_generator_Write(uint8 value) ;
void    A_generator_SetDriveMode(uint8 mode) ;
uint8   A_generator_ReadDataReg(void) ;
uint8   A_generator_Read(void) ;
uint8   A_generator_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define A_generator_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define A_generator_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define A_generator_DM_RES_UP          PIN_DM_RES_UP
#define A_generator_DM_RES_DWN         PIN_DM_RES_DWN
#define A_generator_DM_OD_LO           PIN_DM_OD_LO
#define A_generator_DM_OD_HI           PIN_DM_OD_HI
#define A_generator_DM_STRONG          PIN_DM_STRONG
#define A_generator_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define A_generator_MASK               A_generator__MASK
#define A_generator_SHIFT              A_generator__SHIFT
#define A_generator_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define A_generator_PS                     (* (reg8 *) A_generator__PS)
/* Data Register */
#define A_generator_DR                     (* (reg8 *) A_generator__DR)
/* Port Number */
#define A_generator_PRT_NUM                (* (reg8 *) A_generator__PRT) 
/* Connect to Analog Globals */                                                  
#define A_generator_AG                     (* (reg8 *) A_generator__AG)                       
/* Analog MUX bux enable */
#define A_generator_AMUX                   (* (reg8 *) A_generator__AMUX) 
/* Bidirectional Enable */                                                        
#define A_generator_BIE                    (* (reg8 *) A_generator__BIE)
/* Bit-mask for Aliased Register Access */
#define A_generator_BIT_MASK               (* (reg8 *) A_generator__BIT_MASK)
/* Bypass Enable */
#define A_generator_BYP                    (* (reg8 *) A_generator__BYP)
/* Port wide control signals */                                                   
#define A_generator_CTL                    (* (reg8 *) A_generator__CTL)
/* Drive Modes */
#define A_generator_DM0                    (* (reg8 *) A_generator__DM0) 
#define A_generator_DM1                    (* (reg8 *) A_generator__DM1)
#define A_generator_DM2                    (* (reg8 *) A_generator__DM2) 
/* Input Buffer Disable Override */
#define A_generator_INP_DIS                (* (reg8 *) A_generator__INP_DIS)
/* LCD Common or Segment Drive */
#define A_generator_LCD_COM_SEG            (* (reg8 *) A_generator__LCD_COM_SEG)
/* Enable Segment LCD */
#define A_generator_LCD_EN                 (* (reg8 *) A_generator__LCD_EN)
/* Slew Rate Control */
#define A_generator_SLW                    (* (reg8 *) A_generator__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define A_generator_PRTDSI__CAPS_SEL       (* (reg8 *) A_generator__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define A_generator_PRTDSI__DBL_SYNC_IN    (* (reg8 *) A_generator__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define A_generator_PRTDSI__OE_SEL0        (* (reg8 *) A_generator__PRTDSI__OE_SEL0) 
#define A_generator_PRTDSI__OE_SEL1        (* (reg8 *) A_generator__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define A_generator_PRTDSI__OUT_SEL0       (* (reg8 *) A_generator__PRTDSI__OUT_SEL0) 
#define A_generator_PRTDSI__OUT_SEL1       (* (reg8 *) A_generator__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define A_generator_PRTDSI__SYNC_OUT       (* (reg8 *) A_generator__PRTDSI__SYNC_OUT) 


#if defined(A_generator__INTSTAT)  /* Interrupt Registers */

    #define A_generator_INTSTAT                (* (reg8 *) A_generator__INTSTAT)
    #define A_generator_SNAP                   (* (reg8 *) A_generator__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_A_generator_H */


/* [] END OF FILE */
