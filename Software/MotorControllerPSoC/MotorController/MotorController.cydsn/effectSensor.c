/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "effectSensor.h"

uint16 Current_temp = 0;
uint16 Volt_temp = 0;

void DMA_ADC_A_V_init();

CY_ISR_PROTO(ISR_AMP);

CY_ISR_PROTO(ISR_VOLT);

uint16 y_Current = 0;
uint16 y_Volt = 0;

uint8 a = 127; // fra 0 til 255!

CY_ISR(ISR_AMP)
{
    y_Current = (uint16)(((uint32)a*(uint32)Current_temp + (uint32)(0xFF-a)*(uint32)y_Current)>>8);
}


CY_ISR(ISR_VOLT)
{
    y_Volt = (uint16)(((uint32)a*(uint32)Volt_temp + (uint32)(0xFF-a)*(uint32)y_Volt)>>8);
}

void effectSensor_init()
{
    PGA_1_Start();
    
    ADC_A_Start();
    ADC_V_Start();
    ADC_A_StartConvert();
    ADC_V_StartConvert();
    
    isr_A_StartEx(ISR_AMP);
    isr_V_StartEx(ISR_VOLT);
    
    
    DMA_ADC_A_V_init();
}

#define effect_sensor_OFFSET 5000 //mV

uint16 effectSensor_getValue()
{
    int16 rawVolt = ADC_V_CountsTo_mVolts(y_Volt);
    int16 rawCurrent = ADC_A_CountsTo_mVolts(y_Current);
    
    uint32 volt = (rawVolt <= (int16)effect_sensor_OFFSET ? 0u : rawVolt - (uint32)effect_sensor_OFFSET)*15.625;//*15.625)/1000; skal trække minus 5 volt fra!!!
    uint32 current = (rawCurrent <= (int16)effect_sensor_OFFSET ? 0u : rawCurrent - (uint32)effect_sensor_OFFSET)*3;//*3)/1000;
    
    return ((uint16)(((uint64)volt*(uint64)current)/100000));
}



void DMA_ADC_A_V_init()
{
    
    
    /* Defines for DMA_A */
    #define DMA_A_BYTES_PER_BURST 2
    #define DMA_A_REQUEST_PER_BURST 1
    #define DMA_A_SRC_BASE (CYDEV_PERIPH_BASE)
    #define DMA_A_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_A */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_A_Chan;
    uint8 DMA_A_TD[1];

    /* DMA Configuration for DMA_A */
    DMA_A_Chan = DMA_A_DmaInitialize(DMA_A_BYTES_PER_BURST, DMA_A_REQUEST_PER_BURST, 
        HI16(DMA_A_SRC_BASE), HI16(DMA_A_DST_BASE));
    DMA_A_TD[0] = CyDmaTdAllocate();
    CyDmaTdSetConfiguration(DMA_A_TD[0], 2, DMA_INVALID_TD, DMA_A__TD_TERMOUT_EN | TD_INC_DST_ADR);
    CyDmaTdSetAddress(DMA_A_TD[0], LO16((uint32)ADC_A_SAR_WRK0_PTR), LO16((uint32)&Current_temp));
    CyDmaChSetInitialTd(DMA_A_Chan, DMA_A_TD[0]);
    CyDmaChEnable(DMA_A_Chan, 1);

    
    // ------------------------------------------------------------------------------------------------------
    
    /* Defines for DMA_V */
    #define DMA_V_BYTES_PER_BURST 2
    #define DMA_V_REQUEST_PER_BURST 1
    #define DMA_V_SRC_BASE (CYDEV_PERIPH_BASE)
    #define DMA_V_DST_BASE (CYDEV_SRAM_BASE)

    /* Variable declarations for DMA_V */
    /* Move these variable declarations to the top of the function */
    uint8 DMA_V_Chan;
    uint8 DMA_V_TD[1];

    /* DMA Configuration for DMA_V */
    DMA_V_Chan = DMA_V_DmaInitialize(DMA_V_BYTES_PER_BURST, DMA_V_REQUEST_PER_BURST, 
        HI16(DMA_V_SRC_BASE), HI16(DMA_V_DST_BASE));
    DMA_V_TD[0] = CyDmaTdAllocate();
    CyDmaTdSetConfiguration(DMA_V_TD[0], 2, DMA_INVALID_TD, DMA_V__TD_TERMOUT_EN | TD_INC_DST_ADR);
    CyDmaTdSetAddress(DMA_V_TD[0], LO16((uint32)ADC_V_SAR_WRK0_PTR), LO16((uint32)&Volt_temp));
    CyDmaChSetInitialTd(DMA_V_Chan, DMA_V_TD[0]);
    CyDmaChEnable(DMA_V_Chan, 1);
}



/* [] END OF FILE */
