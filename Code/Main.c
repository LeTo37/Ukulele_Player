#include "chords.h"  
#include <string.h>
#include <stdio.h>

char read_file(void);

int main(void) {
  char song[100];
  int chord_counter = 0;
  char chords[100];
  int seconds[100];
  int i = 0;
  char debugprint[100];

  const char* split = ",";
  char* token;
  unsigned int ch_or_sec = 0; //bool type int to flag whether input is chord or seconds.

  NU32_Startup(); // cache on, min flash wait, interrupts on, LED/button init, UART init
  //DIO setup:
  TRISB = 0x0000;         // set B0-B15 as digital outputs

  while(1)
  {
    LATB = 0x0000;
  	

    song = read_file();

    token = strtok(song,split);
    while (token != NULL)
    {
    	if (ch_or_sec == 0)
    	{
	    	chords[chord_counter] = *token;
	    	ch_or_sec = 1;
	    }
	    else if (ch_or_sec == 1)
    	{
	    	seconds[chord_counter] = (int)(*token)-48;
	    	chord_counter++;
	    	ch_or_sec = 0;
	    }

	   	token = strtok(NULL, ",");
    }

     for(i=0; i < chord_counter; i++ )
     {
     	play_chord(chords[i], seconds[i]);
      sprintf(debugprint,"Chord: %c \r\n",chords[i]);
      NU32_WriteUART3(debugprint);
      sprintf(debugprint,"seconds: %d \r\n",seconds[i]);
      NU32_WriteUART3(debugprint);
     }
  }

  return 0;
}

char read_file(void)
{
  
}