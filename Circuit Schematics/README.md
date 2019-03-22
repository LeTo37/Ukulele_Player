# Circuit Schematics

The schematics in this directory called [Solenoid Drivers 1](Solenoid_Drivers_1.png) and [2](Solenoid_Drivers_2.png) are mostly the same. Between the two of them they describe 16 solenoid driver circuits designed to allow Digital I/O pins on the PIC32 microcontroller to activate and deactivate the solenoids with logic highs and lows. The only differnece between Solenoid Drivers 1 and 2 are the Digital I/O pins to which the solenoid driver circuit is connected.

The basic circuit that is repeated for all 16 solenoids consists of the Digital I/O pin going through a 1 kilo Ohm resistor to the base of an NPN Darlington transistor. The collector of which is connected to a 7.5V power supply (32W, 4.32A AC/DC wall adapter) through a parallel combination of the solenoid being activated and a flyback diode. The emmitter of the transistor is connected to ground. The datasheets for the components used can be found [here](../Docs)

The [LED](LED.png) schematic shows a simple connection from the PIC32 Digital I/O to an LED with a 330 Ohm pulldown resistor. This LED is used as the Start and Strum Light to indicate to the user when to strum.

These schematics were developed using KiCad, as such, the KiCad '.sch' files are included as well as screenshots of the schematics for easier viewing.