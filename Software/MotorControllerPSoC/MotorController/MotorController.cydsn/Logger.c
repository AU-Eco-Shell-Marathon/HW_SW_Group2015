#include <Logger.h>

char cellSeparator_ = ';';
char lineSepartor_ = '\n';

char logFileName_[] = "log.txt";
char dataFileName_[] = "data.csv";

FS_FILE* logFile_;
FS_FILE* dataFile_;

void Logger_Init(void)
{
    FS_Init();
    
    char sdVolName[10];
    
    /* Get volume name of SD card #0 */
    if(0 != FS_GetVolumeName(0u, &sdVolName[0], 9u))
    {
        /* Getting volume name succeeded so prompt it on the LCD */
        
    }
    else
    {
        /* Operation Failed - indicate this */
        
    }
    
    
    //Not sure if we want to format the card
    if(0 == FS_FormatSD(sdVolName))
    {
        
    }
    else
    {
        
    }
    
    
    //Check the behavior if file allready existss
    if(0 == FS_MkDir("Dir"))
    {
        
    }
    else
    {
        
    }
    
    //TODO Check if file exists allready and then open another file
    //Open files
    logFile_ = FS_FOpen(logFileName_, "w");
    
    dataFile_ = FS_FOpen(dataFileName_, "w");
    //TODO Write headers
}

void Logger_Write(char* str)
{
    if(logFile_)
    {
        if(0 != FS_Write(logFile_, str, strlen(str))) 
        {
            /* Inditate that data was written to a file */
        }
        else
        {
            
        }
        
    }
}

void Logger_LogData(int argc,...)
{
    if(dataFile_)
    {
        va_list valist;
        int i;
        int count;
        char buff[100];
        
        va_start(valist, argc);
        
        for(i = 0; i < argc; i++)
        {
            //TODO Check for errors
            FS_Write(dataFile_, &cellSeparator_, 1);
            count = sprintf(buff, "%d", va_arg(valist, int));
            FS_Write(dataFile_, buff, count);
            FS_Write(dataFile_, &lineSepartor_, 1);
        }
    }
}

void Logger_Exit(void)
{
    if(dataFile_)
    {
        if(0 == FS_FClose(dataFile_))
        {
            
        }
        else
        {
            
        }
    }
    
    if(logFile_)
    {
        if(0 == FS_FClose(logFile_))
        {
            
        }
        else
        {
            
        }
    }
}