#include <project.h>
#include "Uart.h"

int main()
{
    //CyGlobalIntEnable; /* Enable global interrupts. */
    
    int i = 0;
    
    int func = 3;
    double time = 4;
    double torque = 2;
    
    char string[] = {func, time, torque};
    
    InitUart();
    
    ReceiveUARTData();

    for(;;)
    { 
        while(i<15)
           {
           SendUARTData(string);
           i++;
           }
        i = 0;
    }
}
