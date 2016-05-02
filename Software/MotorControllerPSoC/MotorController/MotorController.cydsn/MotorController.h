#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include <project.h>
#include "PID.h"
#include "Sensor.h"
#include "Motor_lookupTable.h"
#include "Horn.h"


void MC_stop();
void MC_start();
void MC_init(const uint8 * speed, const uint16 * rpm, const uint16 * current,const uint16 * volt, const struct PIDparameter * pidval);
void MC_ChangePID(const struct PIDparameter * pidval);

#endif