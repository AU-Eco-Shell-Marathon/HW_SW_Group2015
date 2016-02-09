/*******************************************************************************
* File Name: AD_konverter.h
* Version 2.0
*
* Description:
*  Contains the function prototypes, constants and register definition of the
*  ADC SAR Sequencer Component.
*
* Note:
*  None
*
********************************************************************************
* Copyright 2012-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_AD_konverter_H)
    #define CY_AD_konverter_H

#include "cytypes.h"
#include "cyfitter.h"
#include "CyLib.h"
#include "AD_konverter_TempBuf_dma.h"
#include "AD_konverter_FinalBuf_dma.h"
#include "AD_konverter_SAR.h"

#define AD_konverter_NUMBER_OF_CHANNELS    (4u)
#define AD_konverter_SAMPLE_MODE           (2u)
#define AD_konverter_CLOCK_SOURCE          (0u)

extern int16  AD_konverter_finalArray[AD_konverter_NUMBER_OF_CHANNELS];
extern uint32 AD_konverter_initVar;

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component ADC_SAR_SEQ_v2_0 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */


/***************************************
*        Function Prototypes
***************************************/
void AD_konverter_Init(void);
void AD_konverter_Enable(void);
void AD_konverter_Disable(void);
void AD_konverter_Start(void);
void AD_konverter_Stop(void);

uint32 AD_konverter_IsEndConversion(uint8 retMode);
int16 AD_konverter_GetResult16(uint16 chan);
int16 AD_konverter_GetAdcResult(void);
void AD_konverter_SetOffset(int32 offset);
void AD_konverter_SetResolution(uint8 resolution);
void AD_konverter_SetScaledGain(int32 adcGain);
int32 AD_konverter_CountsTo_mVolts(int16 adcCounts);
int32 AD_konverter_CountsTo_uVolts(int16 adcCounts);
float32 AD_konverter_CountsTo_Volts(int16 adcCounts);
void AD_konverter_Sleep(void);
void AD_konverter_Wakeup(void);
void AD_konverter_SaveConfig(void);
void AD_konverter_RestoreConfig(void);

CY_ISR_PROTO( AD_konverter_ISR );

/* Obsolete API for backward compatibility.
*  Should not be used in new designs.
*/
void AD_konverter_SetGain(int32 adcGain);


/**************************************
*    Initial Parameter Constants
**************************************/
#define AD_konverter_IRQ_REMOVE             (0u)                /* Removes internal interrupt */


/***************************************
*             Registers
***************************************/
#define AD_konverter_CYCLE_COUNTER_AUX_CONTROL_REG \
                                               (*(reg8 *) AD_konverter_bSAR_SEQ_ChannelCounter__CONTROL_AUX_CTL_REG)
#define AD_konverter_CYCLE_COUNTER_AUX_CONTROL_PTR \
                                               ( (reg8 *) AD_konverter_bSAR_SEQ_ChannelCounter__CONTROL_AUX_CTL_REG)
#define AD_konverter_CONTROL_REG    (*(reg8 *) \
                                             AD_konverter_bSAR_SEQ_CtrlReg__CONTROL_REG)
#define AD_konverter_CONTROL_PTR    ( (reg8 *) \
                                             AD_konverter_bSAR_SEQ_CtrlReg__CONTROL_REG)
#define AD_konverter_COUNT_REG      (*(reg8 *) \
                                             AD_konverter_bSAR_SEQ_ChannelCounter__COUNT_REG)
#define AD_konverter_COUNT_PTR      ( (reg8 *) \
                                             AD_konverter_bSAR_SEQ_ChannelCounter__COUNT_REG)
#define AD_konverter_STATUS_REG     (*(reg8 *) AD_konverter_bSAR_SEQ_EOCSts__STATUS_REG)
#define AD_konverter_STATUS_PTR     ( (reg8 *) AD_konverter_bSAR_SEQ_EOCSts__STATUS_REG)

#define AD_konverter_SAR_DATA_ADDR_0 (AD_konverter_SAR_ADC_SAR__WRK0)
#define AD_konverter_SAR_DATA_ADDR_1 (AD_konverter_SAR_ADC_SAR__WRK1)
#define AD_konverter_SAR_DATA_ADDR_0_REG (*(reg8 *) \
                                              AD_konverter_SAR_ADC_SAR__WRK0)
#define AD_konverter_SAR_DATA_ADDR_1_REG (*(reg8 *) \
                                              AD_konverter_SAR_ADC_SAR__WRK1)


/**************************************
*       Register Constants
**************************************/

#if(AD_konverter_IRQ_REMOVE == 0u)

    /* Priority of the ADC_SAR_IRQ interrupt. */
    #define AD_konverter_INTC_PRIOR_NUMBER          (uint8)(AD_konverter_IRQ__INTC_PRIOR_NUM)

    /* ADC_SAR_IRQ interrupt number */
    #define AD_konverter_INTC_NUMBER                (uint8)(AD_konverter_IRQ__INTC_NUMBER)

#endif   /* End AD_konverter_IRQ_REMOVE */


/***************************************
*       API Constants
***************************************/

/* Constants for IsEndConversion() "retMode" parameter */
#define AD_konverter_RETURN_STATUS              (0x01u)
#define AD_konverter_WAIT_FOR_RESULT            (0x00u)

/* Defines for the Resolution parameter */
#define AD_konverter_BITS_12    AD_konverter_SAR__BITS_12
#define AD_konverter_BITS_10    AD_konverter_SAR__BITS_10
#define AD_konverter_BITS_8     AD_konverter_SAR__BITS_8

#define AD_konverter_CYCLE_COUNTER_ENABLE    (0x20u)
#define AD_konverter_BASE_COMPONENT_ENABLE   (0x01u)
#define AD_konverter_LOAD_COUNTER_PERIOD     (0x02u)
#define AD_konverter_SOFTWARE_SOC_PULSE      (0x04u)

/* Generic DMA Configuration parameters */
#define AD_konverter_TEMP_BYTES_PER_BURST     (uint8)(2u)
#define AD_konverter_TEMP_TRANSFER_COUNT      ((uint16)AD_konverter_NUMBER_OF_CHANNELS << 1u)
#define AD_konverter_FINAL_BYTES_PER_BURST    ((uint16)AD_konverter_NUMBER_OF_CHANNELS << 1u)
#define AD_konverter_REQUEST_PER_BURST        (uint8)(1u)

#define AD_konverter_GET_RESULT_INDEX_OFFSET    ((uint8)AD_konverter_NUMBER_OF_CHANNELS - 1u)

/* Define for Sample Mode  */
#define AD_konverter_SAMPLE_MODE_FREE_RUNNING    (0x00u)
#define AD_konverter_SAMPLE_MODE_SW_TRIGGERED    (0x01u)
#define AD_konverter_SAMPLE_MODE_HW_TRIGGERED    (0x02u)

/* Define for Clock Source  */
#define AD_konverter_CLOCK_INTERNAL              (0x00u)
#define AD_konverter_CLOCK_EXTERNAL              (0x01u)


/***************************************
*        Optional Function Prototypes
***************************************/
#if(AD_konverter_SAMPLE_MODE != AD_konverter_SAMPLE_MODE_HW_TRIGGERED)
    void AD_konverter_StartConvert(void);
    void AD_konverter_StopConvert(void);
#endif /* AD_konverter_SAMPLE_MODE != AD_konverter_SAMPLE_MODE_HW_TRIGGERED */

#endif  /* !defined(CY_AD_konverter_H) */

/* [] END OF FILE */
