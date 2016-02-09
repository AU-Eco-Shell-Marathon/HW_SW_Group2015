/*******************************************************************************
* File Name: V4.h  
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

#if !defined(CY_PINS_V4_H) /* Pins V4_H */
#define CY_PINS_V4_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "V4_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 V4__PORT == 15 && ((V4__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    V4_Write(uint8 value) ;
void    V4_SetDriveMode(uint8 mode) ;
uint8   V4_ReadDataReg(void) ;
uint8   V4_Read(void) ;
uint8   V4_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define V4_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define V4_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define V4_DM_RES_UP          PIN_DM_RES_UP
#define V4_DM_RES_DWN         PIN_DM_RES_DWN
#define V4_DM_OD_LO           PIN_DM_OD_LO
#define V4_DM_OD_HI           PIN_DM_OD_HI
#define V4_DM_STRONG          PIN_DM_STRONG
#define V4_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define V4_MASK               V4__MASK
#define V4_SHIFT              V4__SHIFT
#define V4_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define V4_PS                     (* (reg8 *) V4__PS)
/* Data Register */
#define V4_DR                     (* (reg8 *) V4__DR)
/* Port Number */
#define V4_PRT_NUM                (* (reg8 *) V4__PRT) 
/* Connect to Analog Globals */                                                  
#define V4_AG                     (* (reg8 *) V4__AG)                       
/* Analog MUX bux enable */
#define V4_AMUX                   (* (reg8 *) V4__AMUX) 
/* Bidirectional Enable */                                                        
#define V4_BIE                    (* (reg8 *) V4__BIE)
/* Bit-mask for Aliased Register Access */
#define V4_BIT_MASK               (* (reg8 *) V4__BIT_MASK)
/* Bypass Enable */
#define V4_BYP                    (* (reg8 *) V4__BYP)
/* Port wide control signals */                                                   
#define V4_CTL                    (* (reg8 *) V4__CTL)
/* Drive Modes */
#define V4_DM0                    (* (reg8 *) V4__DM0) 
#define V4_DM1                    (* (reg8 *) V4__DM1)
#define V4_DM2                    (* (reg8 *) V4__DM2) 
/* Input Buffer Disable Override */
#define V4_INP_DIS                (* (reg8 *) V4__INP_DIS)
/* LCD Common or Segment Drive */
#define V4_LCD_COM_SEG            (* (reg8 *) V4__LCD_COM_SEG)
/* Enable Segment LCD */
#define V4_LCD_EN                 (* (reg8 *) V4__LCD_EN)
/* Slew Rate Control */
#define V4_SLW                    (* (reg8 *) V4__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define V4_PRTDSI__CAPS_SEL       (* (reg8 *) V4__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define V4_PRTDSI__DBL_SYNC_IN    (* (reg8 *) V4__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define V4_PRTDSI__OE_SEL0        (* (reg8 *) V4__PRTDSI__OE_SEL0) 
#define V4_PRTDSI__OE_SEL1        (* (reg8 *) V4__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define V4_PRTDSI__OUT_SEL0       (* (reg8 *) V4__PRTDSI__OUT_SEL0) 
#define V4_PRTDSI__OUT_SEL1       (* (reg8 *) V4__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define V4_PRTDSI__SYNC_OUT       (* (reg8 *) V4__PRTDSI__SYNC_OUT) 


#if defined(V4__INTSTAT)  /* Interrupt Registers */

    #define V4_INTSTAT                (* (reg8 *) V4__INTSTAT)
    #define V4_SNAP                   (* (reg8 *) V4__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_V4_H */


/* [] END OF FILE */
