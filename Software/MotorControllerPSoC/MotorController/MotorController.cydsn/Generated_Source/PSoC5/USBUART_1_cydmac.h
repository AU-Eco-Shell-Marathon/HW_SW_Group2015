/***************************************************************************//**
* \file USBUART_1_cydmac.h
* \version 3.0
*
* \brief
*  Header File for the USBFS component includes
*
********************************************************************************
* \copyright
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_USBFS_USBUART_1_cydmac_H)
#define CY_USBFS_USBUART_1_cydmac_H

#include "USBUART_1_pvt.h"

/*******************************************************************************
* Function Name: USBUART_1_CyDmaSetConfiguration
****************************************************************************//**
*
*  Sets configuration information for the specified descriptor.
*
*  \param ch:    DMA ch modified by this function.
*  \param descr: Descriptor (0 or 1) modified by this function.
*  \param cfg:   Descriptor control register.
*
* \sideeffect
*   Refer to CyDmaSetConfiguration() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaSetConfiguration(ch, descr, cfg) \
    do{ \
        CYDMA_DESCR_BASE.descriptor[ch][descr].ctl = (cfg); \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaSetInterruptMask
****************************************************************************//**
*
*  Enables the DMA channel interrupt.
*
*  \param ch: Channel used by this function.
*
*
*******************************************************************************/
#define USBUART_1_CyDmaSetInterruptMask(ch) \
    do{ \
        CYDMA_INTR_MASK_REG |= ((uint32)(1UL << (ch))); \
    }while(0)


/*******************************************************************************
* Function Name:USBUART_1_CyDmaSetDescriptor0Next
****************************************************************************//**
*
*  Sets the descriptor 0 that should be run the next time the channel is
*  triggered.
*
*  \param channel:    Channel used by this function.
*
*
*******************************************************************************/
#define USBUART_1_CyDmaSetDescriptor0Next(ch) \
    do{ \
        CYDMA_CH_CTL_BASE.ctl[(ch)] &= (uint32) ~CYDMA_DESCRIPTOR; \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaSetNumDataElements
****************************************************************************//**
*
*  Sets the number of data elements to transfer for specified descriptor.
*
*  \param ch:    Channel used by this function.
*  \param descr: Descriptor (0 or 1) modified by this function.
*  \param numEl: Total number of data elements this descriptor transfers - 1u.
*         Valid ranges are 0 to 65535.
*
*
* \sideeffect
*   Refer to CyDmaSetNumDataElements() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaSetNumDataElements(ch, descr, numEl) \
    do{ \
        CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].ctl = \
            ((CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].ctl & (uint32) ~CYDMA_DATA_NR) | ((uint32) (numEl))); \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaGetSrcAddress
****************************************************************************//**
*
*  Returns the source address for the specified descriptor.
*
*  \param ch:    Channel used by this function.
*  \param descr: Specifies descriptor (0 or 1) used by this function.
*
* \return
*  Source address written to specified descriptor.
*
*******************************************************************************/
#define USBUART_1_CyDmaGetSrcAddress(ch, descr)    CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].src


/*******************************************************************************
* Function Name: USBUART_1_CyDmaSetSrcAddress
****************************************************************************//**
*
*  Configures the source address for the specified descriptor.
*
*  \param ch:         Channel used by this function.
*  \param descr:      Descriptor (0 or 1) modified by this function.
*  \param srcAddress: Address of DMA transfer source.
*
*
* \sideeffect
*   Refer to CyDmaSetSrcAddress() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaSetSrcAddress(ch, descr, srcAddress) \
    do{ \
        CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].src = (srcAddress); \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaGetDstAddress
****************************************************************************//**
*
*  Returns the destination address for the specified descriptor, set by
*  CyDmaSetDstAddress().
*
*  \param ch:    Channel used by this function.
*  \param descr: Specifies descriptor (0 or 1) used by this function.
*
* \return
*  Destination address written to specified descriptor.
*
*******************************************************************************/
#define USBUART_1_CyDmaGetDstAddress(ch, descr)    CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].dst


/*******************************************************************************
* Function Name: USBUART_1_CyDmaSetDstAddress
****************************************************************************//**
*
*  Configures the destination address for the specified descriptor.
*
*  \param ch:         Channel used by this function.
*  \param descr:      Descriptor (0 or 1) modified by this function.
*  \param dstAddress: Address of DMA transfer destination.
*
*
* \sideeffect
*   Refer to CyDmaSetDstAddress() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaSetDstAddress(ch, descr, dstAddress) \
    do{ \
        CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].dst = (dstAddress); \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaValidateDescriptor
****************************************************************************//**
*
*  Validates the specified descriptor after it has been invalidated.
*
*  \param ch:    Channel used by this function.
*  \param descr: Descriptor (0 or 1) modified by this function.
*
*
* \sideeffect
*   Refer to CyDmaValidateDescriptor() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaValidateDescriptor(ch, descr) \
    do{ \
        CYDMA_DESCR_BASE.descriptor[(ch)][(descr)].status = CYDMA_VALID; \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaChEnable
****************************************************************************//**
*
*  Enables the DMA ch.
*
*  \param ch: Channel used by this function.
*
*
* \sideeffect
*   Refer to CyDmaChEnable() function of DMA component.
*
*******************************************************************************/
#define USBUART_1_CyDmaChEnable(ch) \
    do{ \
        CYDMA_CH_CTL_BASE.ctl[(ch)] |= CYDMA_ENABLED; \
    }while(0)


/*******************************************************************************
* Function Name: CyDmaChDisable
****************************************************************************//**
*
*  Disables the DMA ch.
*
*  \param ch: Channel used by this function.
*
*
* \sideeffect
*  If this function is called during a DMA transfer the transfer is aborted.
*
*******************************************************************************/
#define USBUART_1_CyDmaChDisable(ch) \
    do{ \
        CYDMA_CH_CTL_BASE.ctl[(ch)] &= (uint32) ~CYDMA_ENABLED; \
    }while(0)


/*******************************************************************************
* Function Name: USBUART_1_CyDmaTriggerIn
****************************************************************************//**
*
*  Triggers the DMA channel to execute a transfer. The tr_in signal is 
*  triggered.
*
*  \param ch: Channel used by this function.
*
*
*******************************************************************************/
#define USBUART_1_USB_TR_GROUP1  (0xC0020100U)
#define USBUART_1_CyDmaTriggerIn(ch) \
    do{ \
        CYDMA_TR_CTL_REG = USBUART_1_USB_TR_GROUP1 | ((uint32)(ch) & CYDMA_TR_SEL_MASK); \
    }while(0)

    /*******************************************************************************
* Function Name: USBUART_1_CyDmaTriggerOut
****************************************************************************//**
*
*  Triggers the DMA channel to generate a transfer completion signal without 
*  actual transfer executed. The tr_out signal is triggered.
*
*  \param ch: Channel used by this function.
*
*
*******************************************************************************/
#define USBUART_1_USB_TR_GROUP3  (0xC0020300U)
#define USBUART_1_CyDmaTriggerOut(ch) \
    do{ \
        CYDMA_TR_CTL_REG = USBUART_1_USB_TR_GROUP3 | ((uint32)(ch) & CYDMA_TR_SEL_MASK); \
    }while(0)


#endif /* (CY_USBFS_USBUART_1_cydmac_H) */


/* [] END OF FILE */
