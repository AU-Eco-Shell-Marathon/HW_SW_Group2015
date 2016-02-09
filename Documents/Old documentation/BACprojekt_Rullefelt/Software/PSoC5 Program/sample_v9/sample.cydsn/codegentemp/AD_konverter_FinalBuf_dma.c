/***************************************************************************
* File Name: AD_konverter_FinalBuf_dma.c  
* Version 1.70
*
*  Description:
*   Provides an API for the DMAC component. The API includes functions
*   for the DMA controller, DMA channels and Transfer Descriptors.
*
*
*   Note:
*     This module requires the developer to finish or fill in the auto
*     generated funcions and setup the dma channel and TD's.
*
********************************************************************************
* Copyright 2008-2010, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/
#include <CYLIB.H>
#include <CYDMAC.H>
#include <AD_konverter_FinalBuf_dma.H>



/****************************************************************************
* 
* The following defines are available in Cyfitter.h
* 
* 
* 
* AD_konverter_FinalBuf__DRQ_CTL_REG
* 
* 
* AD_konverter_FinalBuf__DRQ_NUMBER
* 
* Number of TD's used by this channel.
* AD_konverter_FinalBuf__NUMBEROF_TDS
* 
* Priority of this channel.
* AD_konverter_FinalBuf__PRIORITY
* 
* True if AD_konverter_FinalBuf_TERMIN_SEL is used.
* AD_konverter_FinalBuf__TERMIN_EN
* 
* TERMIN interrupt line to signal terminate.
* AD_konverter_FinalBuf__TERMIN_SEL
* 
* 
* True if AD_konverter_FinalBuf_TERMOUT0_SEL is used.
* AD_konverter_FinalBuf__TERMOUT0_EN
* 
* 
* TERMOUT0 interrupt line to signal completion.
* AD_konverter_FinalBuf__TERMOUT0_SEL
* 
* 
* True if AD_konverter_FinalBuf_TERMOUT1_SEL is used.
* AD_konverter_FinalBuf__TERMOUT1_EN
* 
* 
* TERMOUT1 interrupt line to signal completion.
* AD_konverter_FinalBuf__TERMOUT1_SEL
* 
****************************************************************************/


/* Zero based index of AD_konverter_FinalBuf dma channel */
uint8 AD_konverter_FinalBuf_DmaHandle = DMA_INVALID_CHANNEL;

/*********************************************************************
* Function Name: uint8 AD_konverter_FinalBuf_DmaInitalize
**********************************************************************
* Summary:
*   Allocates and initialises a channel of the DMAC to be used by the
*   caller.
*
* Parameters:
*   BurstCount.
*       
*       
*   ReqestPerBurst.
*       
*       
*   UpperSrcAddress.
*       
*       
*   UpperDestAddress.
*       
*
* Return:
*   The channel that can be used by the caller for DMA activity.
*   DMA_INVALID_CHANNEL (0xFF) if there are no channels left. 
*
*
*******************************************************************/
uint8 AD_konverter_FinalBuf_DmaInitialize(uint8 BurstCount, uint8 ReqestPerBurst, uint16 UpperSrcAddress, uint16 UpperDestAddress) 
{

    /* Allocate a DMA channel. */
    AD_konverter_FinalBuf_DmaHandle = (uint8)AD_konverter_FinalBuf__DRQ_NUMBER;

    /* Configure the channel. */
    (void)CyDmaChSetConfiguration(AD_konverter_FinalBuf_DmaHandle,
                                  BurstCount,
                                  ReqestPerBurst,
                                  (uint8)AD_konverter_FinalBuf__TERMOUT0_SEL,
                                  (uint8)AD_konverter_FinalBuf__TERMOUT1_SEL,
                                  (uint8)AD_konverter_FinalBuf__TERMIN_SEL);

    /* Set the extended address for the transfers */
    (void)CyDmaChSetExtendedAddress(AD_konverter_FinalBuf_DmaHandle, UpperSrcAddress, UpperDestAddress);

    /* Set the priority for this channel */
    (void)CyDmaChPriority(AD_konverter_FinalBuf_DmaHandle, (uint8)AD_konverter_FinalBuf__PRIORITY);
    
    return AD_konverter_FinalBuf_DmaHandle;
}

/*********************************************************************
* Function Name: void AD_konverter_FinalBuf_DmaRelease
**********************************************************************
* Summary:
*   Frees the channel associated with AD_konverter_FinalBuf.
*
*
* Parameters:
*   void.
*
*
*
* Return:
*   void.
*
*******************************************************************/
void AD_konverter_FinalBuf_DmaRelease(void) 
{
    /* Disable the channel */
    (void)CyDmaChDisable(AD_konverter_FinalBuf_DmaHandle);
}

