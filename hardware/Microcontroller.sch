EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "aWristWatch"
Date "2021-04-05"
Rev "3"
Comp "Andreas Kohler"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C_Small C?
U 1 1 605DDCF4
P 3700 1600
AR Path="/605DDCF4" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDCF4" Ref="C605"  Part="1" 
F 0 "C605" H 3792 1646 50  0000 L CNN
F 1 "10u" H 3792 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3700 1600 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/585/MLCC-1837944.pdf" H 3700 1600 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/187-CL10B106MQ8NRNC" H 3700 1600 50  0001 C CNN "Order"
F 5 "Samsung Electro-Mechanics" H 3700 1600 50  0001 C CNN "Manufacturer"
F 6 "CL10B106MQ8NRNC" H 3700 1600 50  0001 C CNN "MNR"
	1    3700 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605DDCFB
P 4150 1600
AR Path="/605DDCFB" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDCFB" Ref="C606"  Part="1" 
F 0 "C606" H 4242 1646 50  0000 L CNN
F 1 "100n" H 4242 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4150 1600 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 4150 1600 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 4150 1600 50  0001 C CNN "Order"
F 5 "KEMET" H 4150 1600 50  0001 C CNN "Manufacturer"
F 6 "C0603C104M4RACTU" H 4150 1600 50  0001 C CNN "MNR"
	1    4150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605DDD01
P 4150 1800
AR Path="/605DDD01" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605DDD01" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 4150 1550 50  0001 C CNN
F 1 "GND" H 4155 1627 50  0001 C CNN
F 2 "" H 4150 1800 50  0001 C CNN
F 3 "" H 4150 1800 50  0001 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605DDD07
P 4150 1400
AR Path="/605DDD07" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605DDD07" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 4150 1250 50  0001 C CNN
F 1 "+3.3V" H 4150 1550 50  0000 C CNN
F 2 "" H 4150 1400 50  0001 C CNN
F 3 "" H 4150 1400 50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y?
U 1 1 605DDD0E
P 950 2300
AR Path="/605DDD0E" Ref="Y?"  Part="1" 
AR Path="/605DA130/605DDD0E" Ref="Y601"  Part="1" 
F 0 "Y601" H 950 2525 50  0000 C CNN
F 1 "32kHz" H 950 2434 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 950 2300 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/3/ABS07-166-32.768kHz-T-1359238.pdf" H 950 2300 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/815-ABS0716632.768KT" H 950 2300 50  0001 C CNN "Order"
F 5 "ABRACON" H 950 2300 50  0001 C CNN "Manufacturer"
F 6 "ABS07-166-32.768KHZ-T" H 950 2300 50  0001 C CNN "MNR"
	1    950  2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605DDD15
P 600 2450
AR Path="/605DDD15" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDD15" Ref="C601"  Part="1" 
F 0 "C601" H 692 2496 50  0000 L CNN
F 1 "12p" H 692 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 600 2450 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1007_X8R_ULTRA_150C_SMD-1102703.pdf" H 600 2450 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C120K5HACTU" H 600 2450 50  0001 C CNN "Order"
F 5 "KEMET" H 600 2450 50  0001 C CNN "Manufacturer"
F 6 "C0603C120K5HACTU" H 600 2450 50  0001 C CNN "MNR"
	1    600  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605DDD1C
P 1300 2450
AR Path="/605DDD1C" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDD1C" Ref="C602"  Part="1" 
F 0 "C602" H 1392 2496 50  0000 L CNN
F 1 "12p" H 1392 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1300 2450 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1007_X8R_ULTRA_150C_SMD-1102703.pdf" H 1300 2450 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C120K5HACTU" H 1300 2450 50  0001 C CNN "Order"
F 5 "KEMET" H 1300 2450 50  0001 C CNN "Manufacturer"
F 6 "C0603C120K5HACTU" H 1300 2450 50  0001 C CNN "MNR"
	1    1300 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605DDD22
P 950 2650
AR Path="/605DDD22" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605DDD22" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 950 2400 50  0001 C CNN
F 1 "GND" H 955 2477 50  0001 C CNN
F 2 "" H 950 2650 50  0001 C CNN
F 3 "" H 950 2650 50  0001 C CNN
	1    950  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2300 600  2350
Wire Wire Line
	1300 2300 1300 2350
$Comp
L Device:C_Small C?
U 1 1 605DDD2B
P 4600 1600
AR Path="/605DDD2B" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDD2B" Ref="C607"  Part="1" 
F 0 "C607" H 4692 1646 50  0000 L CNN
F 1 "100n" H 4692 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 1600 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 4600 1600 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 4600 1600 50  0001 C CNN "Order"
F 5 "KEMET" H 4600 1600 50  0001 C CNN "Manufacturer"
F 6 "C0603C104M4RACTU" H 4600 1600 50  0001 C CNN "MNR"
	1    4600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4450 1450 4450
Connection ~ 1200 4450
Wire Wire Line
	1200 4500 1200 4450
Wire Wire Line
	950  4450 1200 4450
$Comp
L power:GND #PWR?
U 1 1 605DDD37
P 1200 4500
AR Path="/605DDD37" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605DDD37" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 1200 4250 50  0001 C CNN
F 1 "GND" H 1205 4327 50  0001 C CNN
F 2 "" H 1200 4500 50  0001 C CNN
F 3 "" H 1200 4500 50  0001 C CNN
	1    1200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3950 950  4000
Wire Wire Line
	1450 4100 1450 3950
Wire Wire Line
	1450 4300 1450 4450
Wire Wire Line
	950  4450 950  4400
$Comp
L Device:C_Small C?
U 1 1 605DDD43
P 1450 4200
AR Path="/605DDD43" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDD43" Ref="C603"  Part="1" 
F 0 "C603" H 1542 4246 50  0000 L CNN
F 1 "100n" H 1542 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 4200 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 1450 4200 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 1450 4200 50  0001 C CNN "Order"
F 5 "KEMET" H 1450 4200 50  0001 C CNN "Manufacturer"
F 6 "C0603C104M4RACTU" H 1450 4200 50  0001 C CNN "MNR"
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 605DDD4A
P 950 4200
AR Path="/605DDD4A" Ref="SW?"  Part="1" 
AR Path="/605DA130/605DDD4A" Ref="SW601"  Part="1" 
F 0 "SW601" V 996 4152 50  0000 R CNN
F 1 "SW_Push" V 905 4152 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 950 4400 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/60/kmr2-1841878.pdf" H 950 4400 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/611-KMR211G-LFS" V 950 4200 50  0001 C CNN "Order"
F 5 "C&K" H 950 4200 50  0001 C CNN "Manufacturer"
F 6 "KMR211GLFS" H 950 4200 50  0001 C CNN "MNR"
	1    950  4200
	0    -1   -1   0   
$EndComp
Text Label 4800 2800 2    50   ~ 0
SWCLK
Text Label 3750 2800 0    50   ~ 0
NRST
Text Label 600  2300 0    50   ~ 0
XTAL1
Text Label 1300 2300 2    50   ~ 0
XTAL2
Wire Wire Line
	600  2300 850  2300
Wire Wire Line
	1050 2300 1300 2300
Wire Wire Line
	950  2600 600  2600
Wire Wire Line
	600  2600 600  2550
Wire Wire Line
	950  2650 950  2600
Wire Wire Line
	950  2600 1300 2600
Connection ~ 950  2600
Wire Wire Line
	1300 2600 1300 2550
Wire Wire Line
	4150 1800 4150 1750
Wire Wire Line
	4150 1750 3700 1750
Wire Wire Line
	3700 1750 3700 1700
Connection ~ 4150 1750
Wire Wire Line
	4150 1750 4150 1700
Wire Wire Line
	4150 1750 4600 1750
Wire Wire Line
	4600 1750 4600 1700
Wire Wire Line
	4150 1400 4150 1450
Wire Wire Line
	4150 1450 3700 1450
Wire Wire Line
	3700 1450 3700 1500
Connection ~ 4150 1450
Wire Wire Line
	4150 1450 4150 1500
Wire Wire Line
	4150 1450 4600 1450
Wire Wire Line
	4600 1450 4600 1500
Wire Wire Line
	2400 4450 2650 4450
Connection ~ 2400 4450
Wire Wire Line
	2400 4500 2400 4450
Wire Wire Line
	2150 4450 2400 4450
Text Label 1650 3950 2    50   ~ 0
SW2
Wire Wire Line
	2650 3950 2650 4100
Wire Wire Line
	2150 3950 2150 4000
Wire Wire Line
	2650 4300 2650 4450
Wire Wire Line
	2150 4450 2150 4400
$Comp
L Device:C_Small C?
U 1 1 605DDD76
P 2650 4200
AR Path="/605DDD76" Ref="C?"  Part="1" 
AR Path="/605DA130/605DDD76" Ref="C604"  Part="1" 
F 0 "C604" H 2742 4246 50  0000 L CNN
F 1 "100n" H 2742 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2650 4200 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 2650 4200 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 2650 4200 50  0001 C CNN "Order"
F 5 "KEMET" H 2650 4200 50  0001 C CNN "Manufacturer"
F 6 "C0603C104M4RACTU" H 2650 4200 50  0001 C CNN "MNR"
	1    2650 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605DDD7C
P 2400 4500
AR Path="/605DDD7C" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605DDD7C" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 2400 4250 50  0001 C CNN
F 1 "GND" H 2405 4327 50  0001 C CNN
F 2 "" H 2400 4500 50  0001 C CNN
F 3 "" H 2400 4500 50  0001 C CNN
	1    2400 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 605DDD83
P 2150 4200
AR Path="/605DDD83" Ref="SW?"  Part="1" 
AR Path="/605DA130/605DDD83" Ref="SW602"  Part="1" 
F 0 "SW602" V 2196 4152 50  0000 R CNN
F 1 "SW_Push" V 2105 4152 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 2150 4400 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/60/kmr2-1841878.pdf" H 2150 4400 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/611-KMR211G-LFS" V 2150 4200 50  0001 C CNN "Order"
F 5 "C&K" H 2150 4200 50  0001 C CNN "Manufacturer"
F 6 "KMR211GLFS" H 2150 4200 50  0001 C CNN "MNR"
	1    2150 4200
	0    -1   -1   0   
$EndComp
Text Notes 7950 2350 0    50   ~ 0
SPI Chip Select
Text Notes 7950 2450 0    50   ~ 0
SPI Clock
Text Notes 5750 2400 2    50   ~ 0
SPI MOSI
Text Notes 5750 2300 2    50   ~ 0
PWM
Text Label 6050 1650 2    50   ~ 0
SW1
Text Label 7650 1750 0    50   ~ 0
SW2
Text Label 6050 1350 2    50   ~ 0
XTAL1
Text Label 6050 1450 2    50   ~ 0
XTAL2
$Comp
L Device:R_Small R601
U 1 1 605E09D8
P 1200 3950
F 0 "R601" V 1004 3950 50  0000 C CNN
F 1 "1k" V 1095 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 3950 50  0001 C CNN
F 3 "~" H 1200 3950 50  0001 C CNN
F 4 "TE Connectivity / Holsworthy" H 1200 3950 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/TE-Connectivity-Holsworthy/CRGP0603F1K0?qs=sGAEpiMZZMtlubZbdhIBIOInyB5Ysv8sRTd2oyB6aAs%3D" H 1200 3950 50  0001 C CNN "Order"
F 6 "CRGP0603F1K0" H 1200 3950 50  0001 C CNN "MNR"
	1    1200 3950
	0    1    1    0   
$EndComp
Text Label 2850 3950 2    50   ~ 0
SW1
Wire Wire Line
	1100 3950 950  3950
Wire Wire Line
	1300 3950 1450 3950
$Comp
L Device:R_Small R603
U 1 1 605E2FCC
P 2400 3950
F 0 "R603" V 2204 3950 50  0000 C CNN
F 1 "1k" V 2295 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
F 4 "TE Connectivity / Holsworthy" H 2400 3950 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/TE-Connectivity-Holsworthy/CRGP0603F1K0?qs=sGAEpiMZZMtlubZbdhIBIOInyB5Ysv8sRTd2oyB6aAs%3D" H 2400 3950 50  0001 C CNN "Order"
F 6 "CRGP0603F1K0" H 2400 3950 50  0001 C CNN "MNR"
	1    2400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3950 2650 3950
Wire Wire Line
	2300 3950 2150 3950
Connection ~ 1450 3950
Wire Wire Line
	1450 3950 1650 3950
Wire Wire Line
	2850 3950 2650 3950
Connection ~ 2650 3950
Text HLabel 7650 2350 2    50   Output ~ 0
LE
Text HLabel 7650 2450 2    50   Output ~ 0
CLK
Text HLabel 6050 2350 0    50   Output ~ 0
MOSI
Text HLabel 6050 2250 0    50   Output ~ 0
OE
Text HLabel 6050 1550 0    50   Input ~ 0
BAT_SENSE
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J601
U 1 1 605EA1C2
P 4200 2800
F 0 "J601" H 4250 3117 50  0000 C CNN
F 1 "SWD" H 4250 3026 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 4200 2800 50  0001 C CNN
F 3 "~" H 4200 2800 50  0001 C CNN
F 4 "Mill-Max" H 4200 2800 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/Mill-Max/855-22-006-10-001101?qs=mPCt1EmoOdSJhsMqOzcHKA%3D%3D" H 4200 2800 50  0001 C CNN "Order"
F 6 "855-22-006-10-001101" H 4200 2800 50  0001 C CNN "MNR"
	1    4200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2800 4000 2800
Text Label 4800 2700 2    50   ~ 0
SWDIO
Wire Wire Line
	4500 2800 4800 2800
Wire Wire Line
	4500 2700 4800 2700
$Comp
L power:+3.3V #PWR?
U 1 1 605EF2A1
P 3750 2650
AR Path="/605EF2A1" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605EF2A1" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 3750 2500 50  0001 C CNN
F 1 "+3.3V" H 3750 2800 50  0000 C CNN
F 2 "" H 3750 2650 50  0001 C CNN
F 3 "" H 3750 2650 50  0001 C CNN
	1    3750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2650 3750 2700
Wire Wire Line
	3750 2700 4000 2700
$Comp
L power:GND #PWR?
U 1 1 605F06C3
P 3950 2950
AR Path="/605F06C3" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/605F06C3" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 3950 2700 50  0001 C CNN
F 1 "GND" H 3955 2777 50  0001 C CNN
F 2 "" H 3950 2950 50  0001 C CNN
F 3 "" H 3950 2950 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2950 3950 2900
Wire Wire Line
	3950 2900 4000 2900
NoConn ~ 4500 2900
$Comp
L watch:BT832 U1
U 1 1 61900ECF
P 6850 2250
F 0 "U1" H 6850 3617 50  0000 C CNN
F 1 "BT832" H 6850 3526 50  0000 C CNN
F 2 "watch:BLEMODULE_BT832" H 6850 2250 50  0001 L BNN
F 3 "" H 6850 2250 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 6850 2250 50  0001 L BNN "STANDARD"
F 5 "FANSTEL" H 6850 2250 50  0001 L BNN "MANUFACTURER"
F 6 "2.04" H 6850 2250 50  0001 L BNN "PARTREV"
	1    6850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61905ED1
P 7700 1100
AR Path="/61905ED1" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/61905ED1" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 7700 950 50  0001 C CNN
F 1 "+3.3V" H 7700 1250 50  0000 C CNN
F 2 "" H 7700 1100 50  0001 C CNN
F 3 "" H 7700 1100 50  0001 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1100 7700 1150
Wire Wire Line
	7700 1150 7650 1150
$Comp
L power:GND #PWR?
U 1 1 61906EDA
P 7700 3400
AR Path="/61906EDA" Ref="#PWR?"  Part="1" 
AR Path="/605DA130/61906EDA" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7700 3150 50  0001 C CNN
F 1 "GND" H 7705 3227 50  0001 C CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3400 7700 3350
Wire Wire Line
	7700 3350 7650 3350
Text Label 5800 3150 0    50   ~ 0
SWDIO
Text Label 5800 3050 0    50   ~ 0
SWCLK
Wire Wire Line
	5800 3050 6050 3050
Wire Wire Line
	6050 3150 5800 3150
Text Label 7900 1850 2    50   ~ 0
NRST
Wire Wire Line
	7900 1850 7650 1850
Text HLabel 7650 1550 2    50   Output ~ 0
LED-POWER
$EndSCHEMATC
