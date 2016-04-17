#ifndef INCLUDED_CYFITTER_H
#define INCLUDED_CYFITTER_H
#include "cydevice.h"
#include "cydevice_trm.h"

/* RX */
#define RX__0__INTTYPE CYREG_PICU3_INTTYPE4
#define RX__0__MASK 0x10u
#define RX__0__PC CYREG_PRT3_PC4
#define RX__0__PORT 3u
#define RX__0__SHIFT 4
#define RX__AG CYREG_PRT3_AG
#define RX__AMUX CYREG_PRT3_AMUX
#define RX__BIE CYREG_PRT3_BIE
#define RX__BIT_MASK CYREG_PRT3_BIT_MASK
#define RX__BYP CYREG_PRT3_BYP
#define RX__CTL CYREG_PRT3_CTL
#define RX__DM0 CYREG_PRT3_DM0
#define RX__DM1 CYREG_PRT3_DM1
#define RX__DM2 CYREG_PRT3_DM2
#define RX__DR CYREG_PRT3_DR
#define RX__INP_DIS CYREG_PRT3_INP_DIS
#define RX__INTTYPE_BASE CYDEV_PICU_INTTYPE_PICU3_BASE
#define RX__LCD_COM_SEG CYREG_PRT3_LCD_COM_SEG
#define RX__LCD_EN CYREG_PRT3_LCD_EN
#define RX__MASK 0x10u
#define RX__PORT 3u
#define RX__PRT CYREG_PRT3_PRT
#define RX__PRTDSI__CAPS_SEL CYREG_PRT3_CAPS_SEL
#define RX__PRTDSI__DBL_SYNC_IN CYREG_PRT3_DBL_SYNC_IN
#define RX__PRTDSI__OE_SEL0 CYREG_PRT3_OE_SEL0
#define RX__PRTDSI__OE_SEL1 CYREG_PRT3_OE_SEL1
#define RX__PRTDSI__OUT_SEL0 CYREG_PRT3_OUT_SEL0
#define RX__PRTDSI__OUT_SEL1 CYREG_PRT3_OUT_SEL1
#define RX__PRTDSI__SYNC_OUT CYREG_PRT3_SYNC_OUT
#define RX__PS CYREG_PRT3_PS
#define RX__SHIFT 4
#define RX__SLW CYREG_PRT3_SLW

/* TX */
#define TX__0__INTTYPE CYREG_PICU3_INTTYPE3
#define TX__0__MASK 0x08u
#define TX__0__PC CYREG_PRT3_PC3
#define TX__0__PORT 3u
#define TX__0__SHIFT 3
#define TX__AG CYREG_PRT3_AG
#define TX__AMUX CYREG_PRT3_AMUX
#define TX__BIE CYREG_PRT3_BIE
#define TX__BIT_MASK CYREG_PRT3_BIT_MASK
#define TX__BYP CYREG_PRT3_BYP
#define TX__CTL CYREG_PRT3_CTL
#define TX__DM0 CYREG_PRT3_DM0
#define TX__DM1 CYREG_PRT3_DM1
#define TX__DM2 CYREG_PRT3_DM2
#define TX__DR CYREG_PRT3_DR
#define TX__INP_DIS CYREG_PRT3_INP_DIS
#define TX__INTTYPE_BASE CYDEV_PICU_INTTYPE_PICU3_BASE
#define TX__LCD_COM_SEG CYREG_PRT3_LCD_COM_SEG
#define TX__LCD_EN CYREG_PRT3_LCD_EN
#define TX__MASK 0x08u
#define TX__PORT 3u
#define TX__PRT CYREG_PRT3_PRT
#define TX__PRTDSI__CAPS_SEL CYREG_PRT3_CAPS_SEL
#define TX__PRTDSI__DBL_SYNC_IN CYREG_PRT3_DBL_SYNC_IN
#define TX__PRTDSI__OE_SEL0 CYREG_PRT3_OE_SEL0
#define TX__PRTDSI__OE_SEL1 CYREG_PRT3_OE_SEL1
#define TX__PRTDSI__OUT_SEL0 CYREG_PRT3_OUT_SEL0
#define TX__PRTDSI__OUT_SEL1 CYREG_PRT3_OUT_SEL1
#define TX__PRTDSI__SYNC_OUT CYREG_PRT3_SYNC_OUT
#define TX__PS CYREG_PRT3_PS
#define TX__SHIFT 3
#define TX__SLW CYREG_PRT3_SLW

/* TX_EN */
#define TX_EN__0__INTTYPE CYREG_PICU3_INTTYPE2
#define TX_EN__0__MASK 0x04u
#define TX_EN__0__PC CYREG_PRT3_PC2
#define TX_EN__0__PORT 3u
#define TX_EN__0__SHIFT 2
#define TX_EN__AG CYREG_PRT3_AG
#define TX_EN__AMUX CYREG_PRT3_AMUX
#define TX_EN__BIE CYREG_PRT3_BIE
#define TX_EN__BIT_MASK CYREG_PRT3_BIT_MASK
#define TX_EN__BYP CYREG_PRT3_BYP
#define TX_EN__CTL CYREG_PRT3_CTL
#define TX_EN__DM0 CYREG_PRT3_DM0
#define TX_EN__DM1 CYREG_PRT3_DM1
#define TX_EN__DM2 CYREG_PRT3_DM2
#define TX_EN__DR CYREG_PRT3_DR
#define TX_EN__INP_DIS CYREG_PRT3_INP_DIS
#define TX_EN__INTTYPE_BASE CYDEV_PICU_INTTYPE_PICU3_BASE
#define TX_EN__LCD_COM_SEG CYREG_PRT3_LCD_COM_SEG
#define TX_EN__LCD_EN CYREG_PRT3_LCD_EN
#define TX_EN__MASK 0x04u
#define TX_EN__PORT 3u
#define TX_EN__PRT CYREG_PRT3_PRT
#define TX_EN__PRTDSI__CAPS_SEL CYREG_PRT3_CAPS_SEL
#define TX_EN__PRTDSI__DBL_SYNC_IN CYREG_PRT3_DBL_SYNC_IN
#define TX_EN__PRTDSI__OE_SEL0 CYREG_PRT3_OE_SEL0
#define TX_EN__PRTDSI__OE_SEL1 CYREG_PRT3_OE_SEL1
#define TX_EN__PRTDSI__OUT_SEL0 CYREG_PRT3_OUT_SEL0
#define TX_EN__PRTDSI__OUT_SEL1 CYREG_PRT3_OUT_SEL1
#define TX_EN__PRTDSI__SYNC_OUT CYREG_PRT3_SYNC_OUT
#define TX_EN__PS CYREG_PRT3_PS
#define TX_EN__SHIFT 2
#define TX_EN__SLW CYREG_PRT3_SLW

/* CAN_CanIP */
#define CAN_CanIP__CSR_BUF_SR CYREG_CAN0_CSR_BUF_SR
#define CAN_CanIP__CSR_CFG CYREG_CAN0_CSR_CFG
#define CAN_CanIP__CSR_CMD CYREG_CAN0_CSR_CMD
#define CAN_CanIP__CSR_ERR_SR CYREG_CAN0_CSR_ERR_SR
#define CAN_CanIP__CSR_INT_EN CYREG_CAN0_CSR_INT_EN
#define CAN_CanIP__CSR_INT_SR CYREG_CAN0_CSR_INT_SR
#define CAN_CanIP__PM_ACT_CFG CYREG_PM_ACT_CFG6
#define CAN_CanIP__PM_ACT_MSK 0x01u
#define CAN_CanIP__PM_STBY_CFG CYREG_PM_STBY_CFG6
#define CAN_CanIP__PM_STBY_MSK 0x01u
#define CAN_CanIP__RX0_ACR CYREG_CAN0_RX0_ACR
#define CAN_CanIP__RX0_ACRD CYREG_CAN0_RX0_ACRD
#define CAN_CanIP__RX0_AMR CYREG_CAN0_RX0_AMR
#define CAN_CanIP__RX0_AMRD CYREG_CAN0_RX0_AMRD
#define CAN_CanIP__RX0_CMD CYREG_CAN0_RX0_CMD
#define CAN_CanIP__RX0_DH CYREG_CAN0_RX0_DH
#define CAN_CanIP__RX0_DL CYREG_CAN0_RX0_DL
#define CAN_CanIP__RX0_ID CYREG_CAN0_RX0_ID
#define CAN_CanIP__RX1_ACR CYREG_CAN0_RX1_ACR
#define CAN_CanIP__RX1_ACRD CYREG_CAN0_RX1_ACRD
#define CAN_CanIP__RX1_AMR CYREG_CAN0_RX1_AMR
#define CAN_CanIP__RX1_AMRD CYREG_CAN0_RX1_AMRD
#define CAN_CanIP__RX1_CMD CYREG_CAN0_RX1_CMD
#define CAN_CanIP__RX1_DH CYREG_CAN0_RX1_DH
#define CAN_CanIP__RX1_DL CYREG_CAN0_RX1_DL
#define CAN_CanIP__RX1_ID CYREG_CAN0_RX1_ID
#define CAN_CanIP__RX10_ACR CYREG_CAN0_RX10_ACR
#define CAN_CanIP__RX10_ACRD CYREG_CAN0_RX10_ACRD
#define CAN_CanIP__RX10_AMR CYREG_CAN0_RX10_AMR
#define CAN_CanIP__RX10_AMRD CYREG_CAN0_RX10_AMRD
#define CAN_CanIP__RX10_CMD CYREG_CAN0_RX10_CMD
#define CAN_CanIP__RX10_DH CYREG_CAN0_RX10_DH
#define CAN_CanIP__RX10_DL CYREG_CAN0_RX10_DL
#define CAN_CanIP__RX10_ID CYREG_CAN0_RX10_ID
#define CAN_CanIP__RX11_ACR CYREG_CAN0_RX11_ACR
#define CAN_CanIP__RX11_ACRD CYREG_CAN0_RX11_ACRD
#define CAN_CanIP__RX11_AMR CYREG_CAN0_RX11_AMR
#define CAN_CanIP__RX11_AMRD CYREG_CAN0_RX11_AMRD
#define CAN_CanIP__RX11_CMD CYREG_CAN0_RX11_CMD
#define CAN_CanIP__RX11_DH CYREG_CAN0_RX11_DH
#define CAN_CanIP__RX11_DL CYREG_CAN0_RX11_DL
#define CAN_CanIP__RX11_ID CYREG_CAN0_RX11_ID
#define CAN_CanIP__RX12_ACR CYREG_CAN0_RX12_ACR
#define CAN_CanIP__RX12_ACRD CYREG_CAN0_RX12_ACRD
#define CAN_CanIP__RX12_AMR CYREG_CAN0_RX12_AMR
#define CAN_CanIP__RX12_AMRD CYREG_CAN0_RX12_AMRD
#define CAN_CanIP__RX12_CMD CYREG_CAN0_RX12_CMD
#define CAN_CanIP__RX12_DH CYREG_CAN0_RX12_DH
#define CAN_CanIP__RX12_DL CYREG_CAN0_RX12_DL
#define CAN_CanIP__RX12_ID CYREG_CAN0_RX12_ID
#define CAN_CanIP__RX13_ACR CYREG_CAN0_RX13_ACR
#define CAN_CanIP__RX13_ACRD CYREG_CAN0_RX13_ACRD
#define CAN_CanIP__RX13_AMR CYREG_CAN0_RX13_AMR
#define CAN_CanIP__RX13_AMRD CYREG_CAN0_RX13_AMRD
#define CAN_CanIP__RX13_CMD CYREG_CAN0_RX13_CMD
#define CAN_CanIP__RX13_DH CYREG_CAN0_RX13_DH
#define CAN_CanIP__RX13_DL CYREG_CAN0_RX13_DL
#define CAN_CanIP__RX13_ID CYREG_CAN0_RX13_ID
#define CAN_CanIP__RX14_ACR CYREG_CAN0_RX14_ACR
#define CAN_CanIP__RX14_ACRD CYREG_CAN0_RX14_ACRD
#define CAN_CanIP__RX14_AMR CYREG_CAN0_RX14_AMR
#define CAN_CanIP__RX14_AMRD CYREG_CAN0_RX14_AMRD
#define CAN_CanIP__RX14_CMD CYREG_CAN0_RX14_CMD
#define CAN_CanIP__RX14_DH CYREG_CAN0_RX14_DH
#define CAN_CanIP__RX14_DL CYREG_CAN0_RX14_DL
#define CAN_CanIP__RX14_ID CYREG_CAN0_RX14_ID
#define CAN_CanIP__RX15_ACR CYREG_CAN0_RX15_ACR
#define CAN_CanIP__RX15_ACRD CYREG_CAN0_RX15_ACRD
#define CAN_CanIP__RX15_AMR CYREG_CAN0_RX15_AMR
#define CAN_CanIP__RX15_AMRD CYREG_CAN0_RX15_AMRD
#define CAN_CanIP__RX15_CMD CYREG_CAN0_RX15_CMD
#define CAN_CanIP__RX15_DH CYREG_CAN0_RX15_DH
#define CAN_CanIP__RX15_DL CYREG_CAN0_RX15_DL
#define CAN_CanIP__RX15_ID CYREG_CAN0_RX15_ID
#define CAN_CanIP__RX2_ACR CYREG_CAN0_RX2_ACR
#define CAN_CanIP__RX2_ACRD CYREG_CAN0_RX2_ACRD
#define CAN_CanIP__RX2_AMR CYREG_CAN0_RX2_AMR
#define CAN_CanIP__RX2_AMRD CYREG_CAN0_RX2_AMRD
#define CAN_CanIP__RX2_CMD CYREG_CAN0_RX2_CMD
#define CAN_CanIP__RX2_DH CYREG_CAN0_RX2_DH
#define CAN_CanIP__RX2_DL CYREG_CAN0_RX2_DL
#define CAN_CanIP__RX2_ID CYREG_CAN0_RX2_ID
#define CAN_CanIP__RX3_ACR CYREG_CAN0_RX3_ACR
#define CAN_CanIP__RX3_ACRD CYREG_CAN0_RX3_ACRD
#define CAN_CanIP__RX3_AMR CYREG_CAN0_RX3_AMR
#define CAN_CanIP__RX3_AMRD CYREG_CAN0_RX3_AMRD
#define CAN_CanIP__RX3_CMD CYREG_CAN0_RX3_CMD
#define CAN_CanIP__RX3_DH CYREG_CAN0_RX3_DH
#define CAN_CanIP__RX3_DL CYREG_CAN0_RX3_DL
#define CAN_CanIP__RX3_ID CYREG_CAN0_RX3_ID
#define CAN_CanIP__RX4_ACR CYREG_CAN0_RX4_ACR
#define CAN_CanIP__RX4_ACRD CYREG_CAN0_RX4_ACRD
#define CAN_CanIP__RX4_AMR CYREG_CAN0_RX4_AMR
#define CAN_CanIP__RX4_AMRD CYREG_CAN0_RX4_AMRD
#define CAN_CanIP__RX4_CMD CYREG_CAN0_RX4_CMD
#define CAN_CanIP__RX4_DH CYREG_CAN0_RX4_DH
#define CAN_CanIP__RX4_DL CYREG_CAN0_RX4_DL
#define CAN_CanIP__RX4_ID CYREG_CAN0_RX4_ID
#define CAN_CanIP__RX5_ACR CYREG_CAN0_RX5_ACR
#define CAN_CanIP__RX5_ACRD CYREG_CAN0_RX5_ACRD
#define CAN_CanIP__RX5_AMR CYREG_CAN0_RX5_AMR
#define CAN_CanIP__RX5_AMRD CYREG_CAN0_RX5_AMRD
#define CAN_CanIP__RX5_CMD CYREG_CAN0_RX5_CMD
#define CAN_CanIP__RX5_DH CYREG_CAN0_RX5_DH
#define CAN_CanIP__RX5_DL CYREG_CAN0_RX5_DL
#define CAN_CanIP__RX5_ID CYREG_CAN0_RX5_ID
#define CAN_CanIP__RX6_ACR CYREG_CAN0_RX6_ACR
#define CAN_CanIP__RX6_ACRD CYREG_CAN0_RX6_ACRD
#define CAN_CanIP__RX6_AMR CYREG_CAN0_RX6_AMR
#define CAN_CanIP__RX6_AMRD CYREG_CAN0_RX6_AMRD
#define CAN_CanIP__RX6_CMD CYREG_CAN0_RX6_CMD
#define CAN_CanIP__RX6_DH CYREG_CAN0_RX6_DH
#define CAN_CanIP__RX6_DL CYREG_CAN0_RX6_DL
#define CAN_CanIP__RX6_ID CYREG_CAN0_RX6_ID
#define CAN_CanIP__RX7_ACR CYREG_CAN0_RX7_ACR
#define CAN_CanIP__RX7_ACRD CYREG_CAN0_RX7_ACRD
#define CAN_CanIP__RX7_AMR CYREG_CAN0_RX7_AMR
#define CAN_CanIP__RX7_AMRD CYREG_CAN0_RX7_AMRD
#define CAN_CanIP__RX7_CMD CYREG_CAN0_RX7_CMD
#define CAN_CanIP__RX7_DH CYREG_CAN0_RX7_DH
#define CAN_CanIP__RX7_DL CYREG_CAN0_RX7_DL
#define CAN_CanIP__RX7_ID CYREG_CAN0_RX7_ID
#define CAN_CanIP__RX8_ACR CYREG_CAN0_RX8_ACR
#define CAN_CanIP__RX8_ACRD CYREG_CAN0_RX8_ACRD
#define CAN_CanIP__RX8_AMR CYREG_CAN0_RX8_AMR
#define CAN_CanIP__RX8_AMRD CYREG_CAN0_RX8_AMRD
#define CAN_CanIP__RX8_CMD CYREG_CAN0_RX8_CMD
#define CAN_CanIP__RX8_DH CYREG_CAN0_RX8_DH
#define CAN_CanIP__RX8_DL CYREG_CAN0_RX8_DL
#define CAN_CanIP__RX8_ID CYREG_CAN0_RX8_ID
#define CAN_CanIP__RX9_ACR CYREG_CAN0_RX9_ACR
#define CAN_CanIP__RX9_ACRD CYREG_CAN0_RX9_ACRD
#define CAN_CanIP__RX9_AMR CYREG_CAN0_RX9_AMR
#define CAN_CanIP__RX9_AMRD CYREG_CAN0_RX9_AMRD
#define CAN_CanIP__RX9_CMD CYREG_CAN0_RX9_CMD
#define CAN_CanIP__RX9_DH CYREG_CAN0_RX9_DH
#define CAN_CanIP__RX9_DL CYREG_CAN0_RX9_DL
#define CAN_CanIP__RX9_ID CYREG_CAN0_RX9_ID
#define CAN_CanIP__TX0_CMD CYREG_CAN0_TX0_CMD
#define CAN_CanIP__TX0_DH CYREG_CAN0_TX0_DH
#define CAN_CanIP__TX0_DL CYREG_CAN0_TX0_DL
#define CAN_CanIP__TX0_ID CYREG_CAN0_TX0_ID
#define CAN_CanIP__TX1_CMD CYREG_CAN0_TX1_CMD
#define CAN_CanIP__TX1_DH CYREG_CAN0_TX1_DH
#define CAN_CanIP__TX1_DL CYREG_CAN0_TX1_DL
#define CAN_CanIP__TX1_ID CYREG_CAN0_TX1_ID
#define CAN_CanIP__TX2_CMD CYREG_CAN0_TX2_CMD
#define CAN_CanIP__TX2_DH CYREG_CAN0_TX2_DH
#define CAN_CanIP__TX2_DL CYREG_CAN0_TX2_DL
#define CAN_CanIP__TX2_ID CYREG_CAN0_TX2_ID
#define CAN_CanIP__TX3_CMD CYREG_CAN0_TX3_CMD
#define CAN_CanIP__TX3_DH CYREG_CAN0_TX3_DH
#define CAN_CanIP__TX3_DL CYREG_CAN0_TX3_DL
#define CAN_CanIP__TX3_ID CYREG_CAN0_TX3_ID
#define CAN_CanIP__TX4_CMD CYREG_CAN0_TX4_CMD
#define CAN_CanIP__TX4_DH CYREG_CAN0_TX4_DH
#define CAN_CanIP__TX4_DL CYREG_CAN0_TX4_DL
#define CAN_CanIP__TX4_ID CYREG_CAN0_TX4_ID
#define CAN_CanIP__TX5_CMD CYREG_CAN0_TX5_CMD
#define CAN_CanIP__TX5_DH CYREG_CAN0_TX5_DH
#define CAN_CanIP__TX5_DL CYREG_CAN0_TX5_DL
#define CAN_CanIP__TX5_ID CYREG_CAN0_TX5_ID
#define CAN_CanIP__TX6_CMD CYREG_CAN0_TX6_CMD
#define CAN_CanIP__TX6_DH CYREG_CAN0_TX6_DH
#define CAN_CanIP__TX6_DL CYREG_CAN0_TX6_DL
#define CAN_CanIP__TX6_ID CYREG_CAN0_TX6_ID
#define CAN_CanIP__TX7_CMD CYREG_CAN0_TX7_CMD
#define CAN_CanIP__TX7_DH CYREG_CAN0_TX7_DH
#define CAN_CanIP__TX7_DL CYREG_CAN0_TX7_DL
#define CAN_CanIP__TX7_ID CYREG_CAN0_TX7_ID

/* CAN_isr */
#define CAN_isr__ES2_PATCH 0u
#define CAN_isr__INTC_CLR_EN_REG CYREG_INTC_CLR_EN2
#define CAN_isr__INTC_CLR_PD_REG CYREG_INTC_CLR_PD2
#define CAN_isr__INTC_MASK 0x01u
#define CAN_isr__INTC_NUMBER 16u
#define CAN_isr__INTC_PRIOR_NUM 7u
#define CAN_isr__INTC_PRIOR_REG CYREG_INTC_PRIOR16
#define CAN_isr__INTC_SET_EN_REG CYREG_INTC_SET_EN2
#define CAN_isr__INTC_SET_PD_REG CYREG_INTC_SET_PD2
#define CAN_isr__INTC_VECT (CYREG_INTC_VECT_MBASE+0x20u)

/* LCD_LCDPort */
#define LCD_LCDPort__0__INTTYPE CYREG_PICU2_INTTYPE0
#define LCD_LCDPort__0__MASK 0x01u
#define LCD_LCDPort__0__PC CYREG_PRT2_PC0
#define LCD_LCDPort__0__PORT 2u
#define LCD_LCDPort__0__SHIFT 0
#define LCD_LCDPort__1__INTTYPE CYREG_PICU2_INTTYPE1
#define LCD_LCDPort__1__MASK 0x02u
#define LCD_LCDPort__1__PC CYREG_PRT2_PC1
#define LCD_LCDPort__1__PORT 2u
#define LCD_LCDPort__1__SHIFT 1
#define LCD_LCDPort__2__INTTYPE CYREG_PICU2_INTTYPE2
#define LCD_LCDPort__2__MASK 0x04u
#define LCD_LCDPort__2__PC CYREG_PRT2_PC2
#define LCD_LCDPort__2__PORT 2u
#define LCD_LCDPort__2__SHIFT 2
#define LCD_LCDPort__3__INTTYPE CYREG_PICU2_INTTYPE3
#define LCD_LCDPort__3__MASK 0x08u
#define LCD_LCDPort__3__PC CYREG_PRT2_PC3
#define LCD_LCDPort__3__PORT 2u
#define LCD_LCDPort__3__SHIFT 3
#define LCD_LCDPort__4__INTTYPE CYREG_PICU2_INTTYPE4
#define LCD_LCDPort__4__MASK 0x10u
#define LCD_LCDPort__4__PC CYREG_PRT2_PC4
#define LCD_LCDPort__4__PORT 2u
#define LCD_LCDPort__4__SHIFT 4
#define LCD_LCDPort__5__INTTYPE CYREG_PICU2_INTTYPE5
#define LCD_LCDPort__5__MASK 0x20u
#define LCD_LCDPort__5__PC CYREG_PRT2_PC5
#define LCD_LCDPort__5__PORT 2u
#define LCD_LCDPort__5__SHIFT 5
#define LCD_LCDPort__6__INTTYPE CYREG_PICU2_INTTYPE6
#define LCD_LCDPort__6__MASK 0x40u
#define LCD_LCDPort__6__PC CYREG_PRT2_PC6
#define LCD_LCDPort__6__PORT 2u
#define LCD_LCDPort__6__SHIFT 6
#define LCD_LCDPort__AG CYREG_PRT2_AG
#define LCD_LCDPort__AMUX CYREG_PRT2_AMUX
#define LCD_LCDPort__BIE CYREG_PRT2_BIE
#define LCD_LCDPort__BIT_MASK CYREG_PRT2_BIT_MASK
#define LCD_LCDPort__BYP CYREG_PRT2_BYP
#define LCD_LCDPort__CTL CYREG_PRT2_CTL
#define LCD_LCDPort__DM0 CYREG_PRT2_DM0
#define LCD_LCDPort__DM1 CYREG_PRT2_DM1
#define LCD_LCDPort__DM2 CYREG_PRT2_DM2
#define LCD_LCDPort__DR CYREG_PRT2_DR
#define LCD_LCDPort__INP_DIS CYREG_PRT2_INP_DIS
#define LCD_LCDPort__INTTYPE_BASE CYDEV_PICU_INTTYPE_PICU2_BASE
#define LCD_LCDPort__LCD_COM_SEG CYREG_PRT2_LCD_COM_SEG
#define LCD_LCDPort__LCD_EN CYREG_PRT2_LCD_EN
#define LCD_LCDPort__MASK 0x7Fu
#define LCD_LCDPort__PORT 2u
#define LCD_LCDPort__PRT CYREG_PRT2_PRT
#define LCD_LCDPort__PRTDSI__CAPS_SEL CYREG_PRT2_CAPS_SEL
#define LCD_LCDPort__PRTDSI__DBL_SYNC_IN CYREG_PRT2_DBL_SYNC_IN
#define LCD_LCDPort__PRTDSI__OE_SEL0 CYREG_PRT2_OE_SEL0
#define LCD_LCDPort__PRTDSI__OE_SEL1 CYREG_PRT2_OE_SEL1
#define LCD_LCDPort__PRTDSI__OUT_SEL0 CYREG_PRT2_OUT_SEL0
#define LCD_LCDPort__PRTDSI__OUT_SEL1 CYREG_PRT2_OUT_SEL1
#define LCD_LCDPort__PRTDSI__SYNC_OUT CYREG_PRT2_SYNC_OUT
#define LCD_LCDPort__PS CYREG_PRT2_PS
#define LCD_LCDPort__SHIFT 0
#define LCD_LCDPort__SLW CYREG_PRT2_SLW

/* Miscellaneous */
#define BCLK__BUS_CLK__HZ 24000000U
#define BCLK__BUS_CLK__KHZ 24000U
#define BCLK__BUS_CLK__MHZ 24U
#define CY_PROJECT_NAME "CAN_Full_Example01"
#define CY_VERSION "PSoC Creator  3.3 SP1"
#define CYDEV_CHIP_DIE_LEOPARD 1u
#define CYDEV_CHIP_DIE_PANTHER 18u
#define CYDEV_CHIP_DIE_PSOC4A 10u
#define CYDEV_CHIP_DIE_PSOC5LP 17u
#define CYDEV_CHIP_DIE_TMA4 2u
#define CYDEV_CHIP_DIE_UNKNOWN 0u
#define CYDEV_CHIP_FAMILY_PSOC3 1u
#define CYDEV_CHIP_FAMILY_PSOC4 2u
#define CYDEV_CHIP_FAMILY_PSOC5 3u
#define CYDEV_CHIP_FAMILY_UNKNOWN 0u
#define CYDEV_CHIP_FAMILY_USED CYDEV_CHIP_FAMILY_PSOC3
#define CYDEV_CHIP_JTAG_ID 0x1E028069u
#define CYDEV_CHIP_MEMBER_3A 1u
#define CYDEV_CHIP_MEMBER_4A 10u
#define CYDEV_CHIP_MEMBER_4C 15u
#define CYDEV_CHIP_MEMBER_4D 6u
#define CYDEV_CHIP_MEMBER_4E 4u
#define CYDEV_CHIP_MEMBER_4F 11u
#define CYDEV_CHIP_MEMBER_4G 2u
#define CYDEV_CHIP_MEMBER_4H 9u
#define CYDEV_CHIP_MEMBER_4I 14u
#define CYDEV_CHIP_MEMBER_4J 7u
#define CYDEV_CHIP_MEMBER_4K 8u
#define CYDEV_CHIP_MEMBER_4L 13u
#define CYDEV_CHIP_MEMBER_4M 12u
#define CYDEV_CHIP_MEMBER_4N 5u
#define CYDEV_CHIP_MEMBER_4U 3u
#define CYDEV_CHIP_MEMBER_5A 17u
#define CYDEV_CHIP_MEMBER_5B 16u
#define CYDEV_CHIP_MEMBER_UNKNOWN 0u
#define CYDEV_CHIP_MEMBER_USED CYDEV_CHIP_MEMBER_3A
#define CYDEV_CHIP_DIE_EXPECT CYDEV_CHIP_MEMBER_USED
#define CYDEV_CHIP_DIE_ACTUAL CYDEV_CHIP_DIE_EXPECT
#define CYDEV_CHIP_REV_LEOPARD_ES1 0u
#define CYDEV_CHIP_REV_LEOPARD_ES2 1u
#define CYDEV_CHIP_REV_LEOPARD_ES3 3u
#define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3u
#define CYDEV_CHIP_REV_PANTHER_ES0 0u
#define CYDEV_CHIP_REV_PANTHER_ES1 1u
#define CYDEV_CHIP_REV_PANTHER_PRODUCTION 1u
#define CYDEV_CHIP_REV_PSOC4A_ES0 17u
#define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17u
#define CYDEV_CHIP_REV_PSOC5LP_ES0 0u
#define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0u
#define CYDEV_CHIP_REV_TMA4_ES 17u
#define CYDEV_CHIP_REV_TMA4_ES2 33u
#define CYDEV_CHIP_REV_TMA4_PRODUCTION 17u
#define CYDEV_CHIP_REVISION_3A_ES1 0u
#define CYDEV_CHIP_REVISION_3A_ES2 1u
#define CYDEV_CHIP_REVISION_3A_ES3 3u
#define CYDEV_CHIP_REVISION_3A_PRODUCTION 3u
#define CYDEV_CHIP_REVISION_4A_ES0 17u
#define CYDEV_CHIP_REVISION_4A_PRODUCTION 17u
#define CYDEV_CHIP_REVISION_4C_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4D_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4E_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4F_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0u
#define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0u
#define CYDEV_CHIP_REVISION_4G_ES 17u
#define CYDEV_CHIP_REVISION_4G_ES2 33u
#define CYDEV_CHIP_REVISION_4G_PRODUCTION 17u
#define CYDEV_CHIP_REVISION_4H_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4I_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4J_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4K_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4L_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4M_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4N_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_4U_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_5A_ES0 0u
#define CYDEV_CHIP_REVISION_5A_ES1 1u
#define CYDEV_CHIP_REVISION_5A_PRODUCTION 1u
#define CYDEV_CHIP_REVISION_5B_ES0 0u
#define CYDEV_CHIP_REVISION_5B_PRODUCTION 0u
#define CYDEV_CHIP_REVISION_USED CYDEV_CHIP_REVISION_3A_PRODUCTION
#define CYDEV_CHIP_REV_EXPECT CYDEV_CHIP_REVISION_USED
#define CYDEV_CONFIG_FASTBOOT_ENABLED 1
#define CYDEV_CONFIG_UNUSED_IO_AllowButWarn 0
#define CYDEV_CONFIG_UNUSED_IO CYDEV_CONFIG_UNUSED_IO_AllowButWarn
#define CYDEV_CONFIG_UNUSED_IO_AllowWithInfo 1
#define CYDEV_CONFIG_UNUSED_IO_Disallowed 2
#define CYDEV_CONFIGURATION_CLEAR_SRAM 1
#define CYDEV_CONFIGURATION_COMPRESSED 1
#define CYDEV_CONFIGURATION_DMA 0
#define CYDEV_CONFIGURATION_ECC 1
#define CYDEV_CONFIGURATION_IMOENABLED CYDEV_CONFIG_FASTBOOT_ENABLED
#define CYDEV_CONFIGURATION_MODE_COMPRESSED 0
#define CYDEV_CONFIGURATION_MODE CYDEV_CONFIGURATION_MODE_COMPRESSED
#define CYDEV_CONFIGURATION_MODE_DMA 2
#define CYDEV_CONFIGURATION_MODE_UNCOMPRESSED 1
#define CYDEV_DEBUG_ENABLE_MASK 0x01u
#define CYDEV_DEBUG_ENABLE_REGISTER CYREG_MLOGIC_DEBUG
#define CYDEV_DEBUGGING_DPS_Disable 3
#define CYDEV_DEBUGGING_DPS_JTAG_4 1
#define CYDEV_DEBUGGING_DPS_JTAG_5 0
#define CYDEV_DEBUGGING_DPS_SWD 2
#define CYDEV_DEBUGGING_DPS_SWD_SWV 6
#define CYDEV_DEBUGGING_DPS CYDEV_DEBUGGING_DPS_SWD_SWV
#define CYDEV_DEBUGGING_ENABLE 1
#define CYDEV_DEBUGGING_XRES 0
#define CYDEV_DMA_CHANNELS_AVAILABLE 24u
#define CYDEV_ECC_ENABLE 0
#define CYDEV_INSTRUCT_CACHE_ENABLED 1
#define CYDEV_INTR_RISING 0x00000000u
#define CYDEV_IS_EXPORTING_CODE 0
#define CYDEV_IS_IMPORTING_CODE 0
#define CYDEV_PROJ_TYPE 0
#define CYDEV_PROJ_TYPE_BOOTLOADER 1
#define CYDEV_PROJ_TYPE_LAUNCHER 5
#define CYDEV_PROJ_TYPE_LOADABLE 2
#define CYDEV_PROJ_TYPE_LOADABLEANDBOOTLOADER 4
#define CYDEV_PROJ_TYPE_MULTIAPPBOOTLOADER 3
#define CYDEV_PROJ_TYPE_STANDARD 0
#define CYDEV_PROTECTION_ENABLE 0
#define CYDEV_VARIABLE_VDDA 0
#define CYDEV_VDDA 3.3
#define CYDEV_VDDA_MV 3300
#define CYDEV_VDDD 3.3
#define CYDEV_VDDD_MV 3300
#define CYDEV_VDDIO0 3.3
#define CYDEV_VDDIO0_MV 3300
#define CYDEV_VDDIO1 3.3
#define CYDEV_VDDIO1_MV 3300
#define CYDEV_VDDIO2 3.3
#define CYDEV_VDDIO2_MV 3300
#define CYDEV_VDDIO3 3.3
#define CYDEV_VDDIO3_MV 3300
#define CYDEV_VIO0 3.3
#define CYDEV_VIO0_MV 3300
#define CYDEV_VIO1 3.3
#define CYDEV_VIO1_MV 3300
#define CYDEV_VIO2 3.3
#define CYDEV_VIO2_MV 3300
#define CYDEV_VIO3 3.3
#define CYDEV_VIO3_MV 3300
#define CYIPBLOCK_DP8051_VERSION 0
#define CYIPBLOCK_P3_ANAIF_VERSION 0
#define CYIPBLOCK_P3_CAN_VERSION 0
#define CYIPBLOCK_P3_CAPSENSE_VERSION 0
#define CYIPBLOCK_P3_COMP_VERSION 0
#define CYIPBLOCK_P3_DECIMATOR_VERSION 0
#define CYIPBLOCK_P3_DFB_VERSION 0
#define CYIPBLOCK_P3_DMA_VERSION 0
#define CYIPBLOCK_P3_DRQ_VERSION 0
#define CYIPBLOCK_P3_DSM_VERSION 0
#define CYIPBLOCK_P3_EMIF_VERSION 0
#define CYIPBLOCK_P3_I2C_VERSION 0
#define CYIPBLOCK_P3_LCD_VERSION 0
#define CYIPBLOCK_P3_LPF_VERSION 0
#define CYIPBLOCK_P3_OPAMP_VERSION 0
#define CYIPBLOCK_P3_PM_VERSION 0
#define CYIPBLOCK_P3_SCCT_VERSION 0
#define CYIPBLOCK_P3_TIMER_VERSION 0
#define CYIPBLOCK_P3_USB_VERSION 0
#define CYIPBLOCK_P3_VIDAC_VERSION 0
#define CYIPBLOCK_P3_VREF_VERSION 0
#define CYIPBLOCK_S8_GPIO_VERSION 0
#define CYIPBLOCK_S8_IRQ_VERSION 0
#define CYIPBLOCK_S8_SIO_VERSION 0
#define CYIPBLOCK_S8_UDB_VERSION 0
#define DMA_CHANNELS_USED__MASK0 0x00000000u
#define CYDEV_BOOTLOADER_ENABLE 0

#endif /* INCLUDED_CYFITTER_H */
