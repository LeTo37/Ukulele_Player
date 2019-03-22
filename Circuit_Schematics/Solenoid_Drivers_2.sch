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
LIBS:Solenoid_Drivers_2-cache
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
L D D9
U 1 1 5C523C0F
P 1800 1200
F 0 "D9" V 1700 1100 50  0000 C CNN
F 1 "1N4004" V 1800 1000 50  0000 C CNN
F 2 "" H 1800 1200 50  0001 C CNN
F 3 "" H 1800 1200 50  0001 C CNN
	1    1800 1200
	0    1    1    0   
$EndComp
$Comp
L +7.5V #PWR?
U 1 1 5C5243D3
P 2150 750
F 0 "#PWR?" H 2150 600 50  0001 C CNN
F 1 "+7.5V" H 2150 890 50  0000 C CNN
F 2 "" H 2150 750 50  0001 C CNN
F 3 "" H 2150 750 50  0001 C CNN
	1    2150 750 
	1    0    0    -1  
$EndComp
$Comp
L L L9
U 1 1 5C52443A
P 2150 1200
F 0 "L9" H 2250 1300 50  0000 C CNN
F 1 "Solenoid" H 2350 1200 50  0000 C CNN
F 2 "" H 2150 1200 50  0001 C CNN
F 3 "" H 2150 1200 50  0001 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q1
U 1 1 5C524591
P 2050 1900
F 0 "Q1" H 2300 1975 50  0000 L CNN
F 1 "TIP120" H 2300 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2300 1825 50  0001 L CIN
F 3 "" H 2050 1900 50  0001 L CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 RB8
U 1 1 5C5247B0
P 1100 1900
F 0 "RB8" H 1100 2000 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 1800 50  0000 C CNN
F 2 "" H 1100 1900 50  0001 C CNN
F 3 "" H 1100 1900 50  0001 C CNN
	1    1100 1900
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5C524825
P 1600 1900
F 0 "R9" V 1680 1900 50  0000 C CNN
F 1 "1k" V 1600 1900 50  0000 C CNN
F 2 "" V 1530 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 750  2150 1050
Wire Wire Line
	1850 1900 1750 1900
Connection ~ 2150 1500
Connection ~ 2150 950 
Wire Wire Line
	2150 1350 2150 1700
Wire Wire Line
	1800 1500 2150 1500
Wire Wire Line
	1800 1350 1800 1500
Wire Wire Line
	1800 950  2150 950 
Wire Wire Line
	1800 1050 1800 950 
$Comp
L D D10
U 1 1 5C527A3D
P 3050 1200
F 0 "D10" V 2950 1050 50  0000 C CNN
F 1 "1N4004" V 3050 1000 50  0000 C CNN
F 2 "" H 3050 1200 50  0001 C CNN
F 3 "" H 3050 1200 50  0001 C CNN
	1    3050 1200
	0    1    1    0   
$EndComp
$Comp
L L L10
U 1 1 5C527A43
P 3400 1200
F 0 "L10" H 3500 1300 50  0000 C CNN
F 1 "Solenoid" H 3600 1200 50  0000 C CNN
F 2 "" H 3400 1200 50  0001 C CNN
F 3 "" H 3400 1200 50  0001 C CNN
	1    3400 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q2
U 1 1 5C527A49
P 3300 1900
F 0 "Q2" H 3550 1975 50  0000 L CNN
F 1 "TIP120" H 3550 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 3550 1825 50  0001 L CIN
F 3 "" H 3300 1900 50  0001 L CNN
	1    3300 1900
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5C527A4F
P 2850 1900
F 0 "R10" V 2930 1900 50  0000 C CNN
F 1 "1k" V 2850 1900 50  0000 C CNN
F 2 "" V 2780 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 750  3400 1050
Wire Wire Line
	3100 1900 3000 1900
Connection ~ 3400 1500
Connection ~ 3400 950 
Wire Wire Line
	3400 1350 3400 1700
Wire Wire Line
	3050 1500 3400 1500
Wire Wire Line
	3050 1350 3050 1500
Wire Wire Line
	3050 950  3400 950 
Wire Wire Line
	3050 1050 3050 950 
$Comp
L D D11
U 1 1 5C527B83
P 4300 1200
F 0 "D11" V 4200 1050 50  0000 C CNN
F 1 "1N4004" V 4300 1000 50  0000 C CNN
F 2 "" H 4300 1200 50  0001 C CNN
F 3 "" H 4300 1200 50  0001 C CNN
	1    4300 1200
	0    1    1    0   
$EndComp
$Comp
L L L11
U 1 1 5C527B89
P 4650 1200
F 0 "L11" H 4750 1300 50  0000 C CNN
F 1 "Solenoid" H 4850 1200 50  0000 C CNN
F 2 "" H 4650 1200 50  0001 C CNN
F 3 "" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q3
U 1 1 5C527B8F
P 4550 1900
F 0 "Q3" H 4800 1975 50  0000 L CNN
F 1 "TIP120" H 4800 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 4800 1825 50  0001 L CIN
F 3 "" H 4550 1900 50  0001 L CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5C527B95
P 4100 1900
F 0 "R11" V 4180 1900 50  0000 C CNN
F 1 "1k" V 4100 1900 50  0000 C CNN
F 2 "" V 4030 1900 50  0001 C CNN
F 3 "" H 4100 1900 50  0001 C CNN
	1    4100 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 750  4650 1050
Wire Wire Line
	4350 1900 4250 1900
Connection ~ 4650 1500
Connection ~ 4650 950 
Wire Wire Line
	4650 1350 4650 1700
Wire Wire Line
	4300 1500 4650 1500
Wire Wire Line
	4300 1350 4300 1500
Wire Wire Line
	4300 950  4650 950 
Wire Wire Line
	4300 1050 4300 950 
$Comp
L D D12
U 1 1 5C527E16
P 5550 1200
F 0 "D12" V 5450 1050 50  0000 C CNN
F 1 "1N4004" V 5550 1000 50  0000 C CNN
F 2 "" H 5550 1200 50  0001 C CNN
F 3 "" H 5550 1200 50  0001 C CNN
	1    5550 1200
	0    1    1    0   
$EndComp
$Comp
L L L12
U 1 1 5C527E1C
P 5900 1200
F 0 "L12" H 6000 1300 50  0000 C CNN
F 1 "Solenoid" H 6100 1200 50  0000 C CNN
F 2 "" H 5900 1200 50  0001 C CNN
F 3 "" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q4
U 1 1 5C527E22
P 5800 1900
F 0 "Q4" H 6050 1975 50  0000 L CNN
F 1 "TIP120" H 6050 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 6050 1825 50  0001 L CIN
F 3 "" H 5800 1900 50  0001 L CNN
	1    5800 1900
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5C527E28
P 5350 1900
F 0 "R12" V 5430 1900 50  0000 C CNN
F 1 "1k" V 5350 1900 50  0000 C CNN
F 2 "" V 5280 1900 50  0001 C CNN
F 3 "" H 5350 1900 50  0001 C CNN
	1    5350 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 750  5900 1050
Wire Wire Line
	5600 1900 5500 1900
Connection ~ 5900 1500
Connection ~ 5900 950 
Wire Wire Line
	5900 1350 5900 1700
Wire Wire Line
	5550 1500 5900 1500
Wire Wire Line
	5550 1350 5550 1500
Wire Wire Line
	5550 950  5900 950 
Wire Wire Line
	5550 1050 5550 950 
$Comp
L D D13
U 1 1 5C527E37
P 6800 1200
F 0 "D13" V 6700 1050 50  0000 C CNN
F 1 "1N4004" V 6800 1000 50  0000 C CNN
F 2 "" H 6800 1200 50  0001 C CNN
F 3 "" H 6800 1200 50  0001 C CNN
	1    6800 1200
	0    1    1    0   
$EndComp
$Comp
L L L13
U 1 1 5C527E3D
P 7150 1200
F 0 "L13" H 7250 1300 50  0000 C CNN
F 1 "Solenoid" H 7350 1200 50  0000 C CNN
F 2 "" H 7150 1200 50  0001 C CNN
F 3 "" H 7150 1200 50  0001 C CNN
	1    7150 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q5
U 1 1 5C527E43
P 7050 1900
F 0 "Q5" H 7300 1975 50  0000 L CNN
F 1 "TIP120" H 7300 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 7300 1825 50  0001 L CIN
F 3 "" H 7050 1900 50  0001 L CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5C527E49
P 6600 1900
F 0 "R13" V 6680 1900 50  0000 C CNN
F 1 "1k" V 6600 1900 50  0000 C CNN
F 2 "" V 6530 1900 50  0001 C CNN
F 3 "" H 6600 1900 50  0001 C CNN
	1    6600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 750  7150 1050
Wire Wire Line
	6850 1900 6750 1900
Connection ~ 7150 1500
Connection ~ 7150 950 
Wire Wire Line
	7150 1350 7150 1700
Wire Wire Line
	6800 1500 7150 1500
Wire Wire Line
	6800 1350 6800 1500
Wire Wire Line
	6800 950  7150 950 
Wire Wire Line
	6800 1050 6800 950 
$Comp
L D D14
U 1 1 5C52806D
P 8050 1200
F 0 "D14" V 7950 1050 50  0000 C CNN
F 1 "1N4004" V 8050 1000 50  0000 C CNN
F 2 "" H 8050 1200 50  0001 C CNN
F 3 "" H 8050 1200 50  0001 C CNN
	1    8050 1200
	0    1    1    0   
$EndComp
$Comp
L L L14
U 1 1 5C528073
P 8400 1200
F 0 "L14" H 8500 1300 50  0000 C CNN
F 1 "Solenoid" H 8600 1200 50  0000 C CNN
F 2 "" H 8400 1200 50  0001 C CNN
F 3 "" H 8400 1200 50  0001 C CNN
	1    8400 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q6
U 1 1 5C528079
P 8300 1900
F 0 "Q6" H 8550 1975 50  0000 L CNN
F 1 "TIP120" H 8550 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 8550 1825 50  0001 L CIN
F 3 "" H 8300 1900 50  0001 L CNN
	1    8300 1900
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5C52807F
P 7850 1900
F 0 "R14" V 7930 1900 50  0000 C CNN
F 1 "1k" V 7850 1900 50  0000 C CNN
F 2 "" V 7780 1900 50  0001 C CNN
F 3 "" H 7850 1900 50  0001 C CNN
	1    7850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 750  8400 1050
Wire Wire Line
	8100 1900 8000 1900
Connection ~ 8400 1500
Connection ~ 8400 950 
Wire Wire Line
	8400 1350 8400 1700
Wire Wire Line
	8050 1500 8400 1500
Wire Wire Line
	8050 1350 8050 1500
Wire Wire Line
	8050 950  8400 950 
Wire Wire Line
	8050 1050 8050 950 
$Comp
L D D15
U 1 1 5C52808E
P 9300 1200
F 0 "D15" V 9200 1050 50  0000 C CNN
F 1 "1N4004" V 9300 1000 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "" H 9300 1200 50  0001 C CNN
	1    9300 1200
	0    1    1    0   
$EndComp
$Comp
L L L15
U 1 1 5C528094
P 9650 1200
F 0 "L15" H 9750 1300 50  0000 C CNN
F 1 "Solenoid" H 9850 1200 50  0000 C CNN
F 2 "" H 9650 1200 50  0001 C CNN
F 3 "" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q7
U 1 1 5C52809A
P 9550 1900
F 0 "Q7" H 9800 1975 50  0000 L CNN
F 1 "TIP120" H 9800 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 9800 1825 50  0001 L CIN
F 3 "" H 9550 1900 50  0001 L CNN
	1    9550 1900
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5C5280A0
P 9100 1900
F 0 "R15" V 9180 1900 50  0000 C CNN
F 1 "1k" V 9100 1900 50  0000 C CNN
F 2 "" V 9030 1900 50  0001 C CNN
F 3 "" H 9100 1900 50  0001 C CNN
	1    9100 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 750  9650 1050
Wire Wire Line
	9350 1900 9250 1900
Connection ~ 9650 1500
Connection ~ 9650 950 
Wire Wire Line
	9650 1350 9650 1700
Wire Wire Line
	9300 1500 9650 1500
Wire Wire Line
	9300 1350 9300 1500
Wire Wire Line
	9300 950  9650 950 
Wire Wire Line
	9300 1050 9300 950 
$Comp
L D D16
U 1 1 5C528243
P 10450 1200
F 0 "D16" V 10350 1050 50  0000 C CNN
F 1 "1N4004" V 10450 1000 50  0000 C CNN
F 2 "" H 10450 1200 50  0001 C CNN
F 3 "" H 10450 1200 50  0001 C CNN
	1    10450 1200
	0    1    1    0   
$EndComp
$Comp
L L L16
U 1 1 5C528249
P 10800 1200
F 0 "L16" H 10900 1300 50  0000 C CNN
F 1 "Solenoid" H 11000 1200 50  0000 C CNN
F 2 "" H 10800 1200 50  0001 C CNN
F 3 "" H 10800 1200 50  0001 C CNN
	1    10800 1200
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q8
U 1 1 5C52824F
P 10700 1900
F 0 "Q8" H 10950 1975 50  0000 L CNN
F 1 "TIP120" H 10950 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 10950 1825 50  0001 L CIN
F 3 "" H 10700 1900 50  0001 L CNN
	1    10700 1900
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5C528255
P 10250 1900
F 0 "R16" V 10330 1900 50  0000 C CNN
F 1 "1k" V 10250 1900 50  0000 C CNN
F 2 "" V 10180 1900 50  0001 C CNN
F 3 "" H 10250 1900 50  0001 C CNN
	1    10250 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	10800 750  10800 1050
Wire Wire Line
	10500 1900 10400 1900
Connection ~ 10800 1500
Connection ~ 10800 950 
Wire Wire Line
	10800 1350 10800 1700
Wire Wire Line
	10450 1500 10800 1500
Wire Wire Line
	10450 1350 10450 1500
Wire Wire Line
	10450 950  10800 950 
Wire Wire Line
	10450 1050 10450 950 
Wire Wire Line
	10800 750  2150 750 
$Comp
L Conn_01x01 RB9
U 1 1 5C52E4F5
P 1100 2350
F 0 "RB9" H 1100 2450 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 2250 50  0000 C CNN
F 2 "" H 1100 2350 50  0001 C CNN
F 3 "" H 1100 2350 50  0001 C CNN
	1    1100 2350
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB10
U 1 1 5C52EA50
P 1100 2750
F 0 "RB10" H 1100 2850 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 2650 50  0000 C CNN
F 2 "" H 1100 2750 50  0001 C CNN
F 3 "" H 1100 2750 50  0001 C CNN
	1    1100 2750
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB11
U 1 1 5C52EA56
P 1100 3200
F 0 "RB11" H 1100 3300 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 3100 50  0000 C CNN
F 2 "" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB12
U 1 1 5C52EB90
P 1100 3550
F 0 "RB12" H 1100 3650 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 3450 50  0000 C CNN
F 2 "" H 1100 3550 50  0001 C CNN
F 3 "" H 1100 3550 50  0001 C CNN
	1    1100 3550
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB13
U 1 1 5C52EB96
P 1100 4000
F 0 "RB13" H 1100 4100 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 3900 50  0000 C CNN
F 2 "" H 1100 4000 50  0001 C CNN
F 3 "" H 1100 4000 50  0001 C CNN
	1    1100 4000
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB14
U 1 1 5C52EB9C
P 1100 4400
F 0 "RB14" H 1100 4500 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 4300 50  0000 C CNN
F 2 "" H 1100 4400 50  0001 C CNN
F 3 "" H 1100 4400 50  0001 C CNN
	1    1100 4400
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 RB15
U 1 1 5C52EBA2
P 1100 4850
F 0 "RB15" H 1100 4950 50  0000 C CNN
F 1 "PIC32 Digital I/O" H 1050 4750 50  0000 C CNN
F 2 "" H 1100 4850 50  0001 C CNN
F 3 "" H 1100 4850 50  0001 C CNN
	1    1100 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 1900 3950 2750
Wire Wire Line
	5200 3200 5200 1900
Wire Wire Line
	6450 1900 6450 3550
Wire Wire Line
	7700 4000 7700 1900
Wire Wire Line
	8950 1900 8950 4400
Wire Wire Line
	10100 4850 10100 1900
$Comp
L GND #PWR?
U 1 1 5C5279F1
P 2150 2200
F 0 "#PWR?" H 2150 1950 50  0001 C CNN
F 1 "GND" H 2150 2050 50  0000 C CNN
F 2 "" H 2150 2200 50  0001 C CNN
F 3 "" H 2150 2200 50  0001 C CNN
	1    2150 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527A55
P 3400 2200
F 0 "#PWR?" H 3400 1950 50  0001 C CNN
F 1 "GND" H 3400 2050 50  0000 C CNN
F 2 "" H 3400 2200 50  0001 C CNN
F 3 "" H 3400 2200 50  0001 C CNN
	1    3400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527ADF
P 4650 2200
F 0 "#PWR?" H 4650 1950 50  0001 C CNN
F 1 "GND" H 4650 2050 50  0000 C CNN
F 2 "" H 4650 2200 50  0001 C CNN
F 3 "" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527B62
P 5900 2200
F 0 "#PWR?" H 5900 1950 50  0001 C CNN
F 1 "GND" H 5900 2050 50  0000 C CNN
F 2 "" H 5900 2200 50  0001 C CNN
F 3 "" H 5900 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527BE5
P 7150 2200
F 0 "#PWR?" H 7150 1950 50  0001 C CNN
F 1 "GND" H 7150 2050 50  0000 C CNN
F 2 "" H 7150 2200 50  0001 C CNN
F 3 "" H 7150 2200 50  0001 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527C68
P 8400 2200
F 0 "#PWR?" H 8400 1950 50  0001 C CNN
F 1 "GND" H 8400 2050 50  0000 C CNN
F 2 "" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527CEB
P 9650 2200
F 0 "#PWR?" H 9650 1950 50  0001 C CNN
F 1 "GND" H 9650 2050 50  0000 C CNN
F 2 "" H 9650 2200 50  0001 C CNN
F 3 "" H 9650 2200 50  0001 C CNN
	1    9650 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C527D6E
P 10800 2200
F 0 "#PWR?" H 10800 1950 50  0001 C CNN
F 1 "GND" H 10800 2050 50  0000 C CNN
F 2 "" H 10800 2200 50  0001 C CNN
F 3 "" H 10800 2200 50  0001 C CNN
	1    10800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 2100 10800 2200
Wire Wire Line
	9650 2200 9650 2100
Wire Wire Line
	8400 2100 8400 2200
Wire Wire Line
	7150 2100 7150 2200
Wire Wire Line
	5900 2200 5900 2100
Wire Wire Line
	4650 2100 4650 2200
Wire Wire Line
	3400 2200 3400 2100
Wire Wire Line
	2150 2200 2150 2100
Wire Wire Line
	2700 1900 2700 2500
Wire Wire Line
	1450 1900 1300 1900
Wire Wire Line
	1300 2350 1700 2350
Wire Wire Line
	1700 2350 1700 2500
Wire Wire Line
	1700 2500 2700 2500
Wire Wire Line
	3950 2750 1300 2750
Wire Wire Line
	1300 3200 5200 3200
Wire Wire Line
	6450 3550 1300 3550
Wire Wire Line
	1300 4000 7700 4000
Wire Wire Line
	8950 4400 1300 4400
Wire Wire Line
	10100 4850 1300 4850
$EndSCHEMATC
