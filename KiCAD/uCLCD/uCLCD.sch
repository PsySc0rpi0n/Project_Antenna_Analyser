EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:uCLCD
LIBS:Switch
LIBS:uCLCD-cache
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
L ATMEGA328P-P IC1
U 1 1 5B05A6CC
P 4150 2650
F 0 "IC1" H 3400 3900 50  0000 L BNN
F 1 "ATMEGA328P-P" H 4550 1250 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 4150 2650 50  0001 C CIN
F 3 "" H 4150 2650 50  0000 C CNN
	1    4150 2650
	0    1    1    0   
$EndComp
$Comp
L Crystal Y1
U 1 1 5B05A8DE
P 4900 5750
F 0 "Y1" H 4900 5900 50  0000 C CNN
F 1 "16Mhz" H 4900 5600 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 4900 5750 50  0001 C CNN
F 3 "" H 4900 5750 50  0000 C CNN
	1    4900 5750
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5B05A901
P 4750 6100
F 0 "C1" H 4775 6200 50  0000 L CNN
F 1 "22p" H 4775 6000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 4788 5950 50  0001 C CNN
F 3 "" H 4750 6100 50  0000 C CNN
	1    4750 6100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B05A955
P 5050 6100
F 0 "C2" H 5075 6200 50  0000 L CNN
F 1 "22p" H 5075 6000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 5088 5950 50  0001 C CNN
F 3 "" H 5050 6100 50  0000 C CNN
	1    5050 6100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5B05BA1F
P 3450 4550
F 0 "#PWR01" H 3450 4300 50  0001 C CNN
F 1 "GND" H 3450 4400 50  0000 C CNN
F 2 "" H 3450 4550 50  0000 C CNN
F 3 "" H 3450 4550 50  0000 C CNN
	1    3450 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5B05BA81
P 5950 5450
F 0 "#PWR02" H 5950 5300 50  0001 C CNN
F 1 "+5V" H 5950 5590 50  0000 C CNN
F 2 "" H 5950 5450 50  0000 C CNN
F 3 "" H 5950 5450 50  0000 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5B05C178
P 5500 5300
F 0 "RV1" V 5325 5300 50  0000 C CNN
F 1 "10k" V 5400 5300 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_VishaySpectrol_248GJ_249GJ_Vertical" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0000 C CNN
	1    5500 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 4750 4750 5950
Wire Wire Line
	4850 5500 5050 5500
Wire Wire Line
	5050 5500 5050 5950
Connection ~ 4750 5750
Connection ~ 5050 5750
Wire Wire Line
	5050 6350 5050 6250
Wire Wire Line
	4750 6350 5050 6350
Wire Wire Line
	4750 6350 4750 6250
Wire Wire Line
	4900 6350 4900 6450
Connection ~ 4900 6350
$Comp
L GND #PWR03
U 1 1 5B05CCB0
P 4900 6450
F 0 "#PWR03" H 4900 6200 50  0001 C CNN
F 1 "GND" H 4900 6300 50  0000 C CNN
F 2 "" H 4900 6450 50  0000 C CNN
F 3 "" H 4900 6450 50  0000 C CNN
	1    4900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3650 3800 4850
$Comp
L R R1
U 1 1 5B05D0B4
P 3800 5000
F 0 "R1" V 3880 5000 50  0000 C CNN
F 1 "10k" V 3800 5000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 3730 5000 50  0001 C CNN
F 3 "" H 3800 5000 50  0000 C CNN
	1    3800 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5B05D0F1
P 3800 5150
F 0 "#PWR04" H 3800 5000 50  0001 C CNN
F 1 "+5V" H 3800 5290 50  0000 C CNN
F 2 "" H 3800 5150 50  0000 C CNN
F 3 "" H 3800 5150 50  0000 C CNN
	1    3800 5150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X12 P1
U 1 1 5B05D4D5
P 6000 4550
F 0 "P1" H 6000 5200 50  0000 C CNN
F 1 "CONN_01X12" H 6000 3850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x12" H 6000 4550 50  0001 C CNN
F 3 "" H 6000 4550 50  0000 C CNN
	1    6000 4550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5B05D634
P 5150 5300
F 0 "#PWR05" H 5150 5050 50  0001 C CNN
F 1 "GND" H 5150 5150 50  0000 C CNN
F 2 "" H 5150 5300 50  0000 C CNN
F 3 "" H 5150 5300 50  0000 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B05D92D
P 5650 4000
F 0 "#PWR06" H 5650 3750 50  0001 C CNN
F 1 "GND" H 5650 3850 50  0000 C CNN
F 2 "" H 5650 4000 50  0000 C CNN
F 3 "" H 5650 4000 50  0000 C CNN
	1    5650 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 3650 5050 4500
Wire Wire Line
	4950 3650 4950 4400
Wire Wire Line
	4850 3650 4850 4300
Wire Wire Line
	4750 3650 4750 4200
Wire Wire Line
	5250 3650 5250 4800
Wire Wire Line
	2950 4500 2950 3650
Wire Wire Line
	5150 3650 5150 4600
$Comp
L +5V #PWR07
U 1 1 5B05E2DA
P 5450 4000
F 0 "#PWR07" H 5450 3850 50  0001 C CNN
F 1 "+5V" H 5450 4140 50  0000 C CNN
F 2 "" H 5450 4000 50  0000 C CNN
F 3 "" H 5450 4000 50  0000 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
Text Notes 4500 3900 1    60   ~ 0
Vref
Text Notes 6300 5150 2    60   ~ 0
Vss
Text Notes 6300 5050 2    60   ~ 0
Vdd
Text Notes 6300 4950 2    60   ~ 0
V0
Text Notes 6300 4850 2    60   ~ 0
RS
Text Notes 6300 4750 2    60   ~ 0
RW
Text Notes 6300 4650 2    60   ~ 0
E
Text Notes 6300 4550 2    60   ~ 0
D0
Text Notes 6300 4450 2    60   ~ 0
D1
Text Notes 6300 4350 2    60   ~ 0
D2
Text Notes 6300 4250 2    60   ~ 0
D3
Text Notes 6300 4150 2    60   ~ 0
A
Text Notes 6300 4050 2    60   ~ 0
K
$Comp
L CONN_01X03 P4
U 1 1 5B05E774
P 1650 5650
F 0 "P4" H 1650 5850 50  0000 C CNN
F 1 "CONN_01X03" V 1750 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1650 5650 50  0001 C CNN
F 3 "" H 1650 5650 50  0000 C CNN
	1    1650 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5450 1550 5300
Wire Wire Line
	1550 5300 1750 5300
Wire Wire Line
	1750 5300 1750 5450
Wire Wire Line
	1650 5200 1650 5450
Connection ~ 1650 5300
Wire Wire Line
	1650 5200 1900 5200
$Comp
L GND #PWR08
U 1 1 5B05E875
P 1900 5200
F 0 "#PWR08" H 1900 4950 50  0001 C CNN
F 1 "GND" H 1900 5050 50  0000 C CNN
F 2 "" H 1900 5200 50  0000 C CNN
F 3 "" H 1900 5200 50  0000 C CNN
	1    1900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4850 3200 4850
Wire Wire Line
	3200 4850 3200 4350
Wire Wire Line
	3200 4350 3650 4350
Wire Wire Line
	3650 4350 3650 3650
Wire Wire Line
	2950 4850 2950 4750
Wire Wire Line
	2950 4750 3100 4750
Wire Wire Line
	3100 4750 3100 4250
Wire Wire Line
	3100 4250 3550 4250
Wire Wire Line
	3550 4250 3550 3650
Text Notes 2950 4700 3    60   ~ 0
Rxd
Text Notes 3200 4950 2    60   ~ 0
Txd
$Comp
L CONN_01X03 P2
U 1 1 5B05ECC3
P 2950 5050
F 0 "P2" H 2950 5250 50  0000 C CNN
F 1 "CONN_01X03" V 3050 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2950 5050 50  0001 C CNN
F 3 "" H 2950 5050 50  0000 C CNN
	1    2950 5050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5B05ED13
P 2700 4850
F 0 "#PWR09" H 2700 4600 50  0001 C CNN
F 1 "GND" H 2700 4700 50  0000 C CNN
F 2 "" H 2700 4850 50  0000 C CNN
F 3 "" H 2700 4850 50  0000 C CNN
	1    2700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4850 2850 4850
Wire Wire Line
	4650 1750 4650 1600
Wire Wire Line
	4650 1600 5250 1600
Wire Wire Line
	4950 1450 4950 1750
Wire Wire Line
	5250 1600 5250 1750
Connection ~ 4950 1600
$Comp
L +5V #PWR010
U 1 1 5B05F829
P 4050 1350
F 0 "#PWR010" H 4050 1200 50  0001 C CNN
F 1 "+5V" H 4050 1490 50  0000 C CNN
F 2 "" H 4050 1350 50  0000 C CNN
F 3 "" H 4050 1350 50  0000 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1750 2950 1450
Wire Wire Line
	3050 1350 3050 1750
$Comp
L GND #PWR011
U 1 1 5B05F955
P 3050 1350
F 0 "#PWR011" H 3050 1100 50  0001 C CNN
F 1 "GND" H 3050 1200 50  0000 C CNN
F 2 "" H 3050 1350 50  0000 C CNN
F 3 "" H 3050 1350 50  0000 C CNN
	1    3050 1350
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5B06F14F
P 2450 4450
F 0 "R3" V 2530 4450 50  0000 C CNN
F 1 "10k" V 2450 4450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2380 4450 50  0001 C CNN
F 3 "" H 2450 4450 50  0000 C CNN
	1    2450 4450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B06F1D9
P 1650 4250
F 0 "R2" V 1730 4250 50  0000 C CNN
F 1 "10k" V 1650 4250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 1580 4250 50  0001 C CNN
F 3 "" H 1650 4250 50  0000 C CNN
	1    1650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4600 2450 4650
$Comp
L GND #PWR012
U 1 1 5B06F3A9
P 2050 4100
F 0 "#PWR012" H 2050 3850 50  0001 C CNN
F 1 "GND" H 2050 3950 50  0000 C CNN
F 2 "" H 2050 4100 50  0000 C CNN
F 3 "" H 2050 4100 50  0000 C CNN
	1    2050 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5B06F3F7
P 1250 3800
F 0 "#PWR013" H 1250 3550 50  0001 C CNN
F 1 "GND" H 1250 3650 50  0000 C CNN
F 2 "" H 1250 3800 50  0000 C CNN
F 3 "" H 1250 3800 50  0000 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5B06F4C5
P 2650 4650
F 0 "#PWR014" H 2650 4500 50  0001 C CNN
F 1 "+5V" H 2650 4790 50  0000 C CNN
F 2 "" H 2650 4650 50  0000 C CNN
F 3 "" H 2650 4650 50  0000 C CNN
	1    2650 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5B06F4FD
P 1500 4900
F 0 "#PWR015" H 1500 4750 50  0001 C CNN
F 1 "+5V" H 1500 5040 50  0000 C CNN
F 2 "" H 1500 4900 50  0000 C CNN
F 3 "" H 1500 4900 50  0000 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4400 1650 4900
Wire Wire Line
	1650 4000 1650 4100
Wire Wire Line
	1450 4000 3350 4000
Wire Wire Line
	3350 4000 3350 3650
Wire Wire Line
	2250 4200 3450 4200
Wire Wire Line
	2450 4200 2450 4300
Wire Wire Line
	3450 4200 3450 3650
Text Notes 1000 4500 1    60   ~ 0
DownFreq
Text Notes 1850 4450 3    60   ~ 0
UpFreq
Wire Wire Line
	5800 5100 5800 5450
Wire Wire Line
	5800 5000 5150 5000
Wire Wire Line
	5150 5000 5150 5300
Wire Wire Line
	5150 5300 5350 5300
Wire Wire Line
	5800 5300 5650 5300
Wire Wire Line
	5500 5150 5500 4900
Wire Wire Line
	5500 4900 5800 4900
Wire Wire Line
	5050 4500 5800 4500
Wire Wire Line
	4950 4400 5800 4400
Wire Wire Line
	4850 4300 5800 4300
Wire Wire Line
	4750 4200 5800 4200
Wire Wire Line
	5250 4800 5800 4800
Wire Wire Line
	4950 4700 5800 4700
Wire Wire Line
	4950 4500 4950 4700
Wire Wire Line
	2950 4500 4950 4500
Wire Wire Line
	5150 4600 5800 4600
Wire Wire Line
	5450 4000 5450 4100
Wire Wire Line
	5450 4100 5800 4100
Wire Wire Line
	5800 4000 5650 4000
NoConn ~ 3050 3650
NoConn ~ 3150 3650
NoConn ~ 3250 3650
Wire Wire Line
	3950 5800 3950 4300
Wire Wire Line
	3950 4300 3900 4300
Wire Wire Line
	3900 4300 3900 3650
Wire Wire Line
	4050 4200 4050 5950
Wire Wire Line
	4050 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3650
Wire Wire Line
	4150 4100 4150 6050
Wire Wire Line
	4150 4100 4100 4100
Wire Wire Line
	4100 4100 4100 3650
Wire Wire Line
	4250 4000 4250 6100
Text Notes 2800 6800 3    60   ~ 0
DDSInterface
$Comp
L CONN_01X02 P5
U 1 1 5B073A4B
P 4000 1750
F 0 "P5" H 4000 1900 50  0000 C CNN
F 1 "CONN_01X02" V 4100 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4000 1750 50  0001 C CNN
F 3 "" H 4000 1750 50  0000 C CNN
	1    4000 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1350 4050 1550
Connection ~ 3050 1450
Connection ~ 4050 1450
Wire Wire Line
	3950 1450 3950 1550
Wire Wire Line
	2950 1450 3950 1450
Wire Wire Line
	4050 1450 4950 1450
$Comp
L CONN_01X03 P3
U 1 1 5B075315
P 4500 5500
F 0 "P3" H 4500 5700 50  0000 C CNN
F 1 "CONN_01X03" V 4600 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4500 5500 50  0001 C CNN
F 3 "" H 4500 5500 50  0000 C CNN
	1    4500 5500
	0    -1   1    0   
$EndComp
Text Notes 4300 3900 1    60   ~ 0
Vfrw
Wire Wire Line
	4250 4000 4200 4000
Wire Wire Line
	4200 4000 4200 3650
Wire Wire Line
	4300 3650 4300 5200
Wire Wire Line
	4300 5200 4400 5200
Wire Wire Line
	4400 5200 4400 5300
Wire Wire Line
	4500 5300 4500 5100
Wire Wire Line
	4500 5100 4400 5100
Wire Wire Line
	4400 5100 4400 3650
Wire Wire Line
	4600 4850 4600 5300
$Comp
L GND #PWR016
U 1 1 5B075FE9
P 4500 4900
F 0 "#PWR016" H 4500 4650 50  0001 C CNN
F 1 "GND" H 4500 4750 50  0000 C CNN
F 2 "" H 4500 4900 50  0000 C CNN
F 3 "" H 4500 4900 50  0000 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4850 4500 4850
Wire Wire Line
	4500 4850 4500 4900
Wire Wire Line
	4550 3650 4550 4750
Wire Wire Line
	4550 4750 4750 4750
Wire Wire Line
	4850 5500 4850 4650
Wire Wire Line
	4850 4650 4650 4650
Wire Wire Line
	4650 4650 4650 3650
$Comp
L p_button P9
U 1 1 5B077C3B
P 3500 5100
F 0 "P9" H 3500 5350 60  0000 C CNN
F 1 "p_button" H 3500 4750 60  0000 C CNN
F 2 "uCLCD:p_button" H 3500 5100 60  0001 C CNN
F 3 "" H 3500 5100 60  0001 C CNN
	1    3500 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 4700 3800 4700
Connection ~ 3800 4700
Wire Wire Line
	3650 4700 3650 4800
Wire Wire Line
	3450 4550 3350 4550
Wire Wire Line
	3350 4550 3350 4800
NoConn ~ 3350 5400
NoConn ~ 3650 5400
$Comp
L p_button P8
U 1 1 5B0785DC
P 2100 4600
F 0 "P8" H 2100 4850 60  0000 C CNN
F 1 "p_button" H 2100 4250 60  0000 C CNN
F 2 "uCLCD:p_button" H 2100 4600 60  0001 C CNN
F 3 "" H 2100 4600 60  0001 C CNN
	1    2100 4600
	-1   0    0    -1  
$EndComp
Connection ~ 2450 4200
Wire Wire Line
	2250 4200 2250 4300
Wire Wire Line
	2050 4100 1950 4100
Wire Wire Line
	1950 4100 1950 4300
$Comp
L p_button P7
U 1 1 5B078A3C
P 1300 4300
F 0 "P7" H 1300 4550 60  0000 C CNN
F 1 "p_button" H 1300 3950 60  0000 C CNN
F 2 "uCLCD:p_button" H 1300 4300 60  0001 C CNN
F 3 "" H 1300 4300 60  0001 C CNN
	1    1300 4300
	-1   0    0    -1  
$EndComp
Connection ~ 1650 4000
Wire Wire Line
	1250 3800 1150 3800
Wire Wire Line
	1150 3800 1150 4000
NoConn ~ 2250 4900
NoConn ~ 1950 4900
NoConn ~ 1450 4600
NoConn ~ 1150 4600
Wire Wire Line
	3550 5800 3550 6150
Wire Wire Line
	3550 5800 3400 5800
Wire Wire Line
	3400 5800 3400 5850
$Comp
L GND #PWR017
U 1 1 5B076994
P 3400 5850
F 0 "#PWR017" H 3400 5600 50  0001 C CNN
F 1 "GND" H 3400 5700 50  0000 C CNN
F 2 "" H 3400 5850 50  0000 C CNN
F 3 "" H 3400 5850 50  0000 C CNN
	1    3400 5850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR018
U 1 1 5B076E31
P 4350 5900
F 0 "#PWR018" H 4350 5750 50  0001 C CNN
F 1 "+5V" H 4350 6040 50  0000 C CNN
F 2 "" H 4350 5900 50  0000 C CNN
F 3 "" H 4350 5900 50  0000 C CNN
	1    4350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5900 4350 6150
Wire Wire Line
	3150 7550 3150 7600
$Comp
L GND #PWR019
U 1 1 5B076FF6
P 3150 7600
F 0 "#PWR019" H 3150 7350 50  0001 C CNN
F 1 "GND" H 3150 7450 50  0000 C CNN
F 2 "" H 3150 7600 50  0000 C CNN
F 3 "" H 3150 7600 50  0000 C CNN
	1    3150 7600
	1    0    0    -1  
$EndComp
NoConn ~ 3450 6150
NoConn ~ 3350 6150
NoConn ~ 3250 7550
NoConn ~ 3350 7550
NoConn ~ 3450 7550
NoConn ~ 3550 7550
NoConn ~ 3650 7550
NoConn ~ 3750 7550
NoConn ~ 3850 7550
NoConn ~ 3950 7550
NoConn ~ 4050 7550
Wire Wire Line
	2450 4650 2650 4650
Wire Wire Line
	1650 4900 1500 4900
Wire Wire Line
	5800 5450 5950 5450
Connection ~ 5800 5300
$Comp
L DDS U1
U 1 1 5B0782E0
P 3700 6850
F 0 "U1" H 3250 7800 60  0000 C CNN
F 1 "DDS" H 3300 5900 60  0000 C CNN
F 2 "uCLCD:DDS9850" H 3700 6850 60  0001 C CNN
F 3 "" H 3700 6850 60  0001 C CNN
	1    3700 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 6150 4050 6150
Wire Wire Line
	4250 6100 3950 6100
Wire Wire Line
	3950 6100 3950 6150
Wire Wire Line
	4150 6050 3850 6050
Wire Wire Line
	3850 6050 3850 6150
Wire Wire Line
	4050 5950 3750 5950
Wire Wire Line
	3750 5950 3750 6150
Wire Wire Line
	3950 5800 3650 5800
Wire Wire Line
	3650 5800 3650 6150
$Comp
L CONN_01X03 P6
U 1 1 5B079094
P 2400 6150
F 0 "P6" H 2400 6350 50  0000 C CNN
F 1 "CONN_01X03" V 2500 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2400 6150 50  0001 C CNN
F 3 "" H 2400 6150 50  0000 C CNN
	1    2400 6150
	0    -1   1    0   
$EndComp
Wire Wire Line
	3250 5700 3250 6150
Wire Wire Line
	2400 5700 3250 5700
Wire Wire Line
	2400 5700 2400 5950
Wire Wire Line
	3150 6150 3150 5800
Wire Wire Line
	3150 5800 2500 5800
Wire Wire Line
	2500 5800 2500 5950
Wire Wire Line
	2300 5950 2300 5700
Wire Wire Line
	2300 5700 2150 5700
Wire Wire Line
	2150 5700 2150 5850
$Comp
L GND #PWR020
U 1 1 5B0793E1
P 2150 5850
F 0 "#PWR020" H 2150 5600 50  0001 C CNN
F 1 "GND" H 2150 5700 50  0000 C CNN
F 2 "" H 2150 5850 50  0000 C CNN
F 3 "" H 2150 5850 50  0000 C CNN
	1    2150 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
