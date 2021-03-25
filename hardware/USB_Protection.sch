EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
AR Path="/60604F0C/6060934C/6072C21E" Ref="U?"  Part="1" 
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
P 2100 2400
AR Path="/60731C37" Ref="D?"  Part="1" 
AR Path="/6071FFAF/60731C37" Ref="D1"  Part="1" 
AR Path="/60604F0C/6060934C/60731C37" Ref="D?"  Part="1" 
F 0 "D1" V 2054 2470 50  0000 L CNN
F 1 "ESDA25P35-1U1M" V 2145 2470 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2100 2400 50  0001 C CNN
F 3 "~" V 2100 2400 50  0001 C CNN
	1    2100 2400
	0    1    1    0   
$EndComp
Text HLabel 1650 2200 0    50   Input ~ 0
VBUS
Text HLabel 4500 3100 0    50   Input ~ 0
CC1
Text HLabel 4500 3200 0    50   Input ~ 0
CC2
$Comp
L power:GND #PWR0130
U 1 1 605BE08D
P 5550 3650
AR Path="/6071FFAF/605BE08D" Ref="#PWR0130"  Part="1" 
AR Path="/60604F0C/6060934C/605BE08D" Ref="#PWR?"  Part="1" 
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
AR Path="/6071FFAF/605BEA49" Ref="#PWR0131"  Part="1" 
AR Path="/60604F0C/6060934C/605BEA49" Ref="#PWR?"  Part="1" 
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
	2100 2300 2100 2200
$Comp
L Device:R_Small R10
U 1 1 605BF926
P 3000 2400
AR Path="/6071FFAF/605BF926" Ref="R10"  Part="1" 
AR Path="/60604F0C/6060934C/605BF926" Ref="R?"  Part="1" 
F 0 "R10" H 3059 2446 50  0000 L CNN
F 1 "10k" H 3059 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 2400 50  0001 C CNN
F 3 "~" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 605C0410
P 3000 2700
AR Path="/6071FFAF/605C0410" Ref="R11"  Part="1" 
AR Path="/60604F0C/6060934C/605C0410" Ref="R?"  Part="1" 
F 0 "R11" H 3059 2746 50  0000 L CNN
F 1 "2k7" H 3059 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 2700 50  0001 C CNN
F 3 "~" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 605C65BD
P 3650 2500
AR Path="/6071FFAF/605C65BD" Ref="D2"  Part="1" 
AR Path="/60604F0C/6060934C/605C65BD" Ref="D?"  Part="1" 
F 0 "D2" V 3750 2400 50  0000 C CNN
F 1 "NSR20F30NXT5G" V 3550 2150 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3650 2500 50  0001 C CNN
F 3 "~" V 3650 2500 50  0001 C CNN
	1    3650 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 605C70FD
P 3650 2850
AR Path="/6071FFAF/605C70FD" Ref="C1"  Part="1" 
AR Path="/60604F0C/6060934C/605C70FD" Ref="C?"  Part="1" 
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
P 2100 2500
AR Path="/6071FFAF/605BDB68" Ref="#PWR0132"  Part="1" 
AR Path="/60604F0C/6060934C/605BDB68" Ref="#PWR?"  Part="1" 
F 0 "#PWR0132" H 2100 2250 50  0001 C CNN
F 1 "GND" H 2105 2327 50  0000 C CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 605C1A8E
P 3000 2800
AR Path="/6071FFAF/605C1A8E" Ref="#PWR0133"  Part="1" 
AR Path="/60604F0C/6060934C/605C1A8E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0133" H 3000 2550 50  0001 C CNN
F 1 "GND" H 3005 2627 50  0000 C CNN
F 2 "" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2500 3000 2550
$Comp
L power:GND #PWR0136
U 1 1 605CCB83
P 3650 2950
AR Path="/6071FFAF/605CCB83" Ref="#PWR0136"  Part="1" 
AR Path="/60604F0C/6060934C/605CCB83" Ref="#PWR?"  Part="1" 
F 0 "#PWR0136" H 3650 2700 50  0001 C CNN
F 1 "GND" H 3655 2777 50  0000 C CNN
F 2 "" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0001 C CNN
	1    3650 2950
	1    0    0    -1  
$EndComp
Text Label 3500 2550 2    50   ~ 0
V_BUS_CTRL
Wire Wire Line
	3500 2550 3000 2550
Connection ~ 3000 2550
Wire Wire Line
	3000 2550 3000 2600
Text Label 4000 2950 0    50   ~ 0
V_BUS_CTRL
Wire Wire Line
	4000 2950 4500 2950
$Comp
L Transistor_FET:DMN6140L Q1
U 1 1 605D3F9F
P 5000 2300
AR Path="/6071FFAF/605D3F9F" Ref="Q1"  Part="1" 
AR Path="/60604F0C/6060934C/605D3F9F" Ref="Q?"  Part="1" 
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
Text HLabel 5900 2750 2    50   Output ~ 0
5V@500mA
Connection ~ 5600 2750
Wire Wire Line
	3650 2750 4500 2750
Wire Wire Line
	3000 2200 3650 2200
Wire Wire Line
	5600 2750 5850 2750
Wire Wire Line
	5550 3600 5850 3600
Wire Wire Line
	5550 3500 5550 3200
Wire Wire Line
	5550 3100 5500 3100
Connection ~ 5550 3500
Wire Wire Line
	5500 3200 5550 3200
Connection ~ 5550 3200
Wire Wire Line
	5550 3200 5550 3100
$Comp
L Device:D_Zener_Small D?
U 1 1 605F2ABA
P 5850 3100
AR Path="/605F2ABA" Ref="D?"  Part="1" 
AR Path="/6071FFAF/605F2ABA" Ref="D?"  Part="1" 
AR Path="/60604F0C/6060934C/605F2ABA" Ref="D?"  Part="1" 
F 0 "D?" V 5804 3170 50  0000 L CNN
F 1 "SMBJ5.0CA-Q" V 5895 3170 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5850 3100 50  0001 C CNN
F 3 "~" V 5850 3100 50  0001 C CNN
	1    5850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 2750 5850 3000
Wire Wire Line
	5850 3200 5850 3600
Text Notes 4500 3950 0    50   ~ 0
Don't need Rd, handled inside the chip
$Comp
L Device:Polyfuse_Small F?
U 1 1 6064BF52
P 1850 2200
F 0 "F?" V 2055 2200 50  0000 C CNN
F 1 "1812L050/60MR" V 1964 2200 50  0000 C CNN
F 2 "" H 1900 2000 50  0001 L CNN
F 3 "~" H 1850 2200 50  0001 C CNN
	1    1850 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2200 2100 2200
Wire Wire Line
	1850 2200 1750 2200
Wire Wire Line
	3650 2400 3650 2200
Connection ~ 3650 2200
Wire Wire Line
	3650 2200 4800 2200
Wire Wire Line
	3650 2600 3650 2750
Connection ~ 3650 2750
Connection ~ 1750 2200
Wire Wire Line
	1750 2200 1650 2200
Wire Wire Line
	3000 2200 3000 2300
Wire Wire Line
	3000 2200 2100 2200
Connection ~ 3000 2200
Connection ~ 2100 2200
Wire Wire Line
	5900 2750 5850 2750
Connection ~ 5850 2750
$EndSCHEMATC
