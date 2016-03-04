#include <project.h>
#include "Uart.h"

uint8_t buf[250] = {0};
uint8 buf_n = 0;

char isReadyToSend = 0;

char string[] = "dummy\n";
char handshake[] = "0 RollingRoad\n";
char torque[20];
char modtaget[64];

void InitUart(void)
{
    USBUART_1_Start(0, USBUART_1_5V_OPERATION);
    CheckConnection();
}

void CheckConnection(void)
{
    if(USBUART_1_IsConfigurationChanged() == 0)
        return;
    if(USBUART_1_GetConfiguration() == 0)
        return;
    USBUART_1_CDC_Init();  
}

void ReceiveUARTData(void)
{
    CheckConnection();
    
    if(USBUART_1_GetConfiguration() == 0)
        return;
    
    if( USBUART_1_DataIsReady() == 0)
        return;
    
    USBUART_1_GetAll(buf);
    if(buf_n==0 && ( buf[0]>='0' && buf[0] <='4'))
    {
        if(buf[0]=='0') // Handshake
        { 
            if(strncmp((char*)buf, handshake, sizeof(handshake))==0)
            {
	            SendUART(handshake);
                CyDelay(1);
                SendUART("1 0 Time ms\n");
                CyDelay(1);
                SendUART("1 1 Torque Nm\n");
                isReadyToSend = 1;
               // CyDelay(100);
               // SendData((uint8*)"1 2 Voltage Volt\n");
            }
        }
        
        else if(buf[0]=='2') // Stop
        {
            buf[buf_n+1]=0;
            if(strcmp((char*)buf, "2\n")==0)
            {
                isReadyToSend = 0;
                return;
            }
        }
        else if(buf[0]=='4') //modtag moment fra PC
        {
            
            double moment = 0;
            buf[buf_n+1]=0;
            moment = (double)atoi((char*)buf);            //Fjern udkommentering når det kopieres over
			update(NULL, &moment, 0)

        }
        
    }
}

void SendUART (char *Pdata)
{
    while(USBUART_1_CDCIsReady() == 0);
    USBUART_1_PutString((char*)Pdata);
}

void SendData (struct data* Data)
{
    if(isReadyToSend == 0)
        return;
    char buf[500];
    sprintf(buf, "3 %lu %f\n", Data->time_ms, Data->Moment.avg);
    SendUART(buf);
}

/* [] END OF FILE */
