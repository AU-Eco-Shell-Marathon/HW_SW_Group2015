#ifndef LOGGER_H
#define LOGGER_H


#include <project.h>
#include <FS.h>
#include <string.h>
#include <Global.h>
#include <stdarg.h>
#include <stdio.h>
    
void Logger_Init(void);
void Logger_Write(char* str);
void Logger_LogData(int argc,...);
void Logger_Exit(void);

#endif