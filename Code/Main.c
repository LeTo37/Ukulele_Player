#include "chords.h"  
#include <string.h>
#include <stdio.h>

int main(void) {
  char song[100];
  unsigned int chord_counter = 0;
  char chords[100];
  unsigned int seconds[100];

  const char split = ",";
  char* token;
  unsigned int ch_or_sec = 0; //bool type int to flag whether input is chord or seconds.

  NU32_Startup(); // cache on, min flash wait, interrupts on, LED/button init, UART init
  

  while(1)
  {
  	NU32_WriteUART3("Please Enter song in the following format: \r\n");
  	NU32_WriteUART3("Chord,seconds,chord,seconds,chord,seconds,...\r\n");
    NU32_ReadUART3(song, 100);
    token = strtok(song,split);
    while (token != NULL)
    {
    	if (ch_or_sec == 0)
    	{
	    	chords[chord_counter] = token;
	    	ch_or_sec = 1;
	    }
	    else if (ch_or_sec == 1)
    	{
	    	chords[chord_counter] = token;
	    	chord_counter++;
	    	ch_or_sec = 0;
	    }

	   	token = strtok(NULL, ",");
    }

     for(int i = 0; i < chord_counter; i++ )
     {
     	play_chord(chords[i], seconds[i]);
     }
  }

  return 0;
}

