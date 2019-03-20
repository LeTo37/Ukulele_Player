#include "chords.h"  
#include <string.h>
#include <stdio.h>

#define SONG_LENGTH 10000

int main(void) {
  int chord_counter = 0;
  char chords[10000][4];
  char char_secs[10000][4];
  int seconds[10000];
  int i = 0;
  char debugprint[100];
  char song[SONG_LENGTH];

  const char* split = ",";
  char* token;
  unsigned int ch_or_sec = 0; //bool type int to flag whether input is chord or seconds.

  NU32_Startup(); // cache on, min flash wait, interrupts on, LED/button init, UART init
  //DIO setup:
  TRISB = 0x0000;         // set B0-B15 as digital outputs
  TRISDbits.TRISD10 = 0;  //set D10 as digital output (strum light)
  LATDbits.LATD10 = 0;    //light off to start
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
	    	strcpy(char_secs[chord_counter],token);
        seconds[chord_counter] = ((int)char_secs[chord_counter][0]-48)*1000;
        seconds[chord_counter] += ((int)char_secs[chord_counter][1]-48)*100;
        seconds[chord_counter] += ((int)char_secs[chord_counter][2]-48)*10;
        seconds[chord_counter] += ((int)char_secs[chord_counter][3]-48);

        sprintf(debugprint,"seconds: %d \r\n",seconds[chord_counter]);
        NU32_WriteUART3(debugprint);
	    	chord_counter++;
	    	ch_or_sec = 0;
	    }

	   	token = strtok(NULL, ",");
    }

    starter_light();

     for(i=0; i < chord_counter; i++ )
     {
      strum_light();
     	play_chord(chords[i], seconds[i]);
      // sprintf(debugprint,"Chord: %s \r\n",chords[i]);
      // NU32_WriteUART3(debugprint);
      // sprintf(debugprint,"seconds: %d \r\n",seconds[i]);
      // NU32_WriteUART3(debugprint);
     }
     if (i == chord_counter && i != 0)
     {
       chord_counter = 0;
       NU32_LED1 = !NU32_LED1;
       LATDbits.LATD10 = 0;    //light off to end
       NU32_WriteUART3("Done!\r\n");
     }

  }

  return 0;
}
