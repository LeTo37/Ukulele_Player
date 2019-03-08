#include "chords.h"  
#include <string.h>
#include <stdio.h>

#define SONG_LENGTH 1000

int main(void) {
  int chord_counter = 0;
  char chords[100][4];
  int seconds[100];
  int i = 0;
  char debugprint[100];
  char song[SONG_LENGTH];

  const char* split = ",";
  char* token;
  unsigned int ch_or_sec = 0; //bool type int to flag whether input is chord or seconds.

  NU32_Startup(); // cache on, min flash wait, interrupts on, LED/button init, UART init
  //DIO setup:
  TRISB = 0x0000;         // set B0-B15 as digital outputs
  NU32_WriteUART3("Let's Go!\r\n");
  while(1)
  {
    LATB = 0x0000;
    NU32_ReadUART3(song, SONG_LENGTH);
    // NU32_WriteUART3("Playing song:\r\n");
    
    token = strtok(song,split);
    while (token != NULL)
    {
    	if (ch_or_sec == 0)
    	{
	    	strcpy(chords[chord_counter],token);
	    	ch_or_sec = 1;
        // sprintf(debugprint,"HosJy: %s \r\n",chords[chord_counter]);
        // NU32_WriteUART3(debugprint);
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
      sprintf(debugprint,"Chord: %s \r\n",chords[i]);
      NU32_WriteUART3(debugprint);
      sprintf(debugprint,"seconds: %d \r\n",seconds[i]);
      NU32_WriteUART3(debugprint);
     }
     if (i == chord_counter && i != 0)
     {
       chord_counter = 0;
       NU32_LED1 = !NU32_LED1;
       NU32_WriteUART3("Done!\r\n");
     }

  }

  return 0;
}
