#include "chords.h"

void delay_seconds(int secs)//delay for amount of time in seconds
{
	_CP0_SET_COUNT(0);
	while (_CP0_GET_COUNT() < (secs*40000000)) //number of seconds to delay times 40000000 clock ticks (1 sec) 
	{
		;
		// _nop();
		// NU32_WriteUART3("Here");
	}

}

void play_chord(unsigned int chord, unsigned int secs) //Passed chord Macro and sets appropriate bits in LATB
{
	LATB = chord;
	delay_seconds(secs);
	LATB = 0x0000;
}
