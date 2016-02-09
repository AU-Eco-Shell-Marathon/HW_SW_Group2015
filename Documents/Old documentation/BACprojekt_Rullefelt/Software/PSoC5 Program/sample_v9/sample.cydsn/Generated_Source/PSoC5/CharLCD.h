/*******************************************************************************
* File Name: CharLCD.h
* Version 2.10
*
* Description:
*  This header file contains registers and constants associated with the
*  Character LCD component.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_CHARLCD_CharLCD_H)
#define CY_CHARLCD_CharLCD_H

#include "cytypes.h"
#include "cyfitter.h"


/***************************************
*   Conditional Compilation Parameters
***************************************/

#define CharLCD_CONVERSION_ROUTINES     (1u)
#define CharLCD_CUSTOM_CHAR_SET         (3u)

/* Custom character set types */
#define CharLCD_NONE                     (0u)    /* No Custom Fonts      */
#define CharLCD_HORIZONTAL_BG            (1u)    /* Horizontal Bar Graph */
#define CharLCD_VERTICAL_BG              (2u)    /* Vertical Bar Graph   */
#define CharLCD_USER_DEFINED             (3u)    /* User Defined Fonts   */


/***************************************
*     Data Struct Definitions
***************************************/

/* Sleep Mode API Support */
typedef struct
{
    uint8 enableState;
} CharLCD_BACKUP_STRUCT;


/***************************************
*        Function Prototypes
***************************************/

void CharLCD_Init(void) ;
void CharLCD_Enable(void) ;
void CharLCD_Start(void) ;
void CharLCD_Stop(void) ;
void CharLCD_WriteControl(uint8 cByte) ;
void CharLCD_WriteData(uint8 dByte) ;
void CharLCD_PrintString(char8 const string[]) ;
void CharLCD_Position(uint8 row, uint8 column) ;
void CharLCD_PutChar(char8 character) ;
void CharLCD_IsReady(void) ;
void CharLCD_SaveConfig(void) ;
void CharLCD_RestoreConfig(void) ;
void CharLCD_Sleep(void) ;
void CharLCD_Wakeup(void) ;

#if((CharLCD_CUSTOM_CHAR_SET == CharLCD_VERTICAL_BG) || \
                (CharLCD_CUSTOM_CHAR_SET == CharLCD_HORIZONTAL_BG))

    void  CharLCD_LoadCustomFonts(uint8 const customData[])
                        ;

    void  CharLCD_DrawHorizontalBG(uint8 row, uint8 column, uint8 maxCharacters, uint8 value)
                         ;

    void CharLCD_DrawVerticalBG(uint8 row, uint8 column, uint8 maxCharacters, uint8 value)
                        ;

#endif /* ((CharLCD_CUSTOM_CHAR_SET == CharLCD_VERTICAL_BG) */

#if(CharLCD_CUSTOM_CHAR_SET == CharLCD_USER_DEFINED)

    void CharLCD_LoadCustomFonts(uint8 const customData[])
                            ;

#endif /* ((CharLCD_CUSTOM_CHAR_SET == CharLCD_USER_DEFINED) */

#if(CharLCD_CONVERSION_ROUTINES == 1u)

    /* ASCII Conversion Routines */
    void CharLCD_PrintInt8(uint8 value) ;
    void CharLCD_PrintInt16(uint16 value) ;
    void CharLCD_PrintInt32(uint32 value) ;
    void CharLCD_PrintNumber(uint16 value) ; 
    void CharLCD_PrintU32Number(uint32 value) ;
    
#endif /* CharLCD_CONVERSION_ROUTINES == 1u */

/* Clear Macro */
#define CharLCD_ClearDisplay() CharLCD_WriteControl(CharLCD_CLEAR_DISPLAY)

/* Off Macro */
#define CharLCD_DisplayOff() CharLCD_WriteControl(CharLCD_DISPLAY_CURSOR_OFF)

/* On Macro */
#define CharLCD_DisplayOn() CharLCD_WriteControl(CharLCD_DISPLAY_ON_CURSOR_OFF)

#define CharLCD_PrintNumber(value) CharLCD_PrintU32Number((uint16) (value))


/***************************************
*           Global Variables
***************************************/

extern uint8 CharLCD_initVar;
extern uint8 CharLCD_enableState;
extern uint8 const CYCODE CharLCD_customFonts[64u];


/***************************************
*           API Constants
***************************************/

/* Full Byte Commands Sent as Two Nibbles */
#define CharLCD_DISPLAY_8_BIT_INIT       (0x03u)
#define CharLCD_DISPLAY_4_BIT_INIT       (0x02u)
#define CharLCD_DISPLAY_CURSOR_OFF       (0x08u)
#define CharLCD_CLEAR_DISPLAY            (0x01u)
#define CharLCD_CURSOR_AUTO_INCR_ON      (0x06u)
#define CharLCD_DISPLAY_CURSOR_ON        (0x0Eu)
#define CharLCD_DISPLAY_2_LINES_5x10     (0x2Cu)
#define CharLCD_DISPLAY_ON_CURSOR_OFF    (0x0Cu)

#define CharLCD_RESET_CURSOR_POSITION    (0x03u)
#define CharLCD_CURSOR_WINK              (0x0Du)
#define CharLCD_CURSOR_BLINK             (0x0Fu)
#define CharLCD_CURSOR_SH_LEFT           (0x10u)
#define CharLCD_CURSOR_SH_RIGHT          (0x14u)
#define CharLCD_DISPLAY_SCRL_LEFT        (0x18u)
#define CharLCD_DISPLAY_SCRL_RIGHT       (0x1Eu)
#define CharLCD_CURSOR_HOME              (0x02u)
#define CharLCD_CURSOR_LEFT              (0x04u)
#define CharLCD_CURSOR_RIGHT             (0x06u)

/* Point to Character Generator Ram 0 */
#define CharLCD_CGRAM_0                  (0x40u)

/* Point to Display Data Ram 0 */
#define CharLCD_DDRAM_0                  (0x80u)

/* LCD Characteristics */
#define CharLCD_CHARACTER_WIDTH          (0x05u)
#define CharLCD_CHARACTER_HEIGHT         (0x08u)

#if(CharLCD_CONVERSION_ROUTINES == 1u)
    #define CharLCD_NUMBER_OF_REMAINDERS_U32 (0x0Au)
    #define CharLCD_TEN                      (0x0Au)
    #define CharLCD_8_BIT_SHIFT              (8u)
    #define CharLCD_32_BIT_SHIFT             (32u)
    #define CharLCD_ZERO_CHAR_ASCII          (48u)
#endif /* CharLCD_CONVERSION_ROUTINES == 1u */

/* Nibble Offset and Mask */
#define CharLCD_NIBBLE_SHIFT             (0x04u)
#define CharLCD_NIBBLE_MASK              (0x0Fu)

/* LCD Module Address Constants */
#define CharLCD_ROW_0_START              (0x80u)
#define CharLCD_ROW_1_START              (0xC0u)
#define CharLCD_ROW_2_START              (0x94u)
#define CharLCD_ROW_3_START              (0xD4u)

/* Custom Character References */
#define CharLCD_CUSTOM_0                 (0x00u)
#define CharLCD_CUSTOM_1                 (0x01u)
#define CharLCD_CUSTOM_2                 (0x02u)
#define CharLCD_CUSTOM_3                 (0x03u)
#define CharLCD_CUSTOM_4                 (0x04u)
#define CharLCD_CUSTOM_5                 (0x05u)
#define CharLCD_CUSTOM_6                 (0x06u)
#define CharLCD_CUSTOM_7                 (0x07u)

/* Other constants */
#define CharLCD_BYTE_UPPER_NIBBLE_SHIFT  (0x04u)
#define CharLCD_BYTE_LOWER_NIBBLE_MASK   (0x0Fu)
#define CharLCD_U16_UPPER_BYTE_SHIFT     (0x08u)
#define CharLCD_U16_LOWER_BYTE_MASK      (0xFFu)
#define CharLCD_CUSTOM_CHAR_SET_LEN      (0x40u)

#define CharLCD_LONGEST_CMD_US           (0x651u)
#define CharLCD_WAIT_CYCLE               (0x10u)
#define CharLCD_READY_DELAY              ((CharLCD_LONGEST_CMD_US * 4u)/(CharLCD_WAIT_CYCLE))


/***************************************
*             Registers
***************************************/

/* Device specific registers */
#if (CY_PSOC4)

    #define CharLCD_PORT_DR_REG           (*(reg32 *) CharLCD_LCDPort__DR)  /* Data Output Register */
    #define CharLCD_PORT_DR_PTR           ( (reg32 *) CharLCD_LCDPort__DR)
    #define CharLCD_PORT_PS_REG           (*(reg32 *) CharLCD_LCDPort__PS)  /* Pin State Register */
    #define CharLCD_PORT_PS_PTR           ( (reg32 *) CharLCD_LCDPort__PS)
    
    #define CharLCD_PORT_PC_REG           (*(reg32 *) CharLCD_LCDPort__PC)
    #define CharLCD_PORT_PC_PTR           (*(reg32 *) CharLCD_LCDPort__PC)
    
#else

    #define CharLCD_PORT_DR_REG           (*(reg8 *) CharLCD_LCDPort__DR)  /* Data Output Register */
    #define CharLCD_PORT_DR_PTR           ( (reg8 *) CharLCD_LCDPort__DR)
    #define CharLCD_PORT_PS_REG           (*(reg8 *) CharLCD_LCDPort__PS)  /* Pin State Register */
    #define CharLCD_PORT_PS_PTR           ( (reg8 *) CharLCD_LCDPort__PS)

    #define CharLCD_PORT_DM0_REG          (*(reg8 *) CharLCD_LCDPort__DM0) /* Port Drive Mode 0 */
    #define CharLCD_PORT_DM0_PTR          ( (reg8 *) CharLCD_LCDPort__DM0)
    #define CharLCD_PORT_DM1_REG          (*(reg8 *) CharLCD_LCDPort__DM1) /* Port Drive Mode 1 */
    #define CharLCD_PORT_DM1_PTR          ( (reg8 *) CharLCD_LCDPort__DM1)
    #define CharLCD_PORT_DM2_REG          (*(reg8 *) CharLCD_LCDPort__DM2) /* Port Drive Mode 2 */
    #define CharLCD_PORT_DM2_PTR          ( (reg8 *) CharLCD_LCDPort__DM2)

#endif /* CY_PSOC4 */


/***************************************
*       Register Constants
***************************************/

/* SHIFT must be 1 or 0 */
#if (0 == CharLCD_LCDPort__SHIFT)
    #define CharLCD_PORT_SHIFT               (0x00u)
#else
    #define CharLCD_PORT_SHIFT               (0x01u)
#endif /* (0 == CharLCD_LCDPort__SHIFT) */

#define CharLCD_PORT_MASK                ((uint8) (CharLCD_LCDPort__MASK))

#if (CY_PSOC4)

    #define CharLCD_DM_PIN_STEP              (3u)
    /* Hi-Z Digital is defined by the value of "001b" and this should be set for
    * four data pins, in this way we get - 0x00000249. A similar Strong drive
    * is defined with "110b" so we get 0x00000DB6.
    */
    #define CharLCD_HIGH_Z_DATA_DM           ((0x00000249ul) << (CharLCD_PORT_SHIFT *\
                                                                          CharLCD_DM_PIN_STEP))
    #define CharLCD_STRONG_DATA_DM           ((0x00000DB6ul) << (CharLCD_PORT_SHIFT *\
                                                                          CharLCD_DM_PIN_STEP))
    #define CharLCD_DATA_PINS_MASK           (0x00000FFFul)
    #define CharLCD_DM_DATA_MASK             ((uint32) (CharLCD_DATA_PINS_MASK << \
                                                      (CharLCD_PORT_SHIFT * CharLCD_DM_PIN_STEP)))

#else

    /* Drive Mode register values for High Z */
    #define CharLCD_HIGH_Z_DM0               (0xFFu)
    #define CharLCD_HIGH_Z_DM1               (0x00u)
    #define CharLCD_HIGH_Z_DM2               (0x00u)

    /* Drive Mode register values for High Z Analog */
    #define CharLCD_HIGH_Z_A_DM0             (0x00u)
    #define CharLCD_HIGH_Z_A_DM1             (0x00u)
    #define CharLCD_HIGH_Z_A_DM2             (0x00u)

    /* Drive Mode register values for Strong */
    #define CharLCD_STRONG_DM0               (0x00u)
    #define CharLCD_STRONG_DM1               (0xFFu)
    #define CharLCD_STRONG_DM2               (0xFFu)

#endif /* CY_PSOC4 */

/* Pin Masks */
#define CharLCD_RS                     ((uint8) \
                                                (((uint8) 0x20u) << CharLCD_LCDPort__SHIFT))
#define CharLCD_RW                     ((uint8) \
                                                (((uint8) 0x40u) << CharLCD_LCDPort__SHIFT))
#define CharLCD_E                      ((uint8) \
                                                (((uint8) 0x10u) << CharLCD_LCDPort__SHIFT))
#define CharLCD_READY_BIT              ((uint8) \
                                                (((uint8) 0x08u) << CharLCD_LCDPort__SHIFT))
#define CharLCD_DATA_MASK              ((uint8) \
                                                (((uint8) 0x0Fu) << CharLCD_LCDPort__SHIFT))

/* These names are obsolete and will be removed in future revisions */
#define CharLCD_PORT_DR                  CharLCD_PORT_DR_REG
#define CharLCD_PORT_PS                  CharLCD_PORT_PS_REG
#define CharLCD_PORT_DM0                 CharLCD_PORT_DM0_REG
#define CharLCD_PORT_DM1                 CharLCD_PORT_DM1_REG
#define CharLCD_PORT_DM2                 CharLCD_PORT_DM2_REG


/***************************************
*       Obsolete function names
***************************************/
#if(CharLCD_CONVERSION_ROUTINES == 1u)
    /* This function names are obsolete and will be removed in future 
    * revisions of the component.
    */
    #define CharLCD_PrintDecUint16(x)   CharLCD_PrintNumber(x)  
    #define CharLCD_PrintHexUint8(x)    CharLCD_PrintInt8(x)
    #define CharLCD_PrintHexUint16(x)   CharLCD_PrintInt16(x)        

#endif /* CharLCD_CONVERSION_ROUTINES == 1u */

#endif /* CY_CHARLCD_CharLCD_H */


/* [] END OF FILE */
