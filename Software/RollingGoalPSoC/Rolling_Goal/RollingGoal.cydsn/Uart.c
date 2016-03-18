#include <project.h>
#include "Uart.h"
#include "ControllerClass.h"
#include "PID.h"

uint8_t buf[250] = {0};
uint8 buf_n = 0;

char isReadyToSend = 0;//skal være 0 

char string[] = "dummy\n";
char handshake[] = "0 RollingRoad\n";
char torque[20];
char modtaget[64];

void InitUart(void)
{
    USBUART_1_Start(0, USBUART_1_5V_OPERATION);
    
    while(CheckConnection()==0u);
    //while(USBUART_1_DataIsReady() == 0);
    //while(USBUART_1_CDCIsReady() == 0u);

}

char CheckConnection(void)
{
    if(USBUART_1_IsConfigurationChanged() == 0)
        return 0;
    if(USBUART_1_GetConfiguration() == 0)
        return 0;
    USBUART_1_CDC_Init();  
    return 1;
}

void ReceiveUARTData(void)
{
    CheckConnection();
    
    if(USBUART_1_GetConfiguration() == 0)
        return;
    
    if( USBUART_1_DataIsReady() == 0)
        return;
    
    USBUART_1_GetAll(buf);
    if(buf_n==0 && ( buf[0]>='0' && buf[0] <='7'))
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
                CyDelay(1);
                SendUART("1 2 Voltage V\n");
                CyDelay(1);
                SendUART("1 3 Ampere A\n");
                CyDelay(1);
                SendUART("1 4 Effect J\n");
                CyDelay(1);
                SendUART("1 5 Distance m\n");
                CyDelay(1);
                SendUART("1 6 RPM m/s\n");
                CyDelay(1);
                SendUART("1 7 Effect(M) J\n");
                isReadyToSend = 1;
               // CyDelay(100);    HUSK AF OPDATER MED SENESTE PROTOKOL
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
            
            float moment = 0;
            buf[buf_n+1]=0;
            moment = atof((char*)buf);            //Fjern udkommentering når det kopieres over
			update(NULL, &moment, 0);
        }
        else if(buf[0]=='5') // PID regulations
        {
            int i = 0;
            uint8 temp = 0;
            float PID[3];
            buf[buf_n+1] = 0;
            temp = atoi(strtok((char *)buf," "));
            for(i = 0; i<3 ;i++)
            {
                PID[i] = atof(strtok((char *)buf, " "));//eventuelt bare NULL istedet for (char *)buf
            }
            struct PIDparameter PIDval = *getPID_ptr();
            
            PIDval.Kp = PID[0]; PIDval.Ki = PID[1]; PIDval.Kd = PID[2]; PIDval.valid = 1;
            
            update(&PIDval, NULL, 0);
            
        }
        else if(buf[0]=='6') // calibrate
        {
            //calibrate();//skal fjernes
            buf[buf_n+1]=0;
            
            if(strcmp((char*)buf, "6\n")==0)
            {
               calibrate();
            }
        }
        else if(buf[0]=='7') // reset
        {
            buf[buf_n+1]=0;
            
            if(strcmp((char*)buf, "7\n")==0)
            {
               update(NULL,NULL,1);
            }
        }
        
    }
}

void SendUART (char *Pdata)
{

    while(USBUART_1_CDCIsReady() == 0u);
    USBUART_1_PutString((char*)Pdata);
    return;
}

void SendData (struct data* Data)
{
    if(isReadyToSend == 0)
        return;
    
    CheckConnection();
    
    if (USBUART_1_GetConfiguration() == 0u)
        return;
    
    if( USBUART_1_DataIsReady() != 0)
        return;

    
    char buf[100];

    sprintf(buf, "3 %lu %f %f %f %f %lu %f %f\n", Data->time_ms, Data->Moment.avg, Data->V_motor.avg, Data->A_motor.avg, Data->P_motor.avg,
    Data->distance, Data->RPM.avg, Data->P_motor.avg);// fjern \r
    SendUART(buf);


}

/* [] END OF FILE */
