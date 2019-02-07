# Ukulele_Player
Designing and building an autonomous Ukulele player

## Introduction
This repository will hold all the relevant documentation, including mechanical designs, circuit designs, code and data-sheets of the parts used in the process of designing and building an automated Ukulele player. 

This project is being done to fulfill the requirements of a winter quarter project for the completion of my Master of Science in Robotics at Northwestern University.

This project is still in progress, if you stumble upon this repo in this unfinished state, please come back soon to see the end result!


## Approach

The basic approach I am following is to develop a 4x4 bank of solenoids to be housed above a small section of the ukkulele neck, placed above a part of the ukulele whereby this bank of solenoids will be able to press a pretty comprehensive combination of notes, enough to be able to play most, if not all songs.

These solenoids will be controlled using a PIC32 Microcontroller and a driver circuit. Perhaps including a demultiplexor to help with the logic of controlling each solenoid.

## Directories

### Mechanical Designs

This directory holds the mechanical designs, in ".stl" format, that I have designed in Onshape, an open source, online CAD tool.

### Circuit Schematics

This directory holds the circuit design schematics for the solenoid drivers, in ".sch" format, that I have designed in kiCad, an open source, PCB and schematics design tool.

### Docs
This directory holds the datasheets for all the relevant components used and any other useful documentation.

### Code
This directory will hold the code used to program the PIC32MX795F512H micro controller on the NU32 breakout board. 
