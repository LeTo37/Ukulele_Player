#ifndef CHORDS_H
#define CHORDS_H //Include guard

#include "NU32.h"

//List of Chords to be played in hex format.
// #define G 0x0250 
// #define C 0x0100 
// #define D 0x00E0 
// #define Em 0x4210 
// #define Am 0x0080 
// #define F 0x0082
// #define A 0x0084
// #define Bm 0x0870 
// #define E 0x0418
// #define Dm 0x00C2
// #define Fshm 0x00A4
// #define B 0x8430
// #define Ash 0x0843
// #define Cshm 0x0708
// #define Fsh 0x0825 
// #define Abm 0x2418
// #define Gm 0x0241
// #define B7 0x04B0
// #define E7 0x0058
// #define A7 0x0004 
// #define D7 0x01E0
// #define G7 0x0052
// #define Csh 0x010E
// #define Am7 0x0000
// #define Em7 0x0050 



//Function Declarations
// void delay_seconds(int secs); //delay for amount of time in seconds
void play_chord(char* chord, unsigned int secs); //Passed chord Macro and sets appropriate bits in LATB

#endif