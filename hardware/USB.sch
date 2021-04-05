EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "aWristWatch"
Date "2021-04-05"
Rev "3"
Comp "Andreas Kohler"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3700 1250 0    50   Input ~ 0
VBUS
Text HLabel 3100 2150 0    50   Input ~ 0
D+
Text HLabel 3650 2250 0    50   Input ~ 0
D-
$Comp
L Device:C_Small C702
U 1 1 60604C73
P 3150 2300
F 0 "C702" H 3242 2346 50  0000 L CNN
F 1 "47p" H 3242 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3150 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C704
U 1 1 60604FCD
P 3700 2400
F 0 "C704" H 3792 2446 50  0000 L CNN
F 1 "47p" H 3792 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3700 2400 50  0001 C CNN
F 3 "~" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2150 3150 2150
Wire Wire Line
	3150 2150 3150 2200
Wire Wire Line
	3700 2300 3700 2250
Wire Wire Line
	3700 2250 3650 2250
$Comp
L Interface_USB:FT230XQ U701
U 1 1 60605A90
P 5350 2250
F 0 "U701" H 4850 2850 50  0000 C CNN
F 1 "FT230XQ" H 5750 2850 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm" H 6700 1650 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 5350 2250 50  0001 C CNN
	1    5350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R701
U 1 1 60606806
P 4050 2150
F 0 "R701" V 4100 2350 50  0000 C CNN
F 1 "27R" V 4100 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 2150 50  0001 C CNN
F 3 "~" H 4050 2150 50  0001 C CNN
	1    4050 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R702
U 1 1 6060717E
P 4050 2250
F 0 "R702" V 4100 2450 50  0000 C CNN
F 1 "27R" V 4100 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 2250 50  0001 C CNN
F 3 "~" H 4050 2250 50  0001 C CNN
	1    4050 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2150 3950 2150
Connection ~ 3150 2150
Wire Wire Line
	3950 2250 3700 2250
Connection ~ 3700 2250
$Comp
L power:GND #PWR0148
U 1 1 60608C5F
P 5350 3050
F 0 "#PWR0148" H 5350 2800 50  0001 C CNN
F 1 "GND" H 5355 2877 50  0001 C CNN
F 2 "" H 5350 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3050 5350 3000
Wire Wire Line
	5350 3000 5250 3000
Wire Wire Line
	5250 3000 5250 2950
Wire Wire Line
	5350 2950 5350 3000
Connection ~ 5350 3000
Wire Wire Line
	5350 3000 5450 3000
Wire Wire Line
	5450 3000 5450 2950
Wire Wire Line
	3700 3000 3700 2500
Wire Wire Line
	3700 3000 3150 3000
Wire Wire Line
	3150 3000 3150 2400
Connection ~ 3700 3000
$Comp
L Device:C_Small C701
U 1 1 60609B81
P 2850 2850
F 0 "C701" H 2942 2896 50  0000 L CNN
F 1 "100n" H 2942 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2850 2850 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 2850 2850 50  0001 C CNN
F 4 "KEMET" H 2850 2850 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 2850 2850 50  0001 C CNN "Order"
	1    2850 2850
	1    0    0    -1  
$EndComp
Text Label 4450 1850 0    50   ~ 0
3V3
Wire Wire Line
	4450 1850 4650 1850
Text Label 2700 2700 0    50   ~ 0
3V3
Wire Wire Line
	2700 2700 2850 2700
Wire Wire Line
	2850 2700 2850 2750
Wire Wire Line
	2850 2950 2850 3000
Wire Wire Line
	2850 3000 3150 3000
Connection ~ 3150 3000
Text Label 5600 1450 2    50   ~ 0
3V3
Wire Wire Line
	5600 1450 5450 1450
Wire Wire Line
	5450 1450 5450 1550
Text Label 4450 2450 0    50   ~ 0
3V3
Wire Wire Line
	4450 2450 4650 2450
$Comp
L Device:C_Small C705
U 1 1 6060C0E4
P 4200 1400
F 0 "C705" H 4292 1446 50  0000 L CNN
F 1 "100n" H 4292 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4200 1400 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 4200 1400 50  0001 C CNN
F 4 "KEMET" H 4200 1400 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 4200 1400 50  0001 C CNN "Order"
	1    4200 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C703
U 1 1 6060C3B7
P 3850 1400
F 0 "C703" H 3942 1446 50  0000 L CNN
F 1 "4.7u" H 3942 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3850 1400 50  0001 C CNN
F 3 "~" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 6060D46B
P 4050 1600
F 0 "#PWR0149" H 4050 1350 50  0001 C CNN
F 1 "GND" H 4055 1427 50  0000 C CNN
F 2 "" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0001 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1600 4050 1550
Wire Wire Line
	4050 1550 3850 1550
Wire Wire Line
	3850 1550 3850 1500
Wire Wire Line
	4050 1550 4200 1550
Wire Wire Line
	4200 1550 4200 1500
Connection ~ 4050 1550
Wire Wire Line
	4200 1300 4200 1250
Wire Wire Line
	4200 1250 3850 1250
Wire Wire Line
	3850 1250 3850 1300
Wire Wire Line
	4200 1250 5250 1250
Wire Wire Line
	5250 1250 5250 1550
Connection ~ 4200 1250
Wire Wire Line
	3700 1250 3850 1250
Connection ~ 3850 1250
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 60612620
P 6450 1350
AR Path="/6063DAC2/60612620" Ref="Q?"  Part="1" 
AR Path="/605F7522/60612620" Ref="Q701"  Part="1" 
F 0 "Q701" V 6792 1350 50  0000 C CNN
F 1 "DMP2110UW-7" V 6701 1350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 6650 1450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP2110UW.pdf" H 6450 1350 50  0001 C CNN
F 4 "Diodes Incorporated" H 6450 1350 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/Diodes-Incorporated/DMP2110UW-7?qs=bZr6mbWTK5lZsAURvLPe3w%3D%3D" H 6450 1350 50  0001 C CNN "Order"
	1    6450 1350
	0    1    -1   0   
$EndComp
Wire Wire Line
	6250 1250 6050 1250
Connection ~ 5250 1250
$Comp
L Device:R_Small R704
U 1 1 60613FC5
P 6450 2050
F 0 "R704" H 6509 2096 50  0000 L CNN
F 1 "1k" H 6509 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6450 2050 50  0001 C CNN
F 3 "~" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R703
U 1 1 60614522
P 6050 1450
F 0 "R703" H 6109 1496 50  0000 L CNN
F 1 "100k" H 6109 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6050 1450 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/418/5/NG_DS_9-1773463-9_A-1358566.pdf" H 6050 1450 50  0001 C CNN
F 4 "TE Connectivity / Holsworthy" H 6050 1450 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/279-CRGP0603F100K" H 6050 1450 50  0001 C CNN "Order"
	1    6050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1350 6050 1250
Connection ~ 6050 1250
Wire Wire Line
	6050 1250 5250 1250
Wire Wire Line
	6050 1550 6050 1600
Wire Wire Line
	6050 1600 6450 1600
Wire Wire Line
	6450 1600 6450 1550
Wire Wire Line
	6450 1600 6450 1950
Connection ~ 6450 1600
Wire Wire Line
	6450 2150 6450 2650
Wire Wire Line
	6450 2650 6050 2650
$Comp
L Device:C_Small C706
U 1 1 60616A19
P 6800 1400
F 0 "C706" H 6892 1446 50  0000 L CNN
F 1 "100n" H 6892 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 1400 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 6800 1400 50  0001 C CNN
F 4 "KEMET" H 6800 1400 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 6800 1400 50  0001 C CNN "Order"
	1    6800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1600 6800 1600
Wire Wire Line
	6800 1600 6800 1500
Wire Wire Line
	6800 1300 6800 1250
Wire Wire Line
	6800 1250 6650 1250
$Comp
L Device:C_Small C707
U 1 1 606183FA
P 7300 1400
F 0 "C707" H 7392 1446 50  0000 L CNN
F 1 "100n" H 7392 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7300 1400 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 7300 1400 50  0001 C CNN
F 4 "KEMET" H 7300 1400 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 7300 1400 50  0001 C CNN "Order"
	1    7300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1250 7300 1250
Wire Wire Line
	7300 1250 7300 1300
Connection ~ 6800 1250
Wire Wire Line
	5450 3000 7300 3000
Wire Wire Line
	7300 3000 7300 1500
Connection ~ 5450 3000
Text Label 6100 2650 0    50   ~ 0
PWERN#
Text HLabel 7650 1250 2    50   Output ~ 0
5V
Wire Wire Line
	7650 1250 7500 1250
Connection ~ 7300 1250
Text HLabel 6050 1850 2    50   Output ~ 0
TX
Text HLabel 6050 2050 2    50   Output ~ 0
RTS
Text HLabel 6050 1950 2    50   Input ~ 0
RX
Text HLabel 6050 2150 2    50   Input ~ 0
CTS
Text Label 4350 2150 0    50   ~ 0
CHIP_D+
Text Label 4350 2250 0    50   ~ 0
CHIP_D-
Wire Wire Line
	4150 2150 4650 2150
Wire Wire Line
	4150 2250 4650 2250
Wire Wire Line
	3700 3000 5250 3000
Connection ~ 5250 3000
NoConn ~ 6050 2350
NoConn ~ 6050 2450
NoConn ~ 6050 2550
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 606AA058
P 7500 1250
F 0 "#FLG0103" H 7500 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 1423 50  0000 C CNN
F 2 "" H 7500 1250 50  0001 C CNN
F 3 "~" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
Connection ~ 7500 1250
Wire Wire Line
	7500 1250 7300 1250
$EndSCHEMATC
