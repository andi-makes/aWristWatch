EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
AR Path="/6063DAC2/60645BA0" Ref="C401"  Part="1" 
F 0 "C401" H 3042 1896 50  0000 L CNN
F 1 "10u" H 3042 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2950 1850 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/585/MLCC-1837944.pdf" H 2950 1850 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/187-CL10B106MQ8NRNC" H 2950 1850 50  0001 C CNN "Order"
F 5 "Samsung Electro-Mechanics" H 2950 1850 50  0001 C CNN "Manufacturer"
	1    2950 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60645BA7
P 4400 1950
AR Path="/60645BA7" Ref="C?"  Part="1" 
AR Path="/6063DAC2/60645BA7" Ref="C402"  Part="1" 
F 0 "C402" H 4492 1996 50  0000 L CNN
F 1 "10u" H 4492 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4400 1950 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/585/MLCC-1837944.pdf" H 4400 1950 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/187-CL10B106MQ8NRNC" H 4400 1950 50  0001 C CNN "Order"
F 5 "Samsung Electro-Mechanics" H 4400 1950 50  0001 C CNN "Manufacturer"
	1    4400 1950
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U?
U 1 1 60645BAE
P 3750 1900
AR Path="/60645BAE" Ref="U?"  Part="1" 
AR Path="/6063DAC2/60645BAE" Ref="U402"  Part="1" 
F 0 "U402" H 3500 2150 50  0000 C CNN
F 1 "MCP73831-2-OT" H 4150 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3800 1650 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 3600 1850 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/579-MCP73831T-2ACIOT" H 3750 1900 50  0001 C CNN "Order"
F 5 "Microchip Technology" H 3750 1900 50  0001 C CNN "Manufacturer"
	1    3750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60645BB5
P 3250 2150
AR Path="/60645BB5" Ref="R?"  Part="1" 
AR Path="/6063DAC2/60645BB5" Ref="R403"  Part="1" 
F 0 "R403" H 3309 2196 50  0000 L CNN
F 1 "R" H 3309 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3250 2150 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
F 4 "" H 3250 2150 50  0001 C CNN "Order"
	1    3250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60645BBB
P 3250 2350
AR Path="/60645BBB" Ref="#PWR?"  Part="1" 
AR Path="/6063DAC2/60645BBB" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3250 2100 50  0001 C CNN
F 1 "GND" H 3255 2177 50  0001 C CNN
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
AR Path="/6063DAC2/60645BC2" Ref="BT401"  Part="1" 
F 0 "BT401" H 4868 2146 50  0000 L CNN
F 1 "Battery_Cell" H 4868 2055 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 4750 2110 50  0001 C CNN
F 3 "~" V 4750 2110 50  0001 C CNN
F 4 "https://www.amazon.de/YUNIQUE-Deutschland-Quadrocopter-Ersatzteil-Batterie/dp/B07BB62M5C/ref=pd_sim_1?pd_rd_w=grvwY&pf_rd_p=9a7fe8f3-0fa4-47a4-8b98-93a5088bcc79&pf_rd_r=9ZV7KNMHJY2EC7A02PM1&pd_rd_r=bac63601-7990-4842-bd78-0305b9f2aef1&pd_rd_wg=wa44J&pd_rd_i=B07BB62M5C&psc=1" H 4750 2050 50  0001 C CNN "Order"
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
L Device:Q_PMOS_GSD Q401
U 1 1 60686379
P 6200 1900
F 0 "Q401" V 6542 1900 50  0000 C CNN
F 1 "DMP2110UW-7" V 6451 1900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 6400 2000 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP2110UW.pdf" H 6200 1900 50  0001 C CNN
F 4 "Diodes Incorporated" H 6200 1900 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/Diodes-Incorporated/DMP2110UW-7?qs=bZr6mbWTK5lZsAURvLPe3w%3D%3D" H 6200 1900 50  0001 C CNN "Order"
	1    6200 1900
	0    1    -1   0   
$EndComp
Connection ~ 4750 1800
$Comp
L watch:TLV810E U403
U 1 1 6068D817
P 5750 2250
F 0 "U403" H 5750 2525 50  0000 C CNN
F 1 "TLV810E" H 5750 2434 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6150 2950 50  0001 C CNN
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
$Comp
L power:GND #PWR?
U 1 1 606C5053
P 6800 2400
AR Path="/606C5053" Ref="#PWR?"  Part="1" 
AR Path="/6063DAC2/606C5053" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 6800 2150 50  0001 C CNN
F 1 "GND" H 6805 2227 50  0001 C CNN
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
AR Path="/6063DAC2/606C505F" Ref="R405"  Part="1" 
F 0 "R405" H 6859 2346 50  0000 L CNN
F 1 "47k" H 6859 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 2300 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/418/5/NG_DS_9-1773463-9_A-1358566.pdf" H 6800 2300 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/279-CRGP0603F47K" H 6800 2300 50  0001 C CNN "Order"
F 5 "TE Connectivity / Holsworthy" H 6800 2300 50  0001 C CNN "Manufacturer"
	1    6800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 606C5066
P 6800 2000
AR Path="/606C5066" Ref="R?"  Part="1" 
AR Path="/6063DAC2/606C5066" Ref="R404"  Part="1" 
F 0 "R404" H 6859 2046 50  0000 L CNN
F 1 "47k" H 6859 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 2000 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/418/5/NG_DS_9-1773463-9_A-1358566.pdf" H 6800 2000 50  0001 C CNN
F 4 "https://www.mouser.at/ProductDetail/279-CRGP0603F47K" H 6800 2000 50  0001 C CNN "Order"
F 5 "TE Connectivity / Holsworthy" H 6800 2000 50  0001 C CNN "Manufacturer"
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
AR Path="/6063DAC2/60703CE9" Ref="U401"  Part="1" 
F 0 "U401" H 1950 1925 50  0000 C CNN
F 1 "LM66100" H 1950 1834 50  0000 C CNN
F 2 "watch:Sc70-6" H 2300 1850 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm66100.pdf?HQS=dis-mous-null-mousermode-dsf-pf-null-wwe&DCM=yes&ref_url=https%3A%2F%2Fwww.mouser.it%2F&distId=26" H 2300 1850 50  0001 C CNN
F 4 "Texas Instruments" H 1950 1600 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/595-LM66100DCKR" H 1950 1600 50  0001 C CNN "Order"
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
	2350 1500 2650 1500
Connection ~ 2350 1500
Wire Wire Line
	1500 1500 1600 1500
Wire Wire Line
	2950 2300 1550 2300
Wire Wire Line
	1550 2300 1550 1700
Connection ~ 2950 2300
Connection ~ 1550 1700
Wire Wire Line
	2650 2750 2650 2700
$Comp
L Device:LED_Small D401
U 1 1 606121DC
P 2650 2850
F 0 "D401" V 2696 2780 50  0000 R CNN
F 1 "RED" V 2605 2780 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2650 2850 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/216/AA1608SURSK-1951973.pdf" V 2650 2850 50  0001 C CNN
F 4 "AA1608SURSK" V 2650 2850 50  0001 C CNN "Part Number"
F 5 "Kingbright" V 2650 2850 50  0001 C CNN "Manufacturer"
F 6 "https://www.mouser.at/ProductDetail/Kingbright/AA1608SURSK?qs=eP2BKZSCXI6pqonvuMmTFg%3D%3D" H 2650 2850 50  0001 C CNN "Order"
	1    2650 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R401
U 1 1 606121E3
P 2650 2600
F 0 "R401" H 2709 2646 50  0000 L CNN
F 1 "10k" H 2709 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 2600 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
F 4 "" H 2650 2600 50  0001 C CNN "Order"
	1    2650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R402
U 1 1 606121EB
P 2650 3400
F 0 "R402" H 2709 3446 50  0000 L CNN
F 1 "10k" H 2709 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
F 4 "" H 2650 3400 50  0001 C CNN "Order"
	1    2650 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D402
U 1 1 606121F3
P 2650 3150
F 0 "D402" V 2696 3080 50  0000 R CNN
F 1 "GREEN" V 2605 3080 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2650 3150 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/216/AA1608CGSK-1951957.pdf" V 2650 3150 50  0001 C CNN
F 4 "Kingbright" H 2650 3150 50  0001 C CNN "Manufacturer"
F 5 "AA1608CGSK" H 2650 3150 50  0001 C CNN "Part Number"
F 6 "https://www.mouser.at/ProductDetail/Kingbright/AA1608CGSK?qs=%2Fha2pyFadujroVvVMWEuOp8b2ZvB17TZCtvrJxnHY68n8r1EECXbcw%3D%3D" H 2650 3150 50  0001 C CNN "Order"
	1    2650 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3300 2650 3250
$Comp
L power:GND #PWR0125
U 1 1 606121FA
P 2650 3550
F 0 "#PWR0125" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0001 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3550 2650 3500
Wire Wire Line
	2650 2950 2650 3000
Text Label 4300 2000 2    50   ~ 0
STAT
Wire Wire Line
	4300 2000 4150 2000
Text Label 2900 3000 2    50   ~ 0
STAT
Wire Wire Line
	2900 3000 2650 3000
Connection ~ 2650 3000
Wire Wire Line
	2650 3000 2650 3050
Wire Wire Line
	2650 1500 2650 2500
Connection ~ 2650 1500
Wire Wire Line
	2650 1500 2950 1500
$EndSCHEMATC
