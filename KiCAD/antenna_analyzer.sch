EESchema Schematic File Version 2
LIBS:rf_modules
LIBS:antenna_analyzer-cache
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
L Connector:Conn_Coaxial J2
U 1 1 5AF6B793
P 6100 2850
F 0 "J2" H 6199 2826 50  0000 L CNN
F 1 "DUT" H 6199 2735 50  0000 L CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
$Comp
L _passive:R R1
U 1 1 5AF6B943
P 5100 2650
F 0 "R1" H 5163 2696 50  0000 L CNN
F 1 "50" H 5163 2605 50  0000 L CNN
F 2 "" H 5100 2700 60  0000 C CNN
F 3 "" H 5100 2700 60  0000 C CNN
	1    5100 2650
	1    0    0    -1  
$EndComp
$Comp
L _passive:R R3
U 1 1 5AF6BA04
P 5800 2650
F 0 "R3" H 5863 2696 50  0000 L CNN
F 1 "50" H 5863 2605 50  0000 L CNN
F 2 "" H 5800 2700 60  0000 C CNN
F 3 "" H 5800 2700 60  0000 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
$Comp
L _passive:R R2
U 1 1 5AF6BA35
P 5100 3000
F 0 "R2" H 5163 3046 50  0000 L CNN
F 1 "50" H 5163 2955 50  0000 L CNN
F 2 "" H 5100 3050 60  0000 C CNN
F 3 "" H 5100 3050 60  0000 C CNN
	1    5100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR4
U 1 1 5AF6BAC2
P 5100 3150
F 0 "#PWR4" H 5100 3150 30  0001 C CNN
F 1 "GND" H 5100 3080 30  0001 C CNN
F 2 "" H 5100 3150 60  0000 C CNN
F 3 "" H 5100 3150 60  0000 C CNN
	1    5100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR6
U 1 1 5AF6BB2E
P 6100 3150
F 0 "#PWR6" H 6100 3150 30  0001 C CNN
F 1 "GND" H 6100 3080 30  0001 C CNN
F 2 "" H 6100 3150 60  0000 C CNN
F 3 "" H 6100 3150 60  0000 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3150 6100 3050
Wire Wire Line
	5100 2900 5100 2850
Wire Wire Line
	5950 2850 5800 2850
Wire Wire Line
	5800 2850 5800 2750
Wire Wire Line
	5800 2550 5800 2400
Wire Wire Line
	5100 2400 5100 2550
Wire Wire Line
	5100 2400 4800 2400
Text Notes 7150 3100 0    60   ~ 0
TODO:\n- Check connector pin numbering\n- Consider discrete amp to boost the\n  DDS out and cut down harmonics\n- Consider third detector to calculate X\n- Footprint for zero bias Schottky\n- Verify opamp power rail\n- Only use one V+ on DDS module\n- Does this need a crystal?\n- Add LEDs\n- Check UART BT pinout\n- Encoder / other input method\n- Connect LCD_BACKLIGHT
$Comp
L device:D D1
U 1 1 5AF6BFBF
P 5250 3600
F 0 "D1" H 5250 3384 50  0000 C CNN
F 1 "D" H 5250 3475 50  0000 C CNN
F 2 "" H 5250 3600 50  0001 C CNN
F 3 "" H 5250 3600 50  0001 C CNN
	1    5250 3600
	-1   0    0    1   
$EndComp
$Comp
L _passive:C C2
U 1 1 5AF6C081
P 5550 3450
F 0 "C2" H 5700 3500 50  0000 L CNN
F 1 "0.1u" H 5663 3405 50  0000 L CNN
F 2 "" H 5540 3425 60  0000 C CNN
F 3 "" H 5540 3425 60  0000 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L _passive:R R4
U 1 1 5AF6C0F6
P 5950 3600
F 0 "R4" V 5750 3600 50  0000 C CNN
F 1 "10k" V 5841 3600 50  0000 C CNN
F 2 "" H 5950 3650 60  0000 C CNN
F 3 "" H 5950 3650 60  0000 C CNN
	1    5950 3600
	0    1    1    0   
$EndComp
$Comp
L _passive:R R6
U 1 1 5AF6C16B
P 6650 3750
F 0 "R6" H 6713 3796 50  0000 L CNN
F 1 "100k" H 6713 3705 50  0000 L CNN
F 2 "" H 6650 3800 60  0000 C CNN
F 3 "" H 6650 3800 60  0000 C CNN
	1    6650 3750
	1    0    0    -1  
$EndComp
$Comp
L _passive:C C4
U 1 1 5AF6C1D6
P 6250 3750
F 0 "C4" H 6363 3796 50  0000 L CNN
F 1 "0.01u" H 6363 3705 50  0000 L CNN
F 2 "" H 6240 3725 60  0000 C CNN
F 3 "" H 6240 3725 60  0000 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2400 5800 2400
Connection ~ 5100 2400
Wire Wire Line
	5550 2850 5800 2850
Connection ~ 5800 2850
Wire Wire Line
	5100 3600 4750 3600
Wire Wire Line
	4750 2850 5100 2850
Connection ~ 5100 2850
Wire Wire Line
	5100 2850 5100 2750
Wire Wire Line
	5400 3600 5550 3600
Wire Wire Line
	5550 3600 5850 3600
$Comp
L power:GND #PWR7
U 1 1 5AF6D5CE
P 6250 3900
F 0 "#PWR7" H 6250 3900 30  0001 C CNN
F 1 "GND" H 6250 3830 30  0001 C CNN
F 2 "" H 6250 3900 60  0000 C CNN
F 3 "" H 6250 3900 60  0000 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3900 6250 3850
$Comp
L power:GND #PWR9
U 1 1 5AF6D76D
P 6650 3900
F 0 "#PWR9" H 6650 3900 30  0001 C CNN
F 1 "GND" H 6650 3830 30  0001 C CNN
F 2 "" H 6650 3900 60  0000 C CNN
F 3 "" H 6650 3900 60  0000 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3900 6650 3850
$Comp
L device:D D2
U 1 1 5AF6D9D4
P 5250 4800
F 0 "D2" H 5250 4584 50  0000 C CNN
F 1 "D" H 5250 4675 50  0000 C CNN
F 2 "" H 5250 4800 50  0001 C CNN
F 3 "" H 5250 4800 50  0001 C CNN
	1    5250 4800
	-1   0    0    1   
$EndComp
$Comp
L _passive:C C3
U 1 1 5AF6D9DA
P 5550 4950
F 0 "C3" H 5663 4996 50  0000 L CNN
F 1 "0.1u" H 5663 4905 50  0000 L CNN
F 2 "" H 5540 4925 60  0000 C CNN
F 3 "" H 5540 4925 60  0000 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
$Comp
L _passive:R R5
U 1 1 5AF6D9E0
P 5950 4800
F 0 "R5" V 5750 4800 50  0000 C CNN
F 1 "10k" V 5841 4800 50  0000 C CNN
F 2 "" H 5950 4850 60  0000 C CNN
F 3 "" H 5950 4850 60  0000 C CNN
	1    5950 4800
	0    1    1    0   
$EndComp
$Comp
L _passive:R R7
U 1 1 5AF6D9E6
P 6650 4950
F 0 "R7" H 6713 4996 50  0000 L CNN
F 1 "100k" H 6713 4905 50  0000 L CNN
F 2 "" H 6650 5000 60  0000 C CNN
F 3 "" H 6650 5000 60  0000 C CNN
	1    6650 4950
	1    0    0    -1  
$EndComp
$Comp
L _passive:C C5
U 1 1 5AF6D9EC
P 6250 4950
F 0 "C5" H 6363 4996 50  0000 L CNN
F 1 "0.01u" H 6363 4905 50  0000 L CNN
F 2 "" H 6240 4925 60  0000 C CNN
F 3 "" H 6240 4925 60  0000 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4800 4750 4800
Wire Wire Line
	5400 4800 5550 4800
Wire Wire Line
	5550 4800 5850 4800
$Comp
L power:GND #PWR8
U 1 1 5AF6D9FA
P 6250 5100
F 0 "#PWR8" H 6250 5100 30  0001 C CNN
F 1 "GND" H 6250 5030 30  0001 C CNN
F 2 "" H 6250 5100 60  0000 C CNN
F 3 "" H 6250 5100 60  0000 C CNN
	1    6250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5100 6250 5050
$Comp
L power:GND #PWR10
U 1 1 5AF6DA01
P 6650 5100
F 0 "#PWR10" H 6650 5100 30  0001 C CNN
F 1 "GND" H 6650 5030 30  0001 C CNN
F 2 "" H 6650 5100 60  0000 C CNN
F 3 "" H 6650 5100 60  0000 C CNN
	1    6650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5100 6650 5050
$Comp
L power:GND #PWR5
U 1 1 5AF6DE3D
P 5550 5100
F 0 "#PWR5" H 5550 5100 30  0001 C CNN
F 1 "GND" H 5550 5030 30  0001 C CNN
F 2 "" H 5550 5100 60  0000 C CNN
F 3 "" H 5550 5100 60  0000 C CNN
	1    5550 5100
	1    0    0    -1  
$EndComp
Text Notes 3900 2100 0    60   ~ 0
Bridge
Text Notes 3900 3450 0    60   ~ 0
Reverse Detector
Text Notes 3900 4650 0    60   ~ 0
Forward Detector
$Comp
L Microchip:MCP6002-I_P U2
U 1 1 5AF6F504
P 7900 3700
F 0 "U2" H 7950 3333 50  0000 C CNN
F 1 "MCP6002" H 7950 3424 50  0000 C CNN
F 2 "dip-sip:DIP-8" H 7900 3400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7900 3300 50  0001 C CNN
F 4 "MCP6002-I/P" H 7900 3000 50  0001 C CNN "MPN"
F 5 "Microchip" H 7900 3100 50  0001 C CNN "Manuf"
F 6 "Microchip MCP6002-I/P" H 7900 3200 50  0001 C CNN "BOM"
	1    7900 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 3600 6250 3600
Wire Wire Line
	6250 3650 6250 3600
Connection ~ 6250 3600
Wire Wire Line
	6250 3600 6650 3600
Wire Wire Line
	6650 3650 6650 3600
Wire Wire Line
	6050 4800 6250 4800
Wire Wire Line
	6650 4850 6650 4800
Wire Wire Line
	6250 4850 6250 4800
Connection ~ 6250 4800
Wire Wire Line
	6250 4800 6650 4800
Wire Wire Line
	4750 3600 4750 4800
$Comp
L _passive:R R8
U 1 1 5AF7459E
P 7600 4100
F 0 "R8" H 7663 4146 50  0000 L CNN
F 1 "470" H 7663 4055 50  0000 L CNN
F 2 "" H 7600 4150 60  0000 C CNN
F 3 "" H 7600 4150 60  0000 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR11
U 1 1 5AF745A4
P 7600 4250
F 0 "#PWR11" H 7600 4250 30  0001 C CNN
F 1 "GND" H 7600 4180 30  0001 C CNN
F 2 "" H 7600 4250 60  0000 C CNN
F 3 "" H 7600 4250 60  0000 C CNN
	1    7600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4250 7600 4200
$Comp
L _passive:R R9
U 1 1 5AF74ABB
P 7600 5300
F 0 "R9" H 7663 5346 50  0000 L CNN
F 1 "470" H 7663 5255 50  0000 L CNN
F 2 "" H 7600 5350 60  0000 C CNN
F 3 "" H 7600 5350 60  0000 C CNN
	1    7600 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR12
U 1 1 5AF74AC1
P 7600 5450
F 0 "#PWR12" H 7600 5450 30  0001 C CNN
F 1 "GND" H 7600 5380 30  0001 C CNN
F 2 "" H 7600 5450 60  0000 C CNN
F 3 "" H 7600 5450 60  0000 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5450 7600 5400
Wire Wire Line
	7600 3800 7600 3950
Wire Wire Line
	7600 5000 7600 5150
$Comp
L _passive:R R10
U 1 1 5AF75CB0
P 8100 3950
F 0 "R10" V 8000 3950 50  0000 C CNN
F 1 "4.7k" V 7900 3950 50  0000 C CNN
F 2 "" H 8100 4000 60  0000 C CNN
F 3 "" H 8100 4000 60  0000 C CNN
	1    8100 3950
	0    -1   -1   0   
$EndComp
$Comp
L _passive:R R11
U 1 1 5AF75FE4
P 8100 5150
F 0 "R11" V 8000 5150 50  0000 C CNN
F 1 "4.7k" V 7900 5150 50  0000 C CNN
F 2 "" H 8100 5200 60  0000 C CNN
F 3 "" H 8100 5200 60  0000 C CNN
	1    8100 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3950 7600 3950
Connection ~ 7600 3950
Wire Wire Line
	7600 3950 7600 4000
Wire Wire Line
	8000 5150 7600 5150
Connection ~ 7600 5150
Wire Wire Line
	7600 5150 7600 5200
Connection ~ 5550 4800
Wire Wire Line
	5550 4850 5550 4800
Wire Wire Line
	5550 5050 5550 5100
Text Notes 7050 3500 0    60   ~ 0
Amplifier\nSection
Text Label 8550 3700 0    60   ~ 0
Vrev
Text Label 8550 4900 0    60   ~ 0
Vfwd
$Comp
L conn-linx:CONN-CONSMA001 J1
U 1 1 5AF7C48A
P 4700 2600
F 0 "J1" H 4550 2650 50  0000 C CNN
F 1 "RFTEST" H 4450 2550 50  0000 C CNN
F 2 "conn-linx:CONN-CONSMA001" H 4700 2600 50  0001 C CNN
F 3 "" H 4700 2600 50  0000 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2600 4800 2400
$Comp
L power:GND #PWR3
U 1 1 5AF7D7E3
P 4700 2750
F 0 "#PWR3" H 4700 2750 30  0001 C CNN
F 1 "GND" H 4700 2680 30  0001 C CNN
F 2 "" H 4700 2750 60  0000 C CNN
F 3 "" H 4700 2750 60  0000 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2750 4700 2700
$Comp
L pcb:TESTPOINT TP1
U 1 1 5AF803C3
P 8300 3700
F 0 "TP1" H 8360 3775 50  0000 L CNN
F 1 "REV" H 8360 3730 50  0001 L CNN
F 2 "conn-test:TEST-SMD-SMALL" H 8250 3450 50  0001 C CNN
F 3 "mod_pdf/TEST.pdf" H 8450 3850 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
Connection ~ 8300 3700
$Comp
L pcb:TESTPOINT TP2
U 1 1 5AF81DA2
P 8300 4900
F 0 "TP2" H 8360 4975 50  0000 L CNN
F 1 "FWD" H 8360 4930 50  0001 L CNN
F 2 "conn-test:TEST-SMD-SMALL" H 8250 4650 50  0001 C CNN
F 3 "mod_pdf/TEST.pdf" H 8450 5050 50  0001 C CNN
	1    8300 4900
	1    0    0    -1  
$EndComp
Connection ~ 8300 4900
$Comp
L rf_modules:DDS_AD9850_CN_DIL U1
U 1 1 5AF86895
P 2950 2950
F 0 "U1" H 2950 3787 60  0000 C CNN
F 1 "DDS_AD9850_CN_DIL" H 2950 3681 60  0000 C CNN
F 2 "" H 2900 2950 60  0001 C CNN
F 3 "" H 2900 2950 60  0001 C CNN
	1    2950 2950
	1    0    0    -1  
$EndComp
NoConn ~ 3650 2500
NoConn ~ 3650 2700
NoConn ~ 3650 2800
$Comp
L power:+5 #PWR1
U 1 1 5AF89BE8
P 2100 2300
F 0 "#PWR1" H 2100 2350 30  0001 C CNN
F 1 "+5" H 2100 2433 50  0000 C CNN
F 2 "" H 2100 2300 60  0000 C CNN
F 3 "" H 2100 2300 60  0000 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2400 2100 2400
Wire Wire Line
	2100 2400 2100 2300
Wire Wire Line
	2250 2500 2100 2500
Wire Wire Line
	2100 2500 2100 2400
Connection ~ 2100 2400
NoConn ~ 2250 3150
NoConn ~ 2250 3250
NoConn ~ 2250 3350
NoConn ~ 2250 3450
NoConn ~ 2250 3550
NoConn ~ 2250 3650
NoConn ~ 2250 3750
NoConn ~ 2250 3850
$Comp
L power:GND #PWR2
U 1 1 5AF92B18
P 2100 4300
F 0 "#PWR2" H 2100 4300 30  0001 C CNN
F 1 "GND" H 2100 4230 30  0001 C CNN
F 2 "" H 2100 4300 60  0000 C CNN
F 3 "" H 2100 4300 60  0000 C CNN
	1    2100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4050 2100 4050
Wire Wire Line
	2100 4050 2100 4150
Wire Wire Line
	2250 4150 2100 4150
Connection ~ 2100 4150
Wire Wire Line
	2100 4150 2100 4300
Connection ~ 5550 3600
Wire Wire Line
	5550 3550 5550 3600
Wire Wire Line
	5100 3100 5100 3150
Wire Wire Line
	5550 3350 5550 2850
Wire Wire Line
	4750 3600 4750 2850
$Comp
L _passive:C C1
U 1 1 5AFA49D9
P 4200 2400
F 0 "C1" V 3950 2400 50  0000 C CNN
F 1 "1u" V 4041 2400 50  0000 C CNN
F 2 "" H 4190 2375 60  0000 C CNN
F 3 "" H 4190 2375 60  0000 C CNN
	1    4200 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2400 4300 2400
Connection ~ 4800 2400
Wire Wire Line
	4100 2400 3650 2400
Wire Notes Line
	3850 5600 3850 1950
Wire Notes Line
	6950 1950 6950 5600
Wire Notes Line
	1650 1950 1650 4500
Wire Notes Line
	1650 4500 6950 4500
Wire Notes Line
	1650 1950 6950 1950
Text Notes 1700 2100 0    60   ~ 0
DDS
Wire Wire Line
	8300 3700 8550 3700
Wire Wire Line
	8300 4900 8550 4900
Wire Wire Line
	8300 3700 8300 3950
Wire Wire Line
	8300 3950 8200 3950
$Comp
L Microchip:MCP6002-I_P U2
U 2 1 5AF720A5
P 7900 4900
F 0 "U2" H 7950 4533 50  0000 C CNN
F 1 "MCP6002" H 7950 4624 50  0000 C CNN
F 2 "dip-sip:DIP-8" H 7900 4600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7900 4500 50  0001 C CNN
F 4 "MCP6002-I/P" H 7900 4200 50  0001 C CNN "MPN"
F 5 "Microchip" H 7900 4300 50  0001 C CNN "Manuf"
F 6 "Microchip MCP6002-I/P" H 7900 4400 50  0001 C CNN "BOM"
	2    7900 4900
	1    0    0    1   
$EndComp
Wire Wire Line
	8200 5150 8300 5150
Wire Wire Line
	8300 5150 8300 4900
Text Label 2200 2700 2    60   ~ 0
DDS_WCLK
Text Label 2200 2800 2    60   ~ 0
DDS_FQUD
Text Label 2200 2900 2    60   ~ 0
DDS_RESET
Text Label 2200 3050 2    60   ~ 0
DDS_DATA
Wire Wire Line
	2250 2700 2200 2700
Wire Wire Line
	2250 2800 2200 2800
Wire Wire Line
	2250 2900 2200 2900
Wire Wire Line
	2250 3050 2200 3050
Wire Wire Line
	6650 4800 7600 4800
Connection ~ 6650 4800
Wire Wire Line
	6650 3600 7600 3600
Connection ~ 6650 3600
Wire Notes Line
	8850 3250 8850 5600
Wire Notes Line
	3850 3250 8850 3250
Wire Notes Line
	3850 5600 8850 5600
Connection ~ 4750 3600
$EndSCHEMATC
