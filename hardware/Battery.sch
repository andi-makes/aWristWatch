EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1500 1500 0    50   Input ~ 0
VIN
Text HLabel 7150 1800 2    50   Output ~ 0
VBAT
Wire Wire Line
	3250 2000 3250 2050
Wire Wire Line
	3350 2000 3250 2000
Wire Wire Line
	3750 2300 3250 2300
Connection ~ 3750 2300
Wire Wire Line
	3750 2200 3750 2300
Wire Wire Line
	4750 2150 4750 2300
Wire Wire Line
	3250 2300 3250 2250
Connection ~ 3250 2300
Wire Wire Line
	3250 2300 3250 2350
Wire Wire Line
	3750 2300 4400 2300
Wire Wire Line
	4750 2300 4400 2300
Connection ~ 4400 2300
Wire Wire Line
	4400 2050 4400 2300
Wire Wire Line
	4400 1800 4750 1800
Wire Wire Line
	4400 1800 4150 1800
Connection ~ 4400 1800
Wire Wire Line
	4400 1850 4400 1800
Wire Wire Line
	4750 1850 4750 1800
$Comp
L Device:C_Small C?
U 1 1 60645BA0
P 2950 1850
AR Path="/60645BA0" Ref="C?"  Part="1" 
AR Path="/6063DAC2/60645BA0" Ref="C?"  Part="1" 
F 0 "C?" H 3042 1896 50  0000 L CNN
F 1 "10u" H 3042 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 1850 50  0001 C CNN
F 3 "~" H 2950 1850 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B106MQ8NRNC/1276-1948-1-ND/3890034" H 2950 1850 50  0001 C CNN "Order"
	1    2950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60645BA7
P 4400 1950
AR Path="/60645BA7" Ref="C?"  Part="1" 
AR Path="/6063DAC2/60645BA7" Ref="C?"  Part="1" 
F 0 "C?" H 4492 1996 50  0000 L CNN
F 1 "10u" H 4492 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 1950 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B106MQ8NRNC/1276-1948-1-ND/3890034" H 4400 1950 50  0001 C CNN "Order"
	1    4400 1950
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U?
U 1 1 60645BAE
P 3750 1900
AR Path="/60645BAE" Ref="U?"  Part="1" 
AR Path="/6063DAC2/60645BAE" Ref="U?"  Part="1" 
F 0 "U?" H 3500 2150 50  0000 C CNN
F 1 "MCP73831-2-OT" H 4150 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3800 1650 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 3600 1850 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/microchip-technology/MCP73831T-2ACI-OT/MCP73831T-2ACI-OTCT-ND/1979802" H 3750 1900 50  0001 C CNN "Order"
	1    3750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60645BB5
P 3250 2150
AR Path="/60645BB5" Ref="R?"  Part="1" 
AR Path="/6063DAC2/60645BB5" Ref="R?"  Part="1" 
F 0 "R?" H 3309 2196 50  0000 L CNN
F 1 "3k9" H 3309 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3250 2150 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F3K9/A130423CT-ND/8578255" H 3250 2150 50  0001 C CNN "Order"
	1    3250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60645BBB
P 3250 2350
AR Path="/60645BBB" Ref="#PWR?"  Part="1" 
AR Path="/6063DAC2/60645BBB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 2100 50  0001 C CNN
F 1 "GND" H 3255 2177 50  0000 C CNN
F 2 "" H 3250 2350 50  0001 C CNN
F 3 "" H 3250 2350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 60645BC2
P 4750 2050
AR Path="/60645BC2" Ref="BT?"  Part="1" 
AR Path="/6063DAC2/60645BC2" Ref="BT?"  Part="1" 
F 0 "BT?" H 4868 2146 50  0000 L CNN
F 1 "Battery_Cell" H 4868 2055 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 4750 2110 50  0001 C CNN
F 3 "~" V 4750 2110 50  0001 C CNN
F 4 "https://www.amazon.de/Turnigy-nano-tech-300mah-Solo-Pro-Modellbau/dp/B016339JKO/" H 4750 2050 50  0001 C CNN "Order"
	1    4750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1600 3750 1500
Wire Wire Line
	3750 1500 2950 1500
Wire Wire Line
	2950 1750 2950 1500
Connection ~ 2950 1500
Wire Wire Line
	2950 1950 2950 2300
Wire Wire Line
	2950 2300 3250 2300
$Comp
L Device:Q_PMOS_GSD Q?
U 1 1 60686379
P 6200 1900
F 0 "Q?" V 6542 1900 50  0000 C CNN
F 1 "DMP2110UW-7" V 6451 1900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 6400 2000 50  0001 C CNN
F 3 "~" H 6200 1900 50  0001 C CNN
	1    6200 1900
	0    1    -1   0   
$EndComp
Connection ~ 4750 1800
$Comp
L watch:TLV810E U?
U 1 1 6068D817
P 5750 2250
F 0 "U?" H 5750 2525 50  0000 C CNN
F 1 "TLV810E" H 5750 2434 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6150 2950 50  0001 C CNN
F 3 "" H 6150 2950 50  0001 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1800 5350 1800
Wire Wire Line
	5400 2200 5350 2200
Wire Wire Line
	5350 2200 5350 1800
Wire Wire Line
	5400 2300 4750 2300
Connection ~ 4750 2300
Wire Wire Line
	6100 2250 6200 2250
Wire Wire Line
	6200 2250 6200 2100
Wire Wire Line
	6000 1800 5350 1800
Connection ~ 5350 1800
Text Notes 3100 2700 0    50   ~ 0
TODO: Re-evaluate Programming Resistor
$Comp
L power:GND #PWR?
U 1 1 606C5053
P 6800 2400
AR Path="/606C5053" Ref="#PWR?"  Part="1" 
AR Path="/6063DAC2/606C5053" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 2150 50  0001 C CNN
F 1 "GND" H 6805 2227 50  0000 C CNN
F 2 "" H 6800 2400 50  0001 C CNN
F 3 "" H 6800 2400 50  0001 C CNN
	1    6800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2150 6800 2200
Connection ~ 6800 2150
Wire Wire Line
	6800 2100 6800 2150
$Comp
L Device:R_Small R?
U 1 1 606C505F
P 6800 2300
AR Path="/606C505F" Ref="R?"  Part="1" 
AR Path="/6063DAC2/606C505F" Ref="R?"  Part="1" 
F 0 "R?" H 6859 2346 50  0000 L CNN
F 1 "47k" H 6859 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6800 2300 50  0001 C CNN
F 3 "~" H 6800 2300 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F47K/A130436CT-ND/8578268" H 6800 2300 50  0001 C CNN "Order"
	1    6800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 606C5066
P 6800 2000
AR Path="/606C5066" Ref="R?"  Part="1" 
AR Path="/6063DAC2/606C5066" Ref="R?"  Part="1" 
F 0 "R?" H 6859 2046 50  0000 L CNN
F 1 "47k" H 6859 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6800 2000 50  0001 C CNN
F 3 "~" H 6800 2000 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F47K/A130436CT-ND/8578268" H 6800 2000 50  0001 C CNN "Order"
	1    6800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1800 6800 1800
Wire Wire Line
	6800 1800 6800 1900
Wire Wire Line
	6800 1800 7150 1800
Connection ~ 6800 1800
Text HLabel 7150 2150 2    50   Output ~ 0
VBAT_HALF
Wire Wire Line
	6800 2150 7150 2150
Wire Wire Line
	1600 1700 1550 1700
$Comp
L watch:LM66100-Variant2 U?
U 1 1 60703CE9
P 1950 1600
AR Path="/6071FFAF/60703CE9" Ref="U?"  Part="1" 
AR Path="/60604F0C/6060934C/60703CE9" Ref="U?"  Part="1" 
F 0 "U?" H 1950 1925 50  0000 C CNN
F 1 "LM66100" H 1950 1834 50  0000 C CNN
F 2 "lm66100:LM66100DCKT" H 2300 1850 50  0001 C CNN
F 3 "" H 2300 1850 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2350 1500
Wire Wire Line
	1600 1600 1550 1600
Wire Wire Line
	2300 1600 2350 1600
Wire Wire Line
	2350 1600 2350 1500
Text Notes 1600 1850 0    50   ~ 0
Reverse Current Protection
Wire Wire Line
	1550 1600 1550 1700
Wire Wire Line
	2350 1500 2950 1500
Connection ~ 2350 1500
Wire Wire Line
	1500 1500 1600 1500
Wire Wire Line
	2950 2300 1550 2300
Wire Wire Line
	1550 2300 1550 1700
Connection ~ 2950 2300
Connection ~ 1550 1700
$EndSCHEMATC
