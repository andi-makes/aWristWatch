EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 3250 2000
Wire Wire Line
	3250 2000 3450 2000
Wire Wire Line
	3250 2100 3250 2000
$Comp
L Device:C_Small C?
U 1 1 605D36A9
P 3250 2200
AR Path="/605D36A9" Ref="C?"  Part="1" 
AR Path="/605CEFBE/605D36A9" Ref="C503"  Part="1" 
F 0 "C503" H 3342 2246 50  0000 L CNN
F 1 "1u" H 3342 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3250 2200 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/585/MLCC-1837944.pdf" H 3250 2200 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/187-CL10B105MO8NNWC" H 3250 2200 50  0001 C CNN "Order"
F 5 "Samsung Electro-Mechanics" H 3250 2200 50  0001 C CNN "Manufacturer"
	1    3250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605D36AF
P 3850 2450
AR Path="/605D36AF" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D36AF" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3850 2200 50  0001 C CNN
F 1 "GND" H 3855 2277 50  0000 C CNN
F 2 "" H 3850 2450 50  0001 C CNN
F 3 "" H 3850 2450 50  0001 C CNN
	1    3850 2450
	1    0    0    -1  
$EndComp
Connection ~ 3450 2000
Wire Wire Line
	4400 2000 4400 2100
Connection ~ 4400 2000
Wire Wire Line
	4150 2000 4400 2000
$Comp
L Device:C_Small C?
U 1 1 605D36C1
P 4400 2200
AR Path="/605D36C1" Ref="C?"  Part="1" 
AR Path="/605CEFBE/605D36C1" Ref="C504"  Part="1" 
F 0 "C504" H 4492 2246 50  0000 L CNN
F 1 "1u" H 4492 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4400 2200 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/585/MLCC-1837944.pdf" H 4400 2200 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/187-CL10B105MO8NNWC" H 4400 2200 50  0001 C CNN "Order"
F 5 "Samsung Electro-Mechanics" H 4400 2200 50  0001 C CNN "Manufacturer"
	1    4400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2100 3450 2000
Wire Wire Line
	3550 2100 3450 2100
Wire Wire Line
	3550 2000 3450 2000
$Comp
L Regulator_Linear:TLV70033_SOT23-5 U?
U 1 1 605D36CB
P 3850 2100
AR Path="/605D36CB" Ref="U?"  Part="1" 
AR Path="/605CEFBE/605D36CB" Ref="U502"  Part="1" 
F 0 "U502" H 3850 2442 50  0000 C CNN
F 1 "TLV70033_SOT23-5" H 3850 2351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3850 2425 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv700.pdf" H 3850 2150 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/595-TLV70033DDCR" H 3850 2100 50  0001 C CNN "Order"
F 5 "Texas Instruments" H 3850 2100 50  0001 C CNN "Manufacturer"
	1    3850 2100
	1    0    0    -1  
$EndComp
$Comp
L watch:TPS2115A-Q1 U?
U 1 1 605D36D1
P 2400 2200
AR Path="/605D36D1" Ref="U?"  Part="1" 
AR Path="/605CEFBE/605D36D1" Ref="U501"  Part="1" 
F 0 "U501" H 2400 2675 50  0000 C CNN
F 1 "TPS2115A-Q1" H 2400 2584 50  0000 C CNN
F 2 "watch:TSSOP-8_3x6.4_P0.65mm" H 3300 3050 50  0001 C CNN
F 3 "" H 3300 3050 50  0001 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 605D36D8
P 2000 2600
AR Path="/605D36D8" Ref="R?"  Part="1" 
AR Path="/605CEFBE/605D36D8" Ref="R501"  Part="1" 
F 0 "R501" H 2059 2646 50  0000 L CNN
F 1 "1k" H 2059 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2000 2600 50  0001 C CNN
F 3 "~" H 2000 2600 50  0001 C CNN
F 4 "" H 2000 2600 50  0001 C CNN "Order"
	1    2000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 2000 2450
Wire Wire Line
	2000 2450 2050 2450
$Comp
L power:GND #PWR?
U 1 1 605D36E0
P 2000 2700
AR Path="/605D36E0" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D36E0" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 2000 2450 50  0001 C CNN
F 1 "GND" H 2005 2527 50  0000 C CNN
F 2 "" H 2000 2700 50  0001 C CNN
F 3 "" H 2000 2700 50  0001 C CNN
	1    2000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605D36E8
P 1850 2700
AR Path="/605D36E8" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D36E8" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 1850 2450 50  0001 C CNN
F 1 "GND" H 1855 2527 50  0000 C CNN
F 2 "" H 1850 2700 50  0001 C CNN
F 3 "" H 1850 2700 50  0001 C CNN
	1    1850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2300 3250 2450
Wire Wire Line
	3250 2450 3850 2450
Wire Wire Line
	3850 2450 4400 2450
Wire Wire Line
	4400 2300 4400 2450
Connection ~ 3850 2450
Wire Wire Line
	3850 2400 3850 2450
$Comp
L power:GND #PWR?
U 1 1 605D36F5
P 2800 2700
AR Path="/605D36F5" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D36F5" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 2800 2450 50  0001 C CNN
F 1 "GND" H 2805 2527 50  0000 C CNN
F 2 "" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2700 2800 2450
Wire Wire Line
	2800 2450 2750 2450
$Comp
L Device:C_Small C?
U 1 1 605D36FE
P 1000 2250
AR Path="/605D36FE" Ref="C?"  Part="1" 
AR Path="/605CEFBE/605D36FE" Ref="C501"  Part="1" 
F 0 "C501" H 1092 2296 50  0000 L CNN
F 1 "100n" H 1092 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2250 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 1000 2250 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 1000 2250 50  0001 C CNN "Order"
F 5 "KEMET" H 1000 2250 50  0001 C CNN "Manufacturer"
	1    1000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 605D3705
P 1450 2250
AR Path="/605D3705" Ref="C?"  Part="1" 
AR Path="/605CEFBE/605D3705" Ref="C502"  Part="1" 
F 0 "C502" H 1542 2296 50  0000 L CNN
F 1 "100n" H 1542 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 2250 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 1450 2250 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/80-C0603C104M4R" H 1450 2250 50  0001 C CNN "Order"
F 5 "KEMET" H 1450 2250 50  0001 C CNN "Manufacturer"
	1    1450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1950 1000 1950
Wire Wire Line
	1000 2150 1000 1950
Wire Wire Line
	1450 2150 1450 2050
$Comp
L power:GND #PWR?
U 1 1 605D370F
P 1000 2350
AR Path="/605D370F" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D370F" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 1000 2100 50  0001 C CNN
F 1 "GND" H 1005 2177 50  0000 C CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605D3715
P 1450 2350
AR Path="/605D3715" Ref="#PWR?"  Part="1" 
AR Path="/605CEFBE/605D3715" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 1450 2100 50  0001 C CNN
F 1 "GND" H 1455 2177 50  0000 C CNN
F 2 "" H 1450 2350 50  0001 C CNN
F 3 "" H 1450 2350 50  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1950 1000 1950
Connection ~ 1000 1950
Wire Wire Line
	1450 2050 2050 2050
Connection ~ 1450 2050
Wire Wire Line
	2750 2000 3250 2000
Text HLabel 750  1950 0    50   Input ~ 0
5V
Text HLabel 750  2050 0    50   Input ~ 0
VBAT
Wire Wire Line
	750  2050 1450 2050
Text HLabel 3350 1600 2    50   Output ~ 0
V_DISP
Text HLabel 4650 2000 2    50   Output ~ 0
3V3
Wire Wire Line
	4400 2000 4650 2000
Wire Wire Line
	3250 1600 3250 2000
Wire Wire Line
	3350 1600 3250 1600
NoConn ~ 2050 2350
Wire Wire Line
	1850 2250 2050 2250
Wire Wire Line
	1850 2250 1850 2700
NoConn ~ 2750 2200
$EndSCHEMATC
