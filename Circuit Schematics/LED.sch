EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Solenoid_Drivers-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x01 D10
U 1 1 5C95062D
P 1300 1650
F 0 "D10" H 1300 1750 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1300 1550 50  0000 C CNN
F 2 "" H 1300 1650 50  0001 C CNN
F 3 "" H 1300 1650 50  0001 C CNN
	1    1300 1650
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5C950689
P 1750 2300
F 0 "R1" V 1830 2300 50  0000 C CNN
F 1 "330" V 1750 2300 50  0000 C CNN
F 2 "" V 1680 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C9506C2
P 1750 2550
F 0 "#PWR?" H 1750 2300 50  0001 C CNN
F 1 "GND" H 1750 2400 50  0000 C CNN
F 2 "" H 1750 2550 50  0001 C CNN
F 3 "" H 1750 2550 50  0001 C CNN
	1    1750 2550
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5C9506DA
P 1750 1900
F 0 "D1" H 1750 2000 50  0000 C CNN
F 1 "LED" H 1750 1800 50  0000 C CNN
F 2 "" H 1750 1900 50  0001 C CNN
F 3 "" H 1750 1900 50  0001 C CNN
	1    1750 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 1650 1750 1650
Wire Wire Line
	1750 1650 1750 1750
Wire Wire Line
	1750 2050 1750 2150
Wire Wire Line
	1750 2450 1750 2550
$EndSCHEMATC
