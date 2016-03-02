#include <project.h>
#include "Uart.h"

uint8_t buf[250] = {0};
uint8 buf_n = 0;

char string[] = "dummy\n";
char handshake[] = "0 RollingRoad\n";
char stop[] = "2\n";
char torque[20];
char modtaget[64];

void InitUart(void)
{
    USBUART_1_Start(0, USBUART_1_5V_OPERATION);
    while(USBUART_1_GetConfiguration() == 0) {};
    USBUART_1_CDC_Init();
}

void ReceiveUARTData(void)
{
    if(USBUART_1_DataIsReady() != 0)
    {
        USBUART_1_GetData(&buf[buf_n], 1);
        if(buf_n==0 && (buf[0]=='0'||buf[0]=='1'||buf[0]=='2'||buf[0]=='3'||buf[0]=='4'))
        {
            if(buf[0]=='0' && buf_n==sizeof(handshake)) // Handshake
            { 
                buf[buf_n+1]=0;
                if(strcmp((char*)buf, handshake)==0)
                {
		            SendUARTData("0 RollingRoad\n"); 
                    CyDelay(100); 	
                    SendUARTData("1 0 Time Seconds\n"); // Disse 3 linjer burde ændres
                    CyDelay(100);                         // til at kunne ændres dynamisk
                    SendUARTData("1 1 Torque Nm\n");
                   // CyDelay(100);
                   // SendData((uint8*)"1 2 Voltage Volt\n");
                }
            }
            
            else if(buf[0]=='2' && buf_n==sizeof(stop)) // Stop
            {
                buf[buf_n+1]=0;
                if(strcmp((char*)buf, stop)==0)
                {
                    exit(1);
                }
            }
            else if(buf[0]=='4' && buf_n==(sizeof(stop)+2)) //modtag moment fra PC
            {
                buf[buf_n+1]=0;
                //Moment = atoi(buf)            //Fjern udkommentering når det kopieres over
            }
            
            else
            {
                buf_n++;
            }
        }
    }
}

void SendUARTData (char *Pdata)
{
    if(USBUART_1_CDCIsReady())
        USBUART_1_PutString((char*)Pdata);
}

/* [] END OF FILE */
