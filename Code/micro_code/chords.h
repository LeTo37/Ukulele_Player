#ifndef CHORDS_H
#define CHORDS_H //Include guard

#include "NU32.h"

//List of Chords to be played in hex format.
#define G 0x0250 //B4,B6 and B9
#define C 0x0100 //B8
#define D 0x00E0 //B5, B6 and B7
#define Em 0x4210 //B4, B9 and B14
#define Am 0x0080 //B7
#define F 0x0082 //B1 and B7
#define A 0x0084 //B2 and B7
#define Bm 0x0870 //B4, B5, B6 and B11
#define E 0x0418//B3, B4 and B10
#define Dm 0x00C2 //B1, B6 and B7
#define Fshm 0x00A4 //B2, B5 and B7
#define B 0x8430 //B4, B5, B10 and B15
#define Ash 0x0843 //B0, B1, B6 and B11
#define Cshm 0x0708 //B3, B8, B9 and B10
#define Fsh 0x0825 //B0, B2, B5 and B11
#define Abm 0x2418 //B3, B4, B10 and B13
#define Gm 0x0241 //B0, B6 and B9
#define B7 0x04B0 //B4, B5, B7 and B10
#define E7 0x0058 //B3, B4 and B6
#define A7 0x0004 //B2
#define D7 0x01E0 //B5, B6, B7 and B8
#define G7 0x0052 //B1, B4 and B6
#define Csh 0x010E //B1, B2, B3 and B8
#define Am7 0x0000
#define Em7 0x0050 //B4 and B6



//Function Declarations
void delay_seconds(int secs); //delay for amount of time in seconds
void play_chord(unsigned int chord, unsigned int secs); //Passed chord Macro and sets appropriate bits in LATB

#endif