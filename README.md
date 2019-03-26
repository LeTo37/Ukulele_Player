# Human-Robot Ukulele Player (H-RUP)
Designing and building a Human-Interactable Robotic Ukulele player. Below is a link to video of me playing the H-RUP!

[![Sawyer Ukulele Tune](http://i3.ytimg.com/vi/SKRP2N837I4/maxresdefault.jpg)](https://www.youtube-nocookie.com/embed/SKRP2N837I4 "HRUP")

## Introduction
This repository holds all of the relevant documentation, including mechanical designs, circuit designs, code and data-sheets of the parts used in the process of designing and building the Human-Robot Ukulele Player (H-RUP). 

This project was done in fulfillment of the requirements of a winter quarter project for the completion of my Master of Science in Robotics at Northwestern University.

## Approach

The basic approach I followed was to develop a 4x4 bank of solenoids to be housed above a small section of the ukkulele neck, placed above a part of the ukulele whereby this bank of solenoids will be able to press a pretty comprehensive combination of notes/chords, enough to be able to play most, if not all songs.

These solenoids are controlled using a PIC32MX795F512H microcontroller and a driver circuit. The Ukulele and Solenoid housing were designed and constructed by 3D printing and Laser Cutting. Coding was done C and Python.

## Directories

### Mechanical Designs

This directory holds the mechanical designs used to construct the H-RUP. Designs were done in Onshape, an open source, online CAD tool.

### Circuit Schematics

This directory holds the circuit design schematics for the solenoid drivers. Designs wer done in kiCad, an open source, PCB and schematics design tool.

### Docs
This directory holds the datasheets for all the relevant components used and any other useful documentation.

### Code
This directory holds the code used to program the PIC32MX795F512H microcontroller on the [NU32](http://hades.mech.northwestern.edu/index.php/NU32) breakout board. It also holds the user code used to run and interact with the H-RUP

## Using the H-RUP
[Ukulele Jukebox](Code/user_code/Ukulele_Jukebox.py) is a Python executable that will initiate the user interface for the H-RUP. First the user will be welcomed and prompted for a choice of entering their own song or choosing from a list of preset songs on the Jukebox.

If a user wants to create their own song, they will be asked for each individual chord and the amount of milliseconds they wish for that chord to be played. The user can end a song by entering a '%' when asked for a chord.

If a user wants to choose a song, they will be given a list of songs from which to choose.

In both cases, once a song has either been written or chosen, the list of chords and milliseconds will be sent to the microcontroller. At this point the strum light will count down from 3 with 3 long flashes. It will then flash quickly each time a chord is played to indicate that a strumming sequence should begin!

Happy Strumming!

<p align="center">
  <img src="https://github.com/LeTo37/Ukulele_Player/blob/master/media/H_RUP_All.png" />
</p>