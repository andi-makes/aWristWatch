EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L watch:TCPP01-M12 U?
U 1 1 6072C21E
P 5000 3150
AR Path="/6072C21E" Ref="U?"  Part="1" 
AR Path="/6071FFAF/6072C21E" Ref="U12"  Part="1" 
F 0 "U12" H 4650 3750 50  0000 C CNN
F 1 "TCPP01-M12" H 5300 3750 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-12-1EP_3x3mm_P0.51mm_EP1.45x1.45mm" H 6200 4150 50  0001 C CNN
F 3 "" H 6200 4150 50  0001 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener_Small D?
U 1 1 60731C37
P 2150 2950
AR Path="/60731C37" Ref="D?"  Part="1" 
AR Path="/6071FFAF/60731C37" Ref="D1"  Part="1" 
F 0 "D1" V 2104 3020 50  0000 L CNN
F 1 "ESDA25P35-1U1M" V 2195 3020 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2150 2950 50  0001 C CNN
F 3 "~" V 2150 2950 50  0001 C CNN
	1    2150 2950
	0    1    1    0   
$EndComp
Text HLabel 2000 2750 0    50   Input ~ 0
VBUS
Text HLabel 4500 3100 0    50   Input ~ 0
CC1
Text HLabel 4500 3200 0    50   Input ~ 0
CC2
$Comp
L power:GND #PWR0130
U 1 1 605BE08D
P 5550 3650
F 0 "#PWR0130" H 5550 3400 50  0001 C CNN
F 1 "GND" H 5555 3477 50  0000 C CNN
F 2 "" H 5550 3650 50  0001 C CNN
F 3 "" H 5550 3650 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3500 5550 3500
Wire Wire Line
	5550 3500 5550 3600
Wire Wire Line
	5500 3600 5550 3600
Connection ~ 5550 3600
Wire Wire Line
	5550 3600 5550 3650
$Comp
L power:GND #PWR0131
U 1 1 605BEA49
P 4450 3650
F 0 "#PWR0131" H 4450 3400 50  0001 C CNN
F 1 "GND" H 4455 3477 50  0000 C CNN
F 2 "" H 4450 3650 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3650 4450 3600
Wire Wire Line
	4450 3400 4500 3400
Wire Wire Line
	4500 3500 4450 3500
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 4450 3400
Wire Wire Line
	4500 3600 4450 3600
Connection ~ 4450 3600
Wire Wire Line
	4450 3600 4450 3500
Wire Wire Line
	2150 2850 2150 2750
Wire Wire Line
	2150 2750 2000 2750
$Comp
L Device:R_Small R10
U 1 1 605BF926
P 3000 2900
F 0 "R10" H 3059 2946 50  0000 L CNN
F 1 "10k" H 3059 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 2900 50  0001 C CNN
F 3 "~" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 605C0410
P 3000 3200
F 0 "R11" H 3059 3246 50  0000 L CNN
F 1 "2k7" H 3059 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2750 3000 2750
Wire Wire Line
	3000 2750 3000 2800
Connection ~ 2150 2750
$Comp
L Device:D_Schottky_Small D2
U 1 1 605C65BD
P 3400 2750
F 0 "D2" H 3400 2543 50  0000 C CNN
F 1 "NSR20F30NXT5G" H 3400 2634 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3400 2750 50  0001 C CNN
F 3 "~" V 3400 2750 50  0001 C CNN
	1    3400 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 605C70FD
P 3650 2850
F 0 "C1" H 3742 2896 50  0000 L CNN
F 1 "100n" H 3742 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3650 2850 50  0001 C CNN
F 3 "~" H 3650 2850 50  0001 C CNN
	1    3650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 605BDB68
P 2150 3050
F 0 "#PWR0132" H 2150 2800 50  0001 C CNN
F 1 "GND" H 2155 2877 50  0000 C CNN
F 2 "" H 2150 3050 50  0001 C CNN
F 3 "" H 2150 3050 50  0001 C CNN
	1    2150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 605C1A8E
P 3000 3300
F 0 "#PWR0133" H 3000 3050 50  0001 C CNN
F 1 "GND" H 3005 3127 50  0000 C CNN
F 2 "" H 3000 3300 50  0001 C CNN
F 3 "" H 3000 3300 50  0001 C CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 3000 3050
Wire Wire Line
	3300 2750 3000 2750
Connection ~ 3000 2750
$Comp
L power:GND #PWR0136
U 1 1 605CCB83
P 3650 2950
F 0 "#PWR0136" H 3650 2700 50  0001 C CNN
F 1 "GND" H 3655 2777 50  0000 C CNN
F 2 "" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0001 C CNN
	1    3650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2750 3650 2750
Connection ~ 3650 2750
Text Label 3500 3050 2    50   ~ 0
V_BUS_CTRL
Wire Wire Line
	3500 3050 3000 3050
Connection ~ 3000 3050
Wire Wire Line
	3000 3050 3000 3100
Text Label 4000 2950 0    50   ~ 0
V_BUS_CTRL
Wire Wire Line
	4000 2950 4500 2950
$Comp
L Transistor_FET:DMN6140L Q1
U 1 1 605D3F9F
P 5000 2300
F 0 "Q1" V 5342 2300 50  0000 C CNN
F 1 "DMN6140L" V 5251 2300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 2225 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMN6140L.pdf" H 5000 2300 50  0001 L CNN
	1    5000 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2200 5600 2200
Wire Wire Line
	5600 2200 5600 2750
Wire Wire Line
	5600 2750 5500 2750
Text HLabel 5700 2750 2    50   Output ~ 0
5V@500mA
Wire Wire Line
	5700 2750 5600 2750
Connection ~ 5600 2750
Wire Wire Line
	3650 2750 4500 2750
Wire Wire Line
	3000 2200 3000 2750
Wire Wire Line
	3000 2200 4800 2200
$Comp
L Device:R_Small R?
U 1 1 605C8234
P 5700 3350
F 0 "R?" H 5759 3396 50  0000 L CNN
F 1 "5k1" H 5759 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5700 3350 50  0001 C CNN
F 3 "~" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 605C8525
P 6000 3350
F 0 "R?" H 6059 3396 50  0000 L CNN
F 1 "5k1" H 6059 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6000 3350 50  0001 C CNN
F 3 "~" H 6000 3350 50  0001 C CNN
	1    6000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3200 5700 3250
Wire Wire Line
	5500 3200 5700 3200
Wire Wire Line
	6000 3100 6000 3250
Wire Wire Line
	5500 3100 6000 3100
Wire Wire Line
	5700 3450 5700 3600
Wire Wire Line
	5700 3600 5550 3600
Wire Wire Line
	6000 3450 6000 3600
Wire Wire Line
	6000 3600 5700 3600
Connection ~ 5700 3600
$EndSCHEMATC
