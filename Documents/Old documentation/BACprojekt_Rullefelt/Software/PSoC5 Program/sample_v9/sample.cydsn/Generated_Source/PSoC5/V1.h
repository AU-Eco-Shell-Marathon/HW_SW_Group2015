/*******************************************************************************
* File Name: V1.h  
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

#if !defined(CY_PINS_V1_H) /* Pins V1_H */
#define CY_PINS_V1_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "V1_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 V1__PORT == 15 && ((V1__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    V1_Write(uint8 value) ;
void    V1_SetDriveMode(uint8 mode) ;
uint8   V1_ReadDataReg(void) ;
uint8   V1_Read(void) ;
uint8   V1_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define V1_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define V1_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define V1_DM_RES_UP          PIN_DM_RES_UP
#define V1_DM_RES_DWN         PIN_DM_RES_DWN
#define V1_DM_OD_LO           PIN_DM_OD_LO
#define V1_DM_OD_HI           PIN_DM_OD_HI
#define V1_DM_STRONG          PIN_DM_STRONG
#define V1_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define V1_MASK               V1__MASK
#define V1_SHIFT              V1__SHIFT
#define V1_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define V1_PS                     (* (reg8 *) V1__PS)
/* Data Register */
#define V1_DR                     (* (reg8 *) V1__DR)
/* Port Number */
#define V1_PRT_NUM                (* (reg8 *) V1__PRT) 
/* Connect to Analog Globals */                                                  
#define V1_AG                     (* (reg8 *) V1__AG)                       
/* Analog MUX bux enable */
#define V1_AMUX                   (* (reg8 *) V1__AMUX) 
/* Bidirectional Enable */                                                        
#define V1_BIE                    (* (reg8 *) V1__BIE)
/* Bit-mask for Aliased Register Access */
#define V1_BIT_MASK               (* (reg8 *) V1__BIT_MASK)
/* Bypass Enable */
#define V1_BYP                    (* (reg8 *) V1__BYP)
/* Port wide control signals */                                                   
#define V1_CTL                    (* (reg8 *) V1__CTL)
/* Drive Modes */
#define V1_DM0                    (* (reg8 *) V1__DM0) 
#define V1_DM1                    (* (reg8 *) V1__DM1)
#define V1_DM2                    (* (reg8 *) V1__DM2) 
/* Input Buffer Disable Override */
#define V1_INP_DIS                (* (reg8 *) V1__INP_DIS)
/* LCD Common or Segment Drive */
#define V1_LCD_COM_SEG            (* (reg8 *) V1__LCD_COM_SEG)
/* Enable Segment LCD */
#define V1_LCD_EN                 (* (reg8 *) V1__LCD_EN)
/* Slew Rate Control */
#define V1_SLW                    (* (reg8 *) V1__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define V1_PRTDSI__CAPS_SEL       (* (reg8 *) V1__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define V1_PRTDSI__DBL_SYNC_IN    (* (reg8 *) V1__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define V1_PRTDSI__OE_SEL0        (* (reg8 *) V1__PRTDSI__OE_SEL0) 
#define V1_PRTDSI__OE_SEL1        (* (reg8 *) V1__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define V1_PRTDSI__OUT_SEL0       (* (reg8 *) V1__PRTDSI__OUT_SEL0) 
#define V1_PRTDSI__OUT_SEL1       (* (reg8 *) V1__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define V1_PRTDSI__SYNC_OUT       (* (reg8 *) V1__PRTDSI__SYNC_OUT) 


#if defined(V1__INTSTAT)  /* Interrupt Registers */

    #define V1_INTSTAT                (* (reg8 *) V1__INTSTAT)
    #define V1_SNAP                   (* (reg8 *) V1__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_V1_H */


/* [] END OF FILE */
