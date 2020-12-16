EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Armbanduhr"
Date "2020-09-20"
Rev "1"
Comp "Probieren geht über studieren. Immer."
Comment1 "Andreas Kohler"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_LED:STP08CP05 U3
U 1 1 5F51E41A
P 3100 4100
F 0 "U3" H 2850 4750 50  0000 C CNN
F 1 "STP08DP05" H 3400 4750 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 3100 4100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stp08cp05.pdf" H 3100 4100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/STP08DP05TTR/497-6029-1-ND/1632058/?itemSeq=337319735" H 3100 4100 50  0001 C CNN "Order"
	1    3100 4100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-105 U1
U 1 1 5F51378C
P 7300 1400
F 0 "U1" H 7300 2067 50  0000 C CNN
F 1 "KCSA02-105" H 7300 1976 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 7300 800 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 6800 1875 50  0001 L CNN
F 4 "https://www.digikey.at/product-detail/de/XZFMDK05A/1497-1096-1-ND/4745605/?itemSeq=337314769" H 7300 1400 50  0001 C CNN "Order"
	1    7300 1400
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-105 U2
U 1 1 5F525490
P 8400 1400
F 0 "U2" H 8400 2067 50  0000 C CNN
F 1 "KCSA02-105" H 8400 1976 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 8400 800 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 7900 1875 50  0001 L CNN
F 4 "https://www.digikey.at/product-detail/de/XZFMDK05A/1497-1096-1-ND/4745605/?itemSeq=337314769" H 8400 1400 50  0001 C CNN "Order"
	1    8400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F52DDA7
P 900 4150
F 0 "R1" H 959 4196 50  0000 L CNN
F 1 "2k" H 959 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 4150 50  0001 C CNN
F 3 "~" H 900 4150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/panasonic-electronic-components/ERJ-PA3F2001V/P2-00KBYCT-ND/5036150" H 900 4150 50  0001 C CNN "Order"
	1    900  4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F52E8AA
P 2550 4150
F 0 "R2" H 2609 4196 50  0000 L CNN
F 1 "2k" H 2609 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2550 4150 50  0001 C CNN
F 3 "~" H 2550 4150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/panasonic-electronic-components/ERJ-PA3F2001V/P2-00KBYCT-ND/5036150" H 2550 4150 50  0001 C CNN "Order"
	1    2550 4150
	1    0    0    -1  
$EndComp
Text Label 1850 4100 0    50   ~ 0
S1_DP
Text Label 7000 1800 2    50   ~ 0
S1_DP
Text Label 7000 1100 2    50   ~ 0
S1_A
Text Label 7000 1200 2    50   ~ 0
S1_B
Text Label 7000 1300 2    50   ~ 0
S1_C
Text Label 7000 1400 2    50   ~ 0
S1_D
Text Label 7000 1500 2    50   ~ 0
S1_E
Text Label 7000 1600 2    50   ~ 0
S1_F
Text Label 7000 1700 2    50   ~ 0
S1_G
Text Label 1850 4000 0    50   ~ 0
S1_C
Text Label 1850 4200 0    50   ~ 0
S1_D
Text Label 1850 4300 0    50   ~ 0
S1_E
Text Label 5100 3800 0    50   ~ 0
S1_B
Text Label 5100 3900 0    50   ~ 0
S1_A
Text Label 5100 3700 0    50   ~ 0
S1_F
Text Label 5100 3600 0    50   ~ 0
S1_G
$Comp
L Device:C_Small C2
U 1 1 5F54DACF
P 700 3250
F 0 "C2" H 792 3296 50  0000 L CNN
F 1 "100nF" H 792 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 700 3250 50  0001 C CNN
F 3 "~" H 700 3250 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 700 3250 50  0001 C CNN "Order"
	1    700  3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F54F5D6
P 2250 3250
F 0 "C1" H 2342 3296 50  0000 L CNN
F 1 "100nF" H 2342 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 3250 50  0001 C CNN
F 3 "~" H 2250 3250 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 2250 3250 50  0001 C CNN "Order"
	1    2250 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F53F08C
P 700 3350
F 0 "#PWR0101" H 700 3100 50  0001 C CNN
F 1 "GND" H 705 3177 50  0000 C CNN
F 2 "" H 700 3350 50  0001 C CNN
F 3 "" H 700 3350 50  0001 C CNN
	1    700  3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F53F782
P 3100 4800
F 0 "#PWR0102" H 3100 4550 50  0001 C CNN
F 1 "GND" H 3105 4627 50  0000 C CNN
F 2 "" H 3100 4800 50  0001 C CNN
F 3 "" H 3100 4800 50  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5F542D40
P 7700 1600
F 0 "#PWR0103" H 7700 1450 50  0001 C CNN
F 1 "VCC" H 7715 1773 50  0000 C CNN
F 2 "" H 7700 1600 50  0001 C CNN
F 3 "" H 7700 1600 50  0001 C CNN
	1    7700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1600 7700 1700
Wire Wire Line
	7700 1700 7600 1700
Wire Wire Line
	7700 1700 7700 1800
Wire Wire Line
	7700 1800 7600 1800
Connection ~ 7700 1700
$Comp
L power:VCC #PWR012
U 1 1 5F59B464
P 8800 1600
F 0 "#PWR012" H 8800 1450 50  0001 C CNN
F 1 "VCC" H 8815 1773 50  0000 C CNN
F 2 "" H 8800 1600 50  0001 C CNN
F 3 "" H 8800 1600 50  0001 C CNN
	1    8800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1600 8800 1700
Wire Wire Line
	8800 1700 8700 1700
Wire Wire Line
	8800 1700 8800 1800
Wire Wire Line
	8800 1800 8700 1800
Connection ~ 8800 1700
$Comp
L power:GND #PWR010
U 1 1 5F59DFF6
P 1450 4800
F 0 "#PWR010" H 1450 4550 50  0001 C CNN
F 1 "GND" H 1455 4627 50  0000 C CNN
F 2 "" H 1450 4800 50  0001 C CNN
F 3 "" H 1450 4800 50  0001 C CNN
	1    1450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F5BC25F
P 900 4250
F 0 "#PWR04" H 900 4000 50  0001 C CNN
F 1 "GND" H 905 4077 50  0000 C CNN
F 2 "" H 900 4250 50  0001 C CNN
F 3 "" H 900 4250 50  0001 C CNN
	1    900  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4000 900  4000
Wire Wire Line
	900  4000 900  4050
$Comp
L power:+3.3V #PWR09
U 1 1 5F5BD79C
P 1450 3400
F 0 "#PWR09" H 1450 3250 50  0001 C CNN
F 1 "+3.3V" H 1465 3573 50  0000 C CNN
F 2 "" H 1450 3400 50  0001 C CNN
F 3 "" H 1450 3400 50  0001 C CNN
	1    1450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5F5BDE47
P 700 3150
F 0 "#PWR06" H 700 3000 50  0001 C CNN
F 1 "+3.3V" H 715 3323 50  0000 C CNN
F 2 "" H 700 3150 50  0001 C CNN
F 3 "" H 700 3150 50  0001 C CNN
	1    700  3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5F5C16A6
P 3100 3400
F 0 "#PWR011" H 3100 3250 50  0001 C CNN
F 1 "+3.3V" H 3115 3573 50  0000 C CNN
F 2 "" H 3100 3400 50  0001 C CNN
F 3 "" H 3100 3400 50  0001 C CNN
	1    3100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4000 2550 4000
Wire Wire Line
	2550 4000 2550 4050
$Comp
L power:GND #PWR05
U 1 1 5F5C3618
P 2550 4250
F 0 "#PWR05" H 2550 4000 50  0001 C CNN
F 1 "GND" H 2555 4077 50  0000 C CNN
F 2 "" H 2550 4250 50  0001 C CNN
F 3 "" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F5C4BE3
P 2250 3350
F 0 "#PWR08" H 2250 3100 50  0001 C CNN
F 1 "GND" H 2255 3177 50  0000 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5F5C4FCA
P 2250 3150
F 0 "#PWR07" H 2250 3000 50  0001 C CNN
F 1 "+3.3V" H 2265 3323 50  0000 C CNN
F 2 "" H 2250 3150 50  0001 C CNN
F 3 "" H 2250 3150 50  0001 C CNN
	1    2250 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F5F9329
P 2750 1050
F 0 "C8" H 2842 1096 50  0000 L CNN
F 1 "10uF" H 2842 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2750 1050 50  0001 C CNN
F 3 "~" H 2750 1050 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B106MQ8NRNC/1276-1948-1-ND/3890034" H 2750 1050 50  0001 C CNN "Order"
	1    2750 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5F5FC2FE
P 3200 1050
F 0 "C9" H 3292 1096 50  0000 L CNN
F 1 "100nF" H 3292 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3200 1050 50  0001 C CNN
F 3 "~" H 3200 1050 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 3200 1050 50  0001 C CNN "Order"
	1    3200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F5FC304
P 3200 1250
F 0 "#PWR020" H 3200 1000 50  0001 C CNN
F 1 "GND" H 3205 1077 50  0000 C CNN
F 2 "" H 3200 1250 50  0001 C CNN
F 3 "" H 3200 1250 50  0001 C CNN
	1    3200 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5F5FC30A
P 3200 850
F 0 "#PWR019" H 3200 700 50  0001 C CNN
F 1 "+3.3V" H 3215 1023 50  0000 C CNN
F 2 "" H 3200 850 50  0001 C CNN
F 3 "" H 3200 850 50  0001 C CNN
	1    3200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5F61112A
P 5800 2000
F 0 "Y1" H 5800 2225 50  0000 C CNN
F 1 "32kHz" H 5800 2134 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 5800 2000 50  0001 C CNN
F 3 "~" H 5800 2000 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/abracon-llc/ABS07-166-32-768KHZ-T/535-14514-1-ND/8827205" H 5800 2000 50  0001 C CNN "Order"
	1    5800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F611DB1
P 5450 2150
F 0 "C6" H 5542 2196 50  0000 L CNN
F 1 "12pF" H 5542 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 2150 50  0001 C CNN
F 3 "~" H 5450 2150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C120K5HAC7867/399-C0603C120K5HAC7867CT-ND/12723951" H 5450 2150 50  0001 C CNN "Order"
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F612FC1
P 6150 2150
F 0 "C7" H 6242 2196 50  0000 L CNN
F 1 "12pF" H 6242 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6150 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C120K5HAC7867/399-C0603C120K5HAC7867CT-ND/12723951" H 6150 2150 50  0001 C CNN "Order"
	1    6150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F61379D
P 5800 2350
F 0 "#PWR016" H 5800 2100 50  0001 C CNN
F 1 "GND" H 5805 2177 50  0000 C CNN
F 2 "" H 5800 2350 50  0001 C CNN
F 3 "" H 5800 2350 50  0001 C CNN
	1    5800 2350
	1    0    0    -1  
$EndComp
Text Label 1050 3600 2    50   ~ 0
SDI
Text Label 1050 3700 2    50   ~ 0
CLK
Text Label 1050 4600 2    50   ~ 0
OE
Text Label 2700 4600 2    50   ~ 0
OE
Text Label 2700 3800 2    50   ~ 0
LE
Text Label 2700 3700 2    50   ~ 0
CLK
Text Label 1050 3800 2    50   ~ 0
LE
Wire Wire Line
	5450 2000 5450 2050
Wire Wire Line
	6150 2000 6150 2050
$Comp
L Device:C_Small C10
U 1 1 5F66C0AA
P 3650 1050
F 0 "C10" H 3742 1096 50  0000 L CNN
F 1 "100nF" H 3742 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3650 1050 50  0001 C CNN
F 3 "~" H 3650 1050 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 3650 1050 50  0001 C CNN "Order"
	1    3650 1050
	1    0    0    -1  
$EndComp
Text Label 4900 2050 2    50   ~ 0
BOOT0
Text Label 5100 4300 0    50   ~ 0
S2_B
Text Label 5100 4200 0    50   ~ 0
S2_A
Text Label 5100 4000 0    50   ~ 0
S2_F
Text Label 5100 4100 0    50   ~ 0
S2_G
Text Label 8100 1700 2    50   ~ 0
S2_G
Text Label 8100 1600 2    50   ~ 0
S2_F
Text Label 8100 1100 2    50   ~ 0
S2_A
Text Label 8100 1200 2    50   ~ 0
S2_B
Text Label 1850 3600 0    50   ~ 0
S2_DP
Text Label 8100 1800 2    50   ~ 0
S2_DP
Text Label 1850 3700 0    50   ~ 0
S2_C
Text Label 8100 1300 2    50   ~ 0
S2_C
Text Label 1850 3900 0    50   ~ 0
S2_D
Text Label 1850 3800 0    50   ~ 0
S2_E
Text Label 8100 1400 2    50   ~ 0
S2_D
Text Label 8100 1500 2    50   ~ 0
S2_E
Wire Wire Line
	3050 2350 3300 2350
Connection ~ 3050 2350
Wire Wire Line
	3050 2400 3050 2350
Wire Wire Line
	2800 2350 3050 2350
Wire Wire Line
	2800 1850 3300 1850
$Comp
L power:GND #PWR0108
U 1 1 5F55B7E5
P 3050 2400
F 0 "#PWR0108" H 3050 2150 50  0001 C CNN
F 1 "GND" H 3055 2227 50  0000 C CNN
F 2 "" H 3050 2400 50  0001 C CNN
F 3 "" H 3050 2400 50  0001 C CNN
	1    3050 2400
	1    0    0    -1  
$EndComp
Text Label 2800 1850 0    50   ~ 0
SW1
Wire Wire Line
	2800 1850 2800 1900
Wire Wire Line
	3300 2000 3300 1850
Wire Wire Line
	3300 2200 3300 2350
Wire Wire Line
	2800 2350 2800 2300
$Comp
L Device:C_Small C11
U 1 1 5F6A29EC
P 3300 2100
F 0 "C11" H 3392 2146 50  0000 L CNN
F 1 "100nF" H 3392 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3300 2100 50  0001 C CNN
F 3 "~" H 3300 2100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 3300 2100 50  0001 C CNN "Order"
	1    3300 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F57DFEA
P 2800 2100
F 0 "SW1" V 2846 2052 50  0000 R CNN
F 1 "SW_Push" V 2755 2052 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 2800 2300 50  0001 C CNN
F 3 "~" H 2800 2300 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/KMR211GLFS/401-1426-1-ND/550461/?itemSeq=337664069" V 2800 2100 50  0001 C CNN "Order"
	1    2800 2100
	0    -1   -1   0   
$EndComp
Text Label 4750 850  0    50   ~ 0
SWCLK
Text Label 4750 950  0    50   ~ 0
SWDIO
Text Label 4750 1050 0    50   ~ 0
NRST
Text Label 5450 2000 0    50   ~ 0
XTAL1
Text Label 6150 2000 2    50   ~ 0
XTAL2
Wire Wire Line
	5450 2000 5700 2000
Wire Wire Line
	5900 2000 6150 2000
Wire Wire Line
	5800 2300 5450 2300
Wire Wire Line
	5450 2300 5450 2250
Wire Wire Line
	5800 2350 5800 2300
Wire Wire Line
	5800 2300 6150 2300
Connection ~ 5800 2300
Wire Wire Line
	6150 2300 6150 2250
Wire Wire Line
	3200 1250 3200 1200
Wire Wire Line
	3200 1200 2750 1200
Wire Wire Line
	2750 1200 2750 1150
Connection ~ 3200 1200
Wire Wire Line
	3200 1200 3200 1150
Wire Wire Line
	3200 1200 3650 1200
Wire Wire Line
	3650 1200 3650 1150
Wire Wire Line
	3200 850  3200 900 
Wire Wire Line
	3200 900  2750 900 
Wire Wire Line
	2750 900  2750 950 
Connection ~ 3200 900 
Wire Wire Line
	3200 900  3200 950 
Wire Wire Line
	3200 900  3650 900 
Wire Wire Line
	3650 900  3650 950 
Wire Wire Line
	4000 2350 4250 2350
Connection ~ 4000 2350
Wire Wire Line
	4000 2400 4000 2350
Wire Wire Line
	3750 1850 4250 1850
Wire Wire Line
	3750 2350 4000 2350
Text Label 3750 1850 0    50   ~ 0
SW2
Wire Wire Line
	4250 1850 4250 2000
Wire Wire Line
	3750 1850 3750 1900
Wire Wire Line
	4250 2200 4250 2350
Wire Wire Line
	3750 2350 3750 2300
$Comp
L Device:C_Small C12
U 1 1 5F6A0E29
P 4250 2100
F 0 "C12" H 4342 2146 50  0000 L CNN
F 1 "100nF" H 4342 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4250 2100 50  0001 C CNN
F 3 "~" H 4250 2100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 4250 2100 50  0001 C CNN "Order"
	1    4250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F69ED3D
P 4000 2400
F 0 "#PWR0107" H 4000 2150 50  0001 C CNN
F 1 "GND" H 4005 2227 50  0000 C CNN
F 2 "" H 4000 2400 50  0001 C CNN
F 3 "" H 4000 2400 50  0001 C CNN
	1    4000 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F580368
P 3750 2100
F 0 "SW2" V 3796 2052 50  0000 R CNN
F 1 "SW_Push" V 3705 2052 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 3750 2300 50  0001 C CNN
F 3 "~" H 3750 2300 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/KMR211GLFS/401-1426-1-ND/550461/?itemSeq=337664069" V 3750 2100 50  0001 C CNN "Order"
	1    3750 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F5C8BE2
P 1250 2450
F 0 "#PWR02" H 1250 2200 50  0001 C CNN
F 1 "GND" H 1255 2277 50  0000 C CNN
F 2 "" H 1250 2450 50  0001 C CNN
F 3 "" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
Text Label 1750 2150 0    50   ~ 0
SWDIO
Text Label 1750 2250 0    50   ~ 0
SWCLK
Text Label 1750 1850 0    50   ~ 0
SDI
Text Label 1750 1650 0    50   ~ 0
CLK
Text Label 1750 1550 0    50   ~ 0
LE
Text Label 1750 1950 0    50   ~ 0
OE
Text Label 1750 1750 0    50   ~ 0
MDI
$Comp
L MCU_ST_STM32L0:STM32L011F4Px U5
U 1 1 5F65FBEB
P 1350 1650
F 0 "U5" H 1000 2300 50  0000 C CNN
F 1 "STM32L011F4Px" H 1700 2300 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 950 950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00206508.pdf" H 1350 1650 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/STM32L011D4P6TR/497-STM32L011D4P6CT-ND/11489363/?itemSeq=337329103" H 1350 1650 50  0001 C CNN "Order"
	1    1350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 900  1250 950 
Wire Wire Line
	1350 900  1350 950 
Wire Wire Line
	1300 900  1350 900 
Wire Wire Line
	1300 900  1250 900 
Connection ~ 1300 900 
$Comp
L power:+3.3V #PWR01
U 1 1 5F5C8685
P 1300 850
F 0 "#PWR01" H 1300 700 50  0001 C CNN
F 1 "+3.3V" H 1315 1023 50  0000 C CNN
F 2 "" H 1300 850 50  0001 C CNN
F 3 "" H 1300 850 50  0001 C CNN
	1    1300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 850  1300 900 
Text Label 850  2250 2    50   ~ 0
BOOT0
Text Notes 1950 1550 0    50   ~ 0
SPI Chip Select
Text Notes 1950 1650 0    50   ~ 0
SPI Clock
Text Notes 1950 1750 0    50   ~ 0
SPI MISO
Text Notes 1950 1850 0    50   ~ 0
SPI MOSI
Text Notes 1950 1950 0    50   ~ 0
PWM
Text Label 1750 1150 0    50   ~ 0
SW1
Text Label 1750 2050 0    50   ~ 0
SW2
Text Label 850  1150 2    50   ~ 0
NRST
Text Label 850  1850 2    50   ~ 0
XTAL1
Text Label 850  1950 2    50   ~ 0
XTAL2
Text Notes 550  600  0    50   ~ 0
Mikrokontroller
Text Notes 2600 600  0    50   ~ 0
Power Filter
Text Notes 4050 600  0    50   ~ 0
SWD Interface
Text Notes 5300 1650 0    50   ~ 0
Oszillator
Text Notes 4600 1650 0    50   ~ 0
Boot Pin
Text Notes 2600 1650 0    50   ~ 0
Schalter Inputs
Wire Notes Line
	550  500  550  2700
Wire Notes Line
	2600 500  2600 2700
Wire Notes Line
	4050 500  4050 1550
Wire Notes Line
	5150 500  5150 1550
$Comp
L Device:Battery_Cell BT1
U 1 1 5F5AA165
P 2300 6050
F 0 "BT1" H 2418 6146 50  0000 L CNN
F 1 "Battery_Cell" H 2418 6055 50  0000 L CNN
F 2 "watch:BAT_PAD" V 2300 6110 50  0001 C CNN
F 3 "~" V 2300 6110 50  0001 C CNN
F 4 "https://www.amazon.de/Turnigy-nano-tech-300mah-Solo-Pro-Modellbau/dp/B016339JKO/" H 2300 6050 50  0001 C CNN "Order"
	1    2300 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F5AE82F
P 800 6350
F 0 "#PWR015" H 800 6100 50  0001 C CNN
F 1 "GND" H 805 6177 50  0000 C CNN
F 2 "" H 800 6350 50  0001 C CNN
F 3 "" H 800 6350 50  0001 C CNN
	1    800  6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F5B507D
P 800 6150
F 0 "R3" H 859 6196 50  0000 L CNN
F 1 "3k9" H 859 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 800 6150 50  0001 C CNN
F 3 "~" H 800 6150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F3K9/A130423CT-ND/8578255" H 800 6150 50  0001 C CNN "Order"
	1    800  6150
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U7
U 1 1 5F5A8B40
P 1300 5900
F 0 "U7" H 1050 6150 50  0000 C CNN
F 1 "MCP73831-2-OT" H 1700 6150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1350 5650 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1150 5850 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/microchip-technology/MCP73831T-2ACI-OT/MCP73831T-2ACI-OTCT-ND/1979802" H 1300 5900 50  0001 C CNN "Order"
	1    1300 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F639B42
P 1950 5950
F 0 "C3" H 2042 5996 50  0000 L CNN
F 1 "10uF" H 2042 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1950 5950 50  0001 C CNN
F 3 "~" H 1950 5950 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B106MQ8NRNC/1276-1948-1-ND/3890034" H 1950 5950 50  0001 C CNN "Order"
	1    1950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5F642F89
P 700 5650
F 0 "C14" H 792 5696 50  0000 L CNN
F 1 "10uF" H 792 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 700 5650 50  0001 C CNN
F 3 "~" H 700 5650 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B106MQ8NRNC/1276-1948-1-ND/3890034" H 700 5650 50  0001 C CNN "Order"
	1    700  5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F647BEF
P 700 5750
F 0 "#PWR0105" H 700 5500 50  0001 C CNN
F 1 "GND" H 705 5577 50  0000 C CNN
F 2 "" H 700 5750 50  0001 C CNN
F 3 "" H 700 5750 50  0001 C CNN
	1    700  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5850 2300 5800
Wire Wire Line
	1950 5850 1950 5800
Connection ~ 1950 5800
Wire Wire Line
	1950 5800 1700 5800
Wire Wire Line
	1950 6050 1950 6300
Wire Wire Line
	800  6300 800  6350
Wire Wire Line
	800  6300 800  6250
Connection ~ 800  6300
Wire Wire Line
	2300 6150 2300 6300
Wire Wire Line
	2300 6300 1950 6300
Connection ~ 1950 6300
Wire Wire Line
	1300 6200 1300 6300
Connection ~ 1300 6300
Wire Wire Line
	1300 6300 800  6300
Wire Wire Line
	900  6000 800  6000
Wire Wire Line
	800  6000 800  6050
$Comp
L power:+5V #PWR0104
U 1 1 5F6001FD
P 6000 850
F 0 "#PWR0104" H 6000 700 50  0001 C CNN
F 1 "+5V" H 6015 1023 50  0000 C CNN
F 2 "" H 6000 850 50  0001 C CNN
F 3 "" H 6000 850 50  0001 C CNN
	1    6000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F61383B
P 6000 1350
F 0 "#PWR0112" H 6000 1100 50  0001 C CNN
F 1 "GND" H 6005 1177 50  0000 C CNN
F 2 "" H 6000 1350 50  0001 C CNN
F 3 "" H 6000 1350 50  0001 C CNN
	1    6000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5F61C370
P 1300 5600
F 0 "#PWR0113" H 1300 5450 50  0001 C CNN
F 1 "+5V" H 1315 5773 50  0000 C CNN
F 2 "" H 1300 5600 50  0001 C CNN
F 3 "" H 1300 5600 50  0001 C CNN
	1    1300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0114
U 1 1 5F61DE5F
P 2300 5750
F 0 "#PWR0114" H 2300 5600 50  0001 C CNN
F 1 "+BATT" H 2315 5923 50  0000 C CNN
F 2 "" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0001 C CNN
	1    2300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5750 2300 5800
Connection ~ 2300 5800
$Comp
L power:+5V #PWR0115
U 1 1 5F6267EF
P 700 5550
F 0 "#PWR0115" H 700 5400 50  0001 C CNN
F 1 "+5V" H 715 5723 50  0000 C CNN
F 2 "" H 700 5550 50  0001 C CNN
F 3 "" H 700 5550 50  0001 C CNN
	1    700  5550
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:STP08CP05 U10
U 1 1 5F66FEFD
P 4700 4100
F 0 "U10" H 4450 4750 50  0000 C CNN
F 1 "STP08DP05" H 5000 4750 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 4700 4100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stp08cp05.pdf" H 4700 4100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/STP08DP05TTR/497-6029-1-ND/1632058/?itemSeq=337319735" H 4700 4100 50  0001 C CNN "Order"
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-105 U11
U 1 1 5F66FF04
P 9450 1400
F 0 "U11" H 9450 2067 50  0000 C CNN
F 1 "KCSA02-105" H 9450 1976 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 9450 800 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 8950 1875 50  0001 L CNN
F 4 "https://www.digikey.at/product-detail/de/XZFMDK05A/1497-1096-1-ND/4745605/?itemSeq=337314769" H 9450 1400 50  0001 C CNN "Order"
	1    9450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3500 4700 3500
$Comp
L Device:R_Small R4
U 1 1 5F66FF0C
P 4150 4150
F 0 "R4" H 4209 4196 50  0000 L CNN
F 1 "2k" H 4209 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4150 4150 50  0001 C CNN
F 3 "~" H 4150 4150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/panasonic-electronic-components/ERJ-PA3F2001V/P2-00KBYCT-ND/5036150" H 4150 4150 50  0001 C CNN "Order"
	1    4150 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F66FF13
P 3850 3250
F 0 "C5" H 3942 3296 50  0000 L CNN
F 1 "100nF" H 3942 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3850 3250 50  0001 C CNN
F 3 "~" H 3850 3250 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 3850 3250 50  0001 C CNN "Order"
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F66FF19
P 4700 4800
F 0 "#PWR0122" H 4700 4550 50  0001 C CNN
F 1 "GND" H 4705 4627 50  0000 C CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0123
U 1 1 5F66FF1F
P 9850 1600
F 0 "#PWR0123" H 9850 1450 50  0001 C CNN
F 1 "VCC" H 9865 1773 50  0000 C CNN
F 2 "" H 9850 1600 50  0001 C CNN
F 3 "" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1600 9850 1700
Wire Wire Line
	9850 1700 9750 1700
Wire Wire Line
	9850 1700 9850 1800
Wire Wire Line
	9850 1800 9750 1800
Connection ~ 9850 1700
$Comp
L power:+3.3V #PWR0124
U 1 1 5F66FF2A
P 4700 3400
F 0 "#PWR0124" H 4700 3250 50  0001 C CNN
F 1 "+3.3V" H 4715 3573 50  0000 C CNN
F 2 "" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 4150 4000
Wire Wire Line
	4150 4000 4150 4050
$Comp
L power:GND #PWR0125
U 1 1 5F66FF32
P 4150 4250
F 0 "#PWR0125" H 4150 4000 50  0001 C CNN
F 1 "GND" H 4155 4077 50  0000 C CNN
F 2 "" H 4150 4250 50  0001 C CNN
F 3 "" H 4150 4250 50  0001 C CNN
	1    4150 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F66FF38
P 3850 3350
F 0 "#PWR0126" H 3850 3100 50  0001 C CNN
F 1 "GND" H 3855 3177 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0127
U 1 1 5F66FF3E
P 3850 3150
F 0 "#PWR0127" H 3850 3000 50  0001 C CNN
F 1 "+3.3V" H 3865 3323 50  0000 C CNN
F 2 "" H 3850 3150 50  0001 C CNN
F 3 "" H 3850 3150 50  0001 C CNN
	1    3850 3150
	1    0    0    -1  
$EndComp
Text Label 4300 4600 2    50   ~ 0
OE
Text Label 4300 3800 2    50   ~ 0
LE
Text Label 4300 3700 2    50   ~ 0
CLK
Text Label 6750 3800 0    50   ~ 0
S3_B
Text Label 6750 3900 0    50   ~ 0
S3_A
Text Label 6750 3700 0    50   ~ 0
S3_F
Text Label 6750 3600 0    50   ~ 0
S3_G
Text Label 9150 1700 2    50   ~ 0
S3_G
Text Label 9150 1600 2    50   ~ 0
S3_F
Text Label 9150 1100 2    50   ~ 0
S3_A
Text Label 9150 1200 2    50   ~ 0
S3_B
Text Label 3500 4100 0    50   ~ 0
S3_DP
Text Label 9150 1800 2    50   ~ 0
S3_DP
Text Label 3500 4000 0    50   ~ 0
S3_C
Text Label 9150 1300 2    50   ~ 0
S3_C
Text Label 3500 4200 0    50   ~ 0
S3_D
Text Label 3500 4300 0    50   ~ 0
S3_E
Text Label 9150 1400 2    50   ~ 0
S3_D
Text Label 9150 1500 2    50   ~ 0
S3_E
$Comp
L Driver_LED:STP08CP05 U12
U 1 1 5F677AF1
P 6350 4100
F 0 "U12" H 6100 4750 50  0000 C CNN
F 1 "STP08DP05" H 6650 4750 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 6350 4100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stp08cp05.pdf" H 6350 4100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/STP08DP05TTR/497-6029-1-ND/1632058/?itemSeq=337319735" H 6350 4100 50  0001 C CNN "Order"
	1    6350 4100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-105 U13
U 1 1 5F677AF8
P 10550 1400
F 0 "U13" H 10550 2067 50  0000 C CNN
F 1 "KCSA02-105" H 10550 1976 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 10550 800 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 10050 1875 50  0001 L CNN
F 4 "https://www.digikey.at/product-detail/de/XZFMDK05A/1497-1096-1-ND/4745605/?itemSeq=337314769" H 10550 1400 50  0001 C CNN "Order"
	1    10550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3500 6350 3500
$Comp
L Device:R_Small R5
U 1 1 5F677B00
P 5800 4150
F 0 "R5" H 5859 4196 50  0000 L CNN
F 1 "2k" H 5859 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5800 4150 50  0001 C CNN
F 3 "~" H 5800 4150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/panasonic-electronic-components/ERJ-PA3F2001V/P2-00KBYCT-ND/5036150" H 5800 4150 50  0001 C CNN "Order"
	1    5800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5F677B07
P 5500 3250
F 0 "C16" H 5592 3296 50  0000 L CNN
F 1 "100nF" H 5592 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5500 3250 50  0001 C CNN
F 3 "~" H 5500 3250 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 5500 3250 50  0001 C CNN "Order"
	1    5500 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F677B0D
P 6350 4800
F 0 "#PWR0128" H 6350 4550 50  0001 C CNN
F 1 "GND" H 6355 4627 50  0000 C CNN
F 2 "" H 6350 4800 50  0001 C CNN
F 3 "" H 6350 4800 50  0001 C CNN
	1    6350 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0129
U 1 1 5F677B13
P 10950 1600
F 0 "#PWR0129" H 10950 1450 50  0001 C CNN
F 1 "VCC" H 10965 1773 50  0000 C CNN
F 2 "" H 10950 1600 50  0001 C CNN
F 3 "" H 10950 1600 50  0001 C CNN
	1    10950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1600 10950 1700
Wire Wire Line
	10950 1700 10850 1700
Wire Wire Line
	10950 1700 10950 1800
Wire Wire Line
	10950 1800 10850 1800
Connection ~ 10950 1700
$Comp
L power:+3.3V #PWR0130
U 1 1 5F677B1E
P 6350 3400
F 0 "#PWR0130" H 6350 3250 50  0001 C CNN
F 1 "+3.3V" H 6365 3573 50  0000 C CNN
F 2 "" H 6350 3400 50  0001 C CNN
F 3 "" H 6350 3400 50  0001 C CNN
	1    6350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4000 5800 4000
Wire Wire Line
	5800 4000 5800 4050
$Comp
L power:GND #PWR0131
U 1 1 5F677B26
P 5800 4250
F 0 "#PWR0131" H 5800 4000 50  0001 C CNN
F 1 "GND" H 5805 4077 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5F677B2C
P 5500 3350
F 0 "#PWR0132" H 5500 3100 50  0001 C CNN
F 1 "GND" H 5505 3177 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 5F677B32
P 5500 3150
F 0 "#PWR0133" H 5500 3000 50  0001 C CNN
F 1 "+3.3V" H 5515 3323 50  0000 C CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
Text Label 5950 4600 2    50   ~ 0
OE
Text Label 5950 3800 2    50   ~ 0
LE
Text Label 5950 3700 2    50   ~ 0
CLK
Text Label 6750 4500 0    50   ~ 0
MDI
Text Label 6750 4300 0    50   ~ 0
S4_B
Text Label 6750 4000 0    50   ~ 0
S4_F
Text Label 6750 4100 0    50   ~ 0
S4_G
Text Label 10250 1700 2    50   ~ 0
S4_G
Text Label 10250 1600 2    50   ~ 0
S4_F
Text Label 10250 1100 2    50   ~ 0
S4_A
Text Label 10250 1200 2    50   ~ 0
S4_B
Text Label 3500 3600 0    50   ~ 0
S4_DP
Text Label 10250 1800 2    50   ~ 0
S4_DP
Text Label 3500 3700 0    50   ~ 0
S4_C
Text Label 10250 1300 2    50   ~ 0
S4_C
Text Label 3500 3900 0    50   ~ 0
S4_D
Text Label 3500 3800 0    50   ~ 0
S4_E
Text Label 10250 1400 2    50   ~ 0
S4_D
Text Label 10250 1500 2    50   ~ 0
S4_E
NoConn ~ 1700 6000
Text Label 6750 4200 0    50   ~ 0
S4_A
Wire Wire Line
	1850 4500 2300 4500
Wire Wire Line
	2300 4500 2300 3600
Wire Wire Line
	2300 3600 2700 3600
Wire Wire Line
	3500 4500 3900 4500
Wire Wire Line
	3900 4500 3900 3600
Wire Wire Line
	5100 4500 5550 4500
Wire Wire Line
	5550 4500 5550 3600
Wire Wire Line
	5550 3600 5950 3600
$Comp
L power:GND #PWR0110
U 1 1 5F716396
P 4750 1200
F 0 "#PWR0110" H 4750 950 50  0001 C CNN
F 1 "GND" H 4755 1027 50  0000 C CNN
F 2 "" H 4750 1200 50  0001 C CNN
F 3 "" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5F717493
P 4300 950
F 0 "J1" H 4408 1231 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4408 1140 50  0000 C CNN
F 2 "watch:CONN_1x4_SMD" H 4300 950 50  0001 C CNN
F 3 "~" H 4300 950 50  0001 C CNN
F 4 "-" H 4300 950 50  0001 C CNN "Order"
	1    4300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1150 4750 1150
Wire Wire Line
	4750 1150 4750 1200
Wire Wire Line
	4750 1050 4500 1050
Wire Wire Line
	4500 950  4750 950 
Wire Wire Line
	4500 850  4750 850 
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5F7BC566
P 5400 1050
F 0 "J2" H 5508 1331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5508 1240 50  0000 C CNN
F 2 "watch:CONN_1x4_SMD" H 5400 1050 50  0001 C CNN
F 3 "~" H 5400 1050 50  0001 C CNN
F 4 "-" H 5400 1050 50  0001 C CNN "Order"
	1    5400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1350 6000 1250
Wire Wire Line
	6000 1250 5600 1250
Wire Wire Line
	6000 850  6000 950 
Wire Wire Line
	6000 950  5600 950 
Text Label 1750 1450 0    50   ~ 0
RX
Text Label 1750 1350 0    50   ~ 0
TX
Text Label 5600 1050 0    50   ~ 0
TX
Text Label 5600 1150 0    50   ~ 0
RX
$Comp
L power:+BATT #PWR0134
U 1 1 5F7D40D9
P 3050 5750
F 0 "#PWR0134" H 3050 5600 50  0001 C CNN
F 1 "+BATT" H 3065 5923 50  0000 C CNN
F 2 "" H 3050 5750 50  0001 C CNN
F 3 "" H 3050 5750 50  0001 C CNN
	1    3050 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5F7D4518
P 3050 6250
F 0 "#PWR0135" H 3050 6000 50  0001 C CNN
F 1 "GND" H 3055 6077 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F7D4A41
P 3050 5850
F 0 "R6" H 3109 5896 50  0000 L CNN
F 1 "47k" H 3109 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3050 5850 50  0001 C CNN
F 3 "~" H 3050 5850 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F47K/A130436CT-ND/8578268" H 3050 5850 50  0001 C CNN "Order"
	1    3050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F7D4EEE
P 3050 6150
F 0 "R7" H 3109 6196 50  0000 L CNN
F 1 "47k" H 3109 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3050 6150 50  0001 C CNN
F 3 "~" H 3050 6150 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F47K/A130436CT-ND/8578268" H 3050 6150 50  0001 C CNN "Order"
	1    3050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5950 3050 6000
Text Label 1750 1250 0    50   ~ 0
ADC
Text Label 3150 6000 0    50   ~ 0
ADC
Wire Wire Line
	3150 6000 3050 6000
Connection ~ 3050 6000
Wire Wire Line
	3050 6000 3050 6050
NoConn ~ 850  2150
Wire Wire Line
	4300 3600 3900 3600
$Comp
L Driver_LED:STP08CP05 U4
U 1 1 5F516877
P 1450 4100
F 0 "U4" H 1200 4750 50  0000 C CNN
F 1 "STP08DP05" H 1750 4750 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 1450 4100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stp08cp05.pdf" H 1450 4100 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/STP08DP05TTR/497-6029-1-ND/1632058/?itemSeq=337319735" H 1450 4100 50  0001 C CNN "Order"
	1    1450 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F68532D
P 5000 2350
F 0 "#PWR0106" H 5000 2100 50  0001 C CNN
F 1 "GND" H 5005 2177 50  0000 C CNN
F 2 "" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5F68BE18
P 5000 2200
F 0 "R8" H 5059 2246 50  0000 L CNN
F 1 "100k" H 5059 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 2200 50  0001 C CNN
F 3 "~" H 5000 2200 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F100K/A130440CT-ND/8578272" H 5000 2200 50  0001 C CNN "Order"
	1    5000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2350 5000 2300
Wire Wire Line
	5000 2100 5000 2050
Wire Wire Line
	5000 2050 4900 2050
Text Notes 5150 600  0    50   ~ 0
USART Interface
Wire Notes Line
	4600 1550 4600 2700
Wire Notes Line
	5300 1550 5300 2700
Wire Notes Line
	550  500  6500 500 
Wire Notes Line
	6500 500  6500 2700
Wire Notes Line
	2600 1550 6500 1550
Wire Notes Line
	550  2700 6500 2700
Wire Notes Line
	2600 1650 6500 1650
Wire Notes Line
	550  600  6500 600 
Wire Notes Line
	6600 500  11100 500 
Wire Notes Line
	11100 500  11100 2000
Wire Notes Line
	11100 2000 6600 2000
Wire Notes Line
	6600 2000 6600 500 
Wire Notes Line
	6600 600  11100 600 
Text Notes 6600 600  0    50   ~ 0
LED-Displays
Wire Notes Line
	3450 5200 6300 5200
Wire Notes Line
	6300 5200 6300 6950
Wire Notes Line
	6300 6950 3450 6950
Wire Notes Line
	3450 6950 3450 5200
Wire Notes Line
	3450 5300 6300 5300
Text Notes 3450 5300 0    50   ~ 0
Input Power Selection
Connection ~ 6000 950 
Wire Wire Line
	1950 5800 2300 5800
Wire Wire Line
	1300 6300 1950 6300
Wire Notes Line
	550  5200 3350 5200
Wire Notes Line
	3350 5200 3350 6600
Wire Notes Line
	3350 6600 550  6600
Wire Notes Line
	550  6600 550  5200
Wire Notes Line
	550  5300 3350 5300
Text Notes 550  5300 0    50   ~ 0
Battery Charger
Wire Notes Line
	2900 6600 2900 5200
Text Notes 2900 5300 0    50   ~ 0
Bat LVL
Text Notes 550  2900 0    50   ~ 0
LED Driver
Wire Notes Line
	7050 2800 7050 5100
Wire Notes Line
	550  5100 550  2800
Connection ~ 4850 6250
Connection ~ 4650 6500
Wire Wire Line
	4850 6500 4850 6250
Wire Wire Line
	4650 6500 4850 6500
Wire Wire Line
	4650 6500 4550 6500
Wire Wire Line
	4650 5950 4650 6500
Wire Wire Line
	4550 5950 4650 5950
Wire Wire Line
	4850 5750 4850 5850
$Comp
L power:VCC #PWR0109
U 1 1 5F6E369C
P 4850 5750
F 0 "#PWR0109" H 4850 5600 50  0001 C CNN
F 1 "VCC" H 4865 5923 50  0000 C CNN
F 2 "" H 4850 5750 50  0001 C CNN
F 3 "" H 4850 5750 50  0001 C CNN
	1    4850 5750
	1    0    0    -1  
$EndComp
Connection ~ 4850 5850
Connection ~ 4600 5850
Wire Wire Line
	4600 5850 4850 5850
Wire Wire Line
	4600 6400 4550 6400
Wire Wire Line
	4600 5850 4600 6400
Wire Wire Line
	4550 5850 4600 5850
Wire Wire Line
	3850 6050 3900 6050
Wire Wire Line
	3850 6100 3850 6050
Wire Wire Line
	3850 6600 3900 6600
Wire Wire Line
	3850 6650 3850 6600
$Comp
L power:GND #PWR0121
U 1 1 5F62E549
P 3850 6650
F 0 "#PWR0121" H 3850 6400 50  0001 C CNN
F 1 "GND" H 3855 6477 50  0000 C CNN
F 2 "" H 3850 6650 50  0001 C CNN
F 3 "" H 3850 6650 50  0001 C CNN
	1    3850 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F62DECB
P 3850 6100
F 0 "#PWR0120" H 3850 5850 50  0001 C CNN
F 1 "GND" H 3855 5927 50  0000 C CNN
F 2 "" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0001 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5F62DAE1
P 3900 6400
F 0 "#PWR0119" H 3900 6250 50  0001 C CNN
F 1 "+5V" V 3915 6528 50  0000 L CNN
F 2 "" H 3900 6400 50  0001 C CNN
F 3 "" H 3900 6400 50  0001 C CNN
	1    3900 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5F62D01D
P 3900 5950
F 0 "#PWR0118" H 3900 5800 50  0001 C CNN
F 1 "+5V" V 3915 6078 50  0000 L CNN
F 2 "" H 3900 5950 50  0001 C CNN
F 3 "" H 3900 5950 50  0001 C CNN
	1    3900 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0117
U 1 1 5F62CBB3
P 3900 6500
F 0 "#PWR0117" H 3900 6350 50  0001 C CNN
F 1 "+BATT" V 3915 6627 50  0000 L CNN
F 2 "" H 3900 6500 50  0001 C CNN
F 3 "" H 3900 6500 50  0001 C CNN
	1    3900 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0116
U 1 1 5F62C24D
P 3900 5850
F 0 "#PWR0116" H 3900 5700 50  0001 C CNN
F 1 "+BATT" V 3915 5977 50  0000 L CNN
F 2 "" H 3900 5850 50  0001 C CNN
F 3 "" H 3900 5850 50  0001 C CNN
	1    3900 5850
	0    -1   -1   0   
$EndComp
$Comp
L watch:LM66100 U9
U 1 1 5F62BB95
P 4200 6550
F 0 "U9" H 4225 6925 50  0000 C CNN
F 1 "LM66100" H 4225 6834 50  0000 C CNN
F 2 "lm66100:LM66100DCKT" H 4150 6850 50  0001 C CNN
F 3 "~" H 4150 6850 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/texas-instruments/LM66100DCKR/296-53541-1-ND/10273271" H 4200 6550 50  0001 C CNN "Order"
	1    4200 6550
	1    0    0    -1  
$EndComp
$Comp
L watch:LM66100 U8
U 1 1 5F5D8BE0
P 4200 6000
F 0 "U8" H 4225 6375 50  0000 C CNN
F 1 "LM66100" H 4225 6284 50  0000 C CNN
F 2 "lm66100:LM66100DCKT" H 4150 6300 50  0001 C CNN
F 3 "~" H 4150 6300 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/texas-instruments/LM66100DCKR/296-53541-1-ND/10273271" H 4200 6000 50  0001 C CNN "Order"
	1    4200 6000
	1    0    0    -1  
$EndComp
Connection ~ 5450 6250
Wire Wire Line
	4850 6250 5450 6250
Wire Wire Line
	4850 6150 4850 6250
Wire Wire Line
	4850 5850 5050 5850
Wire Wire Line
	4850 5950 4850 5850
$Comp
L Device:C_Small C15
U 1 1 5F64DC52
P 4850 6050
F 0 "C15" H 4942 6096 50  0000 L CNN
F 1 "1uF" H 4942 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4850 6050 50  0001 C CNN
F 3 "~" H 4850 6050 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 4850 6050 50  0001 C CNN "Order"
	1    4850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6250 6000 6250
Connection ~ 5600 6250
$Comp
L power:GND #PWR0111
U 1 1 5F647F72
P 5600 6250
F 0 "#PWR0111" H 5600 6000 50  0001 C CNN
F 1 "GND" H 5605 6077 50  0000 C CNN
F 2 "" H 5600 6250 50  0001 C CNN
F 3 "" H 5600 6250 50  0001 C CNN
	1    5600 6250
	1    0    0    -1  
$EndComp
Connection ~ 5050 5850
Wire Wire Line
	6000 5850 6000 5950
Connection ~ 6000 5850
Wire Wire Line
	5750 5850 6000 5850
Wire Wire Line
	6000 5800 6000 5850
Wire Wire Line
	5450 6250 5600 6250
Wire Wire Line
	6000 6250 6000 6150
$Comp
L power:+3.3V #PWR03
U 1 1 5F5B06DC
P 6000 5800
F 0 "#PWR03" H 6000 5650 50  0001 C CNN
F 1 "+3.3V" H 6015 5973 50  0000 C CNN
F 2 "" H 6000 5800 50  0001 C CNN
F 3 "" H 6000 5800 50  0001 C CNN
	1    6000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F5AAA85
P 6000 6050
F 0 "C4" H 6092 6096 50  0000 L CNN
F 1 "1uF" H 6092 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6000 6050 50  0001 C CNN
F 3 "~" H 6000 6050 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 6000 6050 50  0001 C CNN "Order"
	1    6000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5950 5050 5850
Wire Wire Line
	5150 5950 5050 5950
Wire Wire Line
	5150 5850 5050 5850
$Comp
L Regulator_Linear:TLV70033_SOT23-5 U6
U 1 1 5F585D5D
P 5450 5950
F 0 "U6" H 5450 6292 50  0000 C CNN
F 1 "TLV70033_SOT23-5" H 5450 6201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5450 6275 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv700.pdf" H 5450 6000 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/TLV70033DDCR/296-27937-1-ND/2440840/?itemSeq=337666037" H 5450 5950 50  0001 C CNN "Order"
	1    5450 5950
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  2800 7050 2800
Wire Notes Line
	550  2900 7050 2900
Wire Notes Line
	550  5100 7050 5100
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F7F71E5
P 6000 1250
F 0 "#FLG0103" H 6000 1325 50  0001 C CNN
F 1 "PWR_FLAG" V 6000 1378 50  0000 L CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	0    1    1    0   
$EndComp
Connection ~ 6000 1250
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F721A58
P 4600 5850
F 0 "#FLG0102" H 4600 5925 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 6023 50  0000 C CNN
F 2 "" H 4600 5850 50  0001 C CNN
F 3 "~" H 4600 5850 50  0001 C CNN
	1    4600 5850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F72102E
P 6000 950
F 0 "#FLG0101" H 6000 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 1123 50  0000 C CNN
F 2 "" H 6000 950 50  0001 C CNN
F 3 "~" H 6000 950 50  0001 C CNN
	1    6000 950 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
