EESchema Schematic File Version 4
LIBS:Shield-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
NoConn ~ 9400 1600
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:C C1
U 1 1 60433CC3
P 3100 1950
F 0 "C1" H 3215 1996 50  0000 L CNN
F 1 "100n" H 3215 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3138 1800 50  0001 C CNN
F 3 "~" H 3100 1950 50  0001 C CNN
	1    3100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60436443
P 2700 1750
F 0 "R1" V 2907 1750 50  0000 C CNN
F 1 "10k" V 2816 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2630 1750 50  0001 C CNN
F 3 "~" H 2700 1750 50  0001 C CNN
	1    2700 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 1750 3100 1750
Wire Wire Line
	3100 1750 3100 1800
$Comp
L Device:R R2
U 1 1 604430BB
P 3500 1950
F 0 "R2" H 3430 1904 50  0000 R CNN
F 1 "100k" H 3430 1995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6044584A
P 5500 1800
F 0 "R3" H 5430 1754 50  0000 R CNN
F 1 "1k" H 5430 1845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5430 1800 50  0001 C CNN
F 3 "~" H 5500 1800 50  0001 C CNN
	1    5500 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1750 3500 1750
Connection ~ 3100 1750
Wire Wire Line
	3500 1800 3500 1750
$Comp
L Librairie_LT1050:LT1050 U1
U 1 1 6044F244
P 4350 1650
F 0 "U1" H 4350 2125 50  0000 C CNN
F 1 "LT1050" H 4350 2034 50  0000 C CNN
F 2 "LIB_empreinte:LTC1050" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1750 4000 1750
Connection ~ 3500 1750
Wire Wire Line
	3500 2100 3500 2400
Wire Wire Line
	3500 2400 3100 2400
Wire Wire Line
	3100 2400 3100 2100
Wire Wire Line
	3100 2400 3100 2650
Connection ~ 3100 2400
Text GLabel 4000 1550 0    50   Input ~ 0
IN-
Text GLabel 5550 1300 2    50   Output ~ 0
IN-
$Comp
L power:GND #PWR0101
U 1 1 6046656D
P 3100 2650
F 0 "#PWR0101" H 3100 2400 50  0001 C CNN
F 1 "GND" H 3105 2477 50  0000 C CNN
F 2 "" H 3100 2650 50  0001 C CNN
F 3 "" H 3100 2650 50  0001 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6046F493
P 6100 1150
F 0 "C2" H 6215 1196 50  0000 L CNN
F 1 "1u" H 6215 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W6.0mm_P5.00mm" H 6138 1000 50  0001 C CNN
F 3 "~" H 6100 1150 50  0001 C CNN
	1    6100 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6046F499
P 6500 1150
F 0 "R4" H 6430 1104 50  0000 R CNN
F 1 "100k" H 6430 1195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6430 1150 50  0001 C CNN
F 3 "~" H 6500 1150 50  0001 C CNN
	1    6500 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 1300 6500 1600
Wire Wire Line
	6100 1600 6100 1300
Wire Wire Line
	6500 1000 6100 1000
Wire Wire Line
	5500 1000 6100 1000
Connection ~ 6100 1000
$Comp
L power:GND #PWR0102
U 1 1 60473785
P 5500 1950
F 0 "#PWR0102" H 5500 1700 50  0001 C CNN
F 1 "GND" H 5505 1777 50  0000 C CNN
F 2 "" H 5500 1950 50  0001 C CNN
F 3 "" H 5500 1950 50  0001 C CNN
	1    5500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1600 6100 1600
Wire Wire Line
	6100 1600 6500 1600
Connection ~ 6100 1600
Wire Wire Line
	6500 1600 6750 1600
Connection ~ 6500 1600
Text GLabel 4700 1750 2    50   Output ~ 0
OUT
Text GLabel 5900 1600 0    50   Input ~ 0
OUT
Wire Wire Line
	5500 1000 5500 1300
Wire Wire Line
	5550 1300 5500 1300
Connection ~ 5500 1300
Wire Wire Line
	5500 1300 5500 1650
$Comp
L Device:R R5
U 1 1 604863B1
P 6900 1600
F 0 "R5" V 6693 1600 50  0000 C CNN
F 1 "1k" V 6784 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
	1    6900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1600 7350 1600
Wire Wire Line
	7350 1600 7350 1800
Connection ~ 7350 1600
Wire Wire Line
	7350 1600 7700 1600
$Comp
L Device:C C3
U 1 1 60489841
P 7350 1950
F 0 "C3" H 7465 1996 50  0000 L CNN
F 1 "10n" H 7465 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7388 1800 50  0001 C CNN
F 3 "~" H 7350 1950 50  0001 C CNN
	1    7350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6048B1B5
P 7350 2100
F 0 "#PWR0103" H 7350 1850 50  0001 C CNN
F 1 "GND" H 7355 1927 50  0000 C CNN
F 2 "" H 7350 2100 50  0001 C CNN
F 3 "" H 7350 2100 50  0001 C CNN
	1    7350 2100
	1    0    0    -1  
$EndComp
Text GLabel 7700 1600 2    50   Output ~ 0
ADC
Text GLabel 8900 2500 0    50   Input ~ 0
ADC
$Comp
L Librairie_LT1050:Capteur_graphite U2
U 1 1 604A71F3
P 4350 3000
F 0 "U2" H 4708 3515 50  0000 C CNN
F 1 "Capteur_graphite" H 4708 3424 50  0000 C CNN
F 2 "LIB_empreinte:Capteur_graphite" H 4600 3100 50  0001 C CNN
F 3 "" H 4600 3100 50  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
Text GLabel 5550 2900 2    50   Output ~ 0
Sensor1
Text GLabel 2550 1750 0    50   Input ~ 0
Sensor1
$Comp
L Librairie_LT1050:HC-05 U3
U 1 1 604B274B
P 1150 5250
F 0 "U3" H 1283 5665 50  0000 C CNN
F 1 "HC-05" H 1283 5574 50  0000 C CNN
F 2 "LIB_empreinte:HC-05" H 1150 5250 50  0001 C CNN
F 3 "" H 1150 5250 50  0001 C CNN
	1    1150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 604BAA2C
P 2100 5300
F 0 "#PWR0104" H 2100 5050 50  0001 C CNN
F 1 "GND" H 2105 5127 50  0000 C CNN
F 2 "" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0001 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5250 2000 5250
Wire Wire Line
	2100 5250 2100 5300
Text GLabel 1600 5350 2    50   Input ~ 0
TXD
Text GLabel 1600 5450 2    50   Output ~ 0
RXD
$Comp
L Librairie_LT1050:OLED U5
U 1 1 604BCFBF
P 1250 6350
F 0 "U5" H 1408 6775 50  0000 C CNN
F 1 "OLED" H 1408 6684 50  0000 C CNN
F 2 "LIB_empreinte:OLED" H 1250 6350 50  0001 C CNN
F 3 "" H 1250 6350 50  0001 C CNN
	1    1250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6300 2000 5250
Connection ~ 2000 5250
Wire Wire Line
	2000 5250 2100 5250
Wire Wire Line
	1800 6300 2000 6300
Text GLabel 1800 6450 2    50   Input ~ 0
SCL
Text GLabel 1800 6600 2    50   BiDi ~ 0
SDA
$Comp
L Librairie_LT1050:KY-040 U4
U 1 1 604C668D
P 2900 5800
F 0 "U4" H 3008 6225 50  0000 C CNN
F 1 "KY-040" H 3008 6134 50  0000 C CNN
F 2 "LIB_empreinte:KY-040" H 2900 5800 50  0001 C CNN
F 3 "" H 2900 5800 50  0001 C CNN
	1    2900 5800
	1    0    0    -1  
$EndComp
Text GLabel 3450 5600 2    50   Input ~ 0
CLK
Text GLabel 3450 5700 2    50   Output ~ 0
DT
Text GLabel 3450 5850 2    50   Output ~ 0
SW
$Comp
L power:GND #PWR0105
U 1 1 604C81D4
P 3600 6150
F 0 "#PWR0105" H 3600 5900 50  0001 C CNN
F 1 "GND" H 3605 5977 50  0000 C CNN
F 2 "" H 3600 6150 50  0001 C CNN
F 3 "" H 3600 6150 50  0001 C CNN
	1    3600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6100 3600 6100
Wire Wire Line
	3600 6100 3600 6150
Wire Notes Line
	8150 700  1850 700 
Wire Notes Line
	1850 700  1850 3600
Wire Notes Line
	1850 3600 8150 3600
$Comp
L power:GND #PWR0106
U 1 1 604FB63E
P 9900 5650
F 0 "#PWR0106" H 9900 5400 50  0001 C CNN
F 1 "GND" H 9905 5477 50  0000 C CNN
F 2 "" H 9900 5650 50  0001 C CNN
F 3 "" H 9900 5650 50  0001 C CNN
	1    9900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 604FE7D7
P 10250 5400
F 0 "#PWR0107" H 10250 5250 50  0001 C CNN
F 1 "+5V" H 10265 5573 50  0000 C CNN
F 2 "" H 10250 5400 50  0001 C CNN
F 3 "" H 10250 5400 50  0001 C CNN
	1    10250 5400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 604FEE0B
P 9900 5400
F 0 "#FLG0101" H 9900 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 5573 50  0000 C CNN
F 2 "" H 9900 5400 50  0001 C CNN
F 3 "~" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 604FFAB5
P 10250 5650
F 0 "#FLG0102" H 10250 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 5823 50  0000 C CNN
F 2 "" H 10250 5650 50  0001 C CNN
F 3 "~" H 10250 5650 50  0001 C CNN
	1    10250 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 5400 9900 5650
Wire Wire Line
	10250 5400 10250 5650
$Comp
L power:+5V #PWR0108
U 1 1 605199D9
P 5550 3100
F 0 "#PWR0108" H 5550 2950 50  0001 C CNN
F 1 "+5V" H 5565 3273 50  0000 C CNN
F 2 "" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3100 50  0001 C CNN
	1    5550 3100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 6051E87A
P 1600 5150
F 0 "#PWR0109" H 1600 5000 50  0001 C CNN
F 1 "+5V" H 1615 5323 50  0000 C CNN
F 2 "" H 1600 5150 50  0001 C CNN
F 3 "" H 1600 5150 50  0001 C CNN
	1    1600 5150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 60526530
P 3450 5950
F 0 "#PWR0110" H 3450 5800 50  0001 C CNN
F 1 "+5V" H 3465 6123 50  0000 C CNN
F 2 "" H 3450 5950 50  0001 C CNN
F 3 "" H 3450 5950 50  0001 C CNN
	1    3450 5950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6052D736
P 1800 6150
F 0 "#PWR0111" H 1800 6000 50  0001 C CNN
F 1 "+5V" H 1815 6323 50  0000 C CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 6052FB4F
P 5200 1300
F 0 "#PWR0112" H 5200 1150 50  0001 C CNN
F 1 "+5V" H 5215 1473 50  0000 C CNN
F 2 "" H 5200 1300 50  0001 C CNN
F 3 "" H 5200 1300 50  0001 C CNN
	1    5200 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60531FD6
P 4000 1950
F 0 "#PWR0113" H 4000 1700 50  0001 C CNN
F 1 "GND" H 4005 1777 50  0000 C CNN
F 2 "" H 4000 1950 50  0001 C CNN
F 3 "" H 4000 1950 50  0001 C CNN
	1    4000 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4700 1950
Text GLabel 9400 3000 0    50   Output ~ 0
SCL
Text GLabel 10550 3000 2    50   Input ~ 0
TXD
Text GLabel 10550 2900 2    50   Output ~ 0
RXD
Text GLabel 10200 2800 2    50   Output ~ 0
CLK
Text GLabel 10550 1900 2    50   Input ~ 0
DT
Text GLabel 10550 1800 2    50   Input ~ 0
SW
NoConn ~ 10200 1700
NoConn ~ 10200 1600
NoConn ~ 10200 1400
NoConn ~ 9400 1700
NoConn ~ 9400 1800
NoConn ~ 10200 2000
NoConn ~ 10200 2100
NoConn ~ 9400 2600
NoConn ~ 9400 2300
NoConn ~ 9400 2700
NoConn ~ 9400 2800
NoConn ~ 10200 2300
NoConn ~ 10200 2400
NoConn ~ 10200 2500
NoConn ~ 10200 2600
NoConn ~ 10200 2700
$Comp
L Device:C C4
U 1 1 6059A156
P 5200 1450
F 0 "C4" V 5452 1450 50  0000 C CNN
F 1 "100n" V 5361 1450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5238 1300 50  0001 C CNN
F 3 "~" H 5200 1450 50  0001 C CNN
	1    5200 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1550 4700 1550
$Comp
L power:GND #PWR0114
U 1 1 605A89F3
P 5200 1600
F 0 "#PWR0114" H 5200 1350 50  0001 C CNN
F 1 "GND" H 5205 1427 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1300 4850 1300
Wire Wire Line
	4850 1300 4850 1550
Connection ~ 5200 1300
Wire Notes Line
	8500 500  8500 3450
Text GLabel 9400 2900 0    50   BiDi ~ 0
SDA
NoConn ~ 10200 1300
NoConn ~ 10200 1200
$EndSCHEMATC
