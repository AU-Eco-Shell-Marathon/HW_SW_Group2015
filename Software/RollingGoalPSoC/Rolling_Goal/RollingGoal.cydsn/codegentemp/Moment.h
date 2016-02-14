/*******************************************************************************
* File Name: Moment.h  
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

#if !defined(CY_PINS_Moment_H) /* Pins Moment_H */
#define CY_PINS_Moment_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Moment_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Moment__PORT == 15 && ((Moment__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    Moment_Write(uint8 value) ;
void    Moment_SetDriveMode(uint8 mode) ;
uint8   Moment_ReadDataReg(void) ;
uint8   Moment_Read(void) ;
uint8   Moment_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define Moment_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define Moment_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define Moment_DM_RES_UP          PIN_DM_RES_UP
#define Moment_DM_RES_DWN         PIN_DM_RES_DWN
#define Moment_DM_OD_LO           PIN_DM_OD_LO
#define Moment_DM_OD_HI           PIN_DM_OD_HI
#define Moment_DM_STRONG          PIN_DM_STRONG
#define Moment_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define Moment_MASK               Moment__MASK
#define Moment_SHIFT              Moment__SHIFT
#define Moment_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Moment_PS                     (* (reg8 *) Moment__PS)
/* Data Register */
#define Moment_DR                     (* (reg8 *) Moment__DR)
/* Port Number */
#define Moment_PRT_NUM                (* (reg8 *) Moment__PRT) 
/* Connect to Analog Globals */                                                  
#define Moment_AG                     (* (reg8 *) Moment__AG)                       
/* Analog MUX bux enable */
#define Moment_AMUX                   (* (reg8 *) Moment__AMUX) 
/* Bidirectional Enable */                                                        
#define Moment_BIE                    (* (reg8 *) Moment__BIE)
/* Bit-mask for Aliased Register Access */
#define Moment_BIT_MASK               (* (reg8 *) Moment__BIT_MASK)
/* Bypass Enable */
#define Moment_BYP                    (* (reg8 *) Moment__BYP)
/* Port wide control signals */                                                   
#define Moment_CTL                    (* (reg8 *) Moment__CTL)
/* Drive Modes */
#define Moment_DM0                    (* (reg8 *) Moment__DM0) 
#define Moment_DM1                    (* (reg8 *) Moment__DM1)
#define Moment_DM2                    (* (reg8 *) Moment__DM2) 
/* Input Buffer Disable Override */
#define Moment_INP_DIS                (* (reg8 *) Moment__INP_DIS)
/* LCD Common or Segment Drive */
#define Moment_LCD_COM_SEG            (* (reg8 *) Moment__LCD_COM_SEG)
/* Enable Segment LCD */
#define Moment_LCD_EN                 (* (reg8 *) Moment__LCD_EN)
/* Slew Rate Control */
#define Moment_SLW                    (* (reg8 *) Moment__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Moment_PRTDSI__CAPS_SEL       (* (reg8 *) Moment__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Moment_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Moment__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Moment_PRTDSI__OE_SEL0        (* (reg8 *) Moment__PRTDSI__OE_SEL0) 
#define Moment_PRTDSI__OE_SEL1        (* (reg8 *) Moment__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Moment_PRTDSI__OUT_SEL0       (* (reg8 *) Moment__PRTDSI__OUT_SEL0) 
#define Moment_PRTDSI__OUT_SEL1       (* (reg8 *) Moment__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Moment_PRTDSI__SYNC_OUT       (* (reg8 *) Moment__PRTDSI__SYNC_OUT) 


#if defined(Moment__INTSTAT)  /* Interrupt Registers */

    #define Moment_INTSTAT                (* (reg8 *) Moment__INTSTAT)
    #define Moment_SNAP                   (* (reg8 *) Moment__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Moment_H */


/* [] END OF FILE */
