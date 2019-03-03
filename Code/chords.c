#include "chords.h"

//DIO setup:
TRISB = 0x0000;         // set B0-B15 as digital outputs

void delay_seconds(unsigned int secs)//delay for amount of time in seconds
{
	static volatile int timecheck = _CP0_GET_COUNT();
	while ((_CP0_GET_COUNT() - timecheck) < (secs*40000000)) //number of seconds to delay times 40000000 clock ticks (1 sec) 
	{
		_nop();
	}

}

void play_chord(unsigned int)
{

}
