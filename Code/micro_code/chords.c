#include "chords.h"

static void delay_milliseconds(int millisecs)//delay for amount of time in seconds
{
	_CP0_SET_COUNT(0);
	while (_CP0_GET_COUNT() < (millisecs*40000)) //number of seconds to delay times 40 000 clock ticks (1 millisec) 
	{
		;
		// _nop();
		// NU32_WriteUART3("Here");  //debug
	}

}

void play_chord(char* chord, unsigned int millisecs) //Passed chord Macro and sets appropriate bits in LATB
{
	int hex_chord = 0x0000;
	 switch(*chord) 
	 {
      case 'G' : //B4,B6 and B9
         hex_chord = 0x0250;
         break;
      case 'C' : //B8
	     hex_chord = 0x0100;
         break;
      case 'D' : //B5, B6 and B7
         hex_chord = 0x00E0;
         break;
      case 'Em' : //B4, B9 and B14
         hex_chord = 0x4210;
         break;
      case 'Am' : //B7
         hex_chord = 0x0080;
         break;
      case 'F' : //B1 and B7
         hex_chord = 0x0082;
         break;
      case 'A' : //B2 and B7
	     hex_chord = 0x0084;
         break;
      case 'Bm' : //B4, B5, B6 and B11
         hex_chord = 0x0870;
         break;
      case 'E' : //B3, B4 and B10
         hex_chord = 0x0418;
         break;
      case 'Dm' : //B1, B6 and B7
         hex_chord = 0x00C2;
         break;
      case 'Fshm' : //B2, B5 and B7
         hex_chord = 0x00A4;
         break;
      case 'B' : //B4, B5, B10 and B15
	     hex_chord = 0x8430;
         break;
      case 'Ash' : //B0, B1, B6 and B11
         hex_chord = 0x0843;
         break;
      case 'Cshm' : //B3, B8, B9 and B10
         hex_chord = 0x0708;
         break;
      case 'Fsh' : //B0, B2, B5 and B11
         hex_chord = 0x0825;
         break;
      case 'Abm' : //B3, B4, B10 and B13
         hex_chord = 0x2418;
         break;
      case 'Gm' : //B0, B6 and B9
         hex_chord = 0x0241;
         break;
      case 'B7' : //B4, B5, B7 and B10
         hex_chord = 0x04B0;
         break;
      case 'E7' : //B3, B4 and B6
         hex_chord = 0x0058;
         break;
      case 'A7' : //B2
         hex_chord = 0x0004;
         break;
      case 'D7' : //B5, B6, B7 and B8
         hex_chord = 0x01E0;
         break;
      case 'G7' : //B1, B4 and B6
         hex_chord = 0x0052;
         break;
      case 'Csh' : //B1, B2, B3 and B8
         hex_chord = 0x010E;
         break;
	  case 'Am7' :
         hex_chord = 0x0000;
         break;
      case 'Em7' : //B4 and B6
         hex_chord = 0x0050;
         break;
      default :
         hex_chord = 0x0000;
         break;
    }
	LATB = hex_chord;
	delay_milliseconds(millisecs);
	LATB = 0x0000;
}

void starter_light(void)
{
   LATDbits.LATD10 = 1;
   delay_milliseconds(1000);
   LATDbits.LATD10 = 0;
   delay_milliseconds(500);
   LATDbits.LATD10 = 1;
   delay_milliseconds(1000);
   LATDbits.LATD10 = 0;
   delay_milliseconds(500);
   LATDbits.LATD10 = 1;
   delay_milliseconds(1000);
   LATDbits.LATD10 = 0;
   delay_milliseconds(500);
}

void strum_light(void)
{
   LATDbits.LATD10 = 1;
   delay_milliseconds(200);
   LATDbits.LATD10 = 0;
}