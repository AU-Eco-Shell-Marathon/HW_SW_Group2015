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
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <project.h>

char string[] = "dummy\n";
char handshake[] = "0 RollingRoad\n";
char stop[] = "2\n";
char torque[20];
char modtaget[64];

unsigned char *p;




//Functions

void InitUart(void);
void ReceiveData(void);
void SendData(uint8 *Pdata);

/* [] END OF FILE */
