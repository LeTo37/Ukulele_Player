# Code

This repository holds all of the code necessary to use the H-RUP. 

## Microcontroller Code
This directory holds the code used to program the PIC32MX795F512H microcontroller. The purpose of this code is to read a song sent into the microcontroller by the user code and convert that into digital highs or lows such that the solenoids actuate at the correct time. This allows the H-RUP to press chords on the Ukulele in the correct sequence and timing, producing a song.

The PIC32MX795F512H code is all done in C for use with the NU32 breakout board.

## User Code
This directory holds code that defines how the user interacts with H-RUP. Included in this directory is a Python script called [Ukulele Jukebox](/Ukulele_Jukebox.py) as well as text files holding the chords and timing instructions for a few preset songs.

The protocol Ukelele Jukebox uses for reading songs is defined as `chord,milliseconds,chord,milliseconds,..`. That is to say the code reads a chord and then the amount of milliseconds that chords should be played for seperated by a comma. The list of chords and milliseconds ends when there are no more commas.

Ukulele Jukebox is an executable that will initiate the user interface for the H-RUP. First the user will be welcomed and prompted for a choice of entering their own song or choosing from a list of preset songs on the Jukebox.

If a user wants to create their own song, they will be asked for each individual chord and the amount of milliseconds they wish for that chord to be played. The user can end a song by entering a '%' when asked for a chord.

If a user wants to choose a song, they will be given a list of songs from which to choose.

In both cases, once a song has either been written or chosen, the list of chords and milliseconds will be sent to the microcontroller. At this point the strum light will count down from 3 with 3 long flashes. It will then flash quickly each time a chord is played to indicate that a strumming sequence should begin!

## NU32
All of the code found in both the [micro code](/micro_code) directory and the [NU32 Utility](/NU32_Utility) that has "NU32" in its name is code developed by the makers of the [NU32](http://hades.mech.northwestern.edu/index.php/NU32) breakout board for the PIC32MX795F512H microcontroller. This code includes Utility code (in the NU32 Utility directory) which defines functions and data types for the bootloader. This bootloader is included in the micro code directory along with an NU32 library of functions that are useful for initialising the micro as well as serial communication to and from the micro. 