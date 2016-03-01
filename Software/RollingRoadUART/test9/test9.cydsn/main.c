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
#include <project.h>
#include <Uart.h>


int main()
{
    //CyGlobalIntEnable; /* Enable global interrupts. */
    
    int i = 0;
    
    int func = 3;
    double time = 4;
    double torque = 2;
    
    char string[] = {func, time, torque};
    
    InitUart();
    
    ReceiveData();

    for(;;)
    { 
        while(i<15)
           {
           SendData(string);
           i++;
           }
        i = 0;
    }
    
}

/* [] END OF FILE */
