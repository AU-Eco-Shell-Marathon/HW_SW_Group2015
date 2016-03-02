#ifndef UART_H
#define UART_H

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <project.h>

extern char string[];
extern char handshake[];
extern char stop[];
extern char torque[20];
extern char modtaget[64];

//Functions
void InitUart();
void ReceiveUARTData();
void SendUARTData(char *Pdata);

#endif