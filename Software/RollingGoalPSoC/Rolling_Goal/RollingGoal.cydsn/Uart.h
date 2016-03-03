#ifndef UART_H
#define UART_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <project.h>
#include "sensor.h"

//Functions
void InitUart();
void CheckConnection(void);
void ReceiveUARTData();
void SendUART(char *Pdata);
void SendData(struct data* Data);

#endif