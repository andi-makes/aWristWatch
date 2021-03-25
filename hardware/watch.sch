EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Armbanduhr"
Date "2020-09-20"
Rev "3"
Comp "Probieren geht über studieren. Immer."
Comment1 "Andreas Kohler"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
Wire Wire Line
	4750 1050 4500 1050
Wire Wire Line
	4500 950  4750 950 
Wire Wire Line
	4500 850  4750 850 
Text Label 1750 1250 0    50   ~ 0
ADC
NoConn ~ 850  2150
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
Wire Notes Line
	4600 1550 4600 2700
Wire Notes Line
	5300 1550 5300 2700
Wire Notes Line
	2600 1550 6500 1550
Wire Notes Line
	550  2700 6500 2700
Wire Notes Line
	2600 1650 6500 1650
Wire Wire Line
	5950 3050 5950 3150
$Comp
L power:VCC #PWR0109
U 1 1 5F6E369C
P 5950 3050
F 0 "#PWR0109" H 5950 2900 50  0001 C CNN
F 1 "VCC" H 5965 3223 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
Connection ~ 5950 3150
Wire Wire Line
	5950 3150 6150 3150
Wire Wire Line
	5950 3250 5950 3150
$Comp
L Device:C_Small C15
U 1 1 5F64DC52
P 5950 3350
F 0 "C15" H 6042 3396 50  0000 L CNN
F 1 "1uF" H 6042 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5950 3350 50  0001 C CNN
F 3 "~" H 5950 3350 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 5950 3350 50  0001 C CNN "Order"
	1    5950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F647F72
P 6550 3600
F 0 "#PWR0111" H 6550 3350 50  0001 C CNN
F 1 "GND" H 6555 3427 50  0000 C CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
Connection ~ 6150 3150
Wire Wire Line
	7100 3150 7100 3250
Connection ~ 7100 3150
Wire Wire Line
	6850 3150 7100 3150
Wire Wire Line
	7100 3100 7100 3150
$Comp
L power:+3.3V #PWR03
U 1 1 5F5B06DC
P 7100 3100
F 0 "#PWR03" H 7100 2950 50  0001 C CNN
F 1 "+3.3V" H 7115 3273 50  0000 C CNN
F 2 "" H 7100 3100 50  0001 C CNN
F 3 "" H 7100 3100 50  0001 C CNN
	1    7100 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F5AAA85
P 7100 3350
F 0 "C4" H 7192 3396 50  0000 L CNN
F 1 "1uF" H 7192 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 3350 50  0001 C CNN
F 3 "~" H 7100 3350 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 7100 3350 50  0001 C CNN "Order"
	1    7100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3250 6150 3150
Wire Wire Line
	6250 3250 6150 3250
Wire Wire Line
	6250 3150 6150 3150
$Comp
L Regulator_Linear:TLV70033_SOT23-5 U6
U 1 1 5F585D5D
P 6550 3250
F 0 "U6" H 6550 3592 50  0000 C CNN
F 1 "TLV70033_SOT23-5" H 6550 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6550 3575 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv700.pdf" H 6550 3300 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/TLV70033DDCR/296-27937-1-ND/2440840/?itemSeq=337666037" H 6550 3250 50  0001 C CNN "Order"
	1    6550 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6065A6E4
P 4300 950
F 0 "J2" H 4408 1231 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4408 1140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4300 950 50  0001 C CNN
F 3 "~" H 4300 950 50  0001 C CNN
	1    4300 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6065B894
P 4550 1200
F 0 "#PWR0102" H 4550 950 50  0001 C CNN
F 1 "GND" H 4555 1027 50  0000 C CNN
F 2 "" H 4550 1200 50  0001 C CNN
F 3 "" H 4550 1200 50  0001 C CNN
	1    4550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1150 4550 1150
Wire Wire Line
	4550 1150 4550 1200
$Comp
L watch:TPS2115A-Q1 U3
U 1 1 606892B3
P 5100 3350
F 0 "U3" H 5100 3825 50  0000 C CNN
F 1 "TPS2115A-Q1" H 5100 3734 50  0000 C CNN
F 2 "watch:TSSOP-8_3x6.4_P0.65mm" H 6000 4200 50  0001 C CNN
F 3 "" H 6000 4200 50  0001 C CNN
	1    5100 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 6068A662
P 4700 3750
F 0 "R2" H 4759 3796 50  0000 L CNN
F 1 "10k" H 4759 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4700 3750 50  0001 C CNN
F 3 "~" H 4700 3750 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/te-connectivity-passive-product/CRGP0603F47K/A130436CT-ND/8578268" H 4700 3750 50  0001 C CNN "Order"
	1    4700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3650 4700 3600
Wire Wire Line
	4700 3600 4750 3600
$Comp
L power:GND #PWR0104
U 1 1 60691B04
P 4700 3850
F 0 "#PWR0104" H 4700 3600 50  0001 C CNN
F 1 "GND" H 4705 3677 50  0000 C CNN
F 2 "" H 4700 3850 50  0001 C CNN
F 3 "" H 4700 3850 50  0001 C CNN
	1    4700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3500 4550 3500
Wire Wire Line
	4550 3500 4550 3850
$Comp
L power:GND #PWR0110
U 1 1 60696017
P 4550 3850
F 0 "#PWR0110" H 4550 3600 50  0001 C CNN
F 1 "GND" H 4555 3677 50  0000 C CNN
F 2 "" H 4550 3850 50  0001 C CNN
F 3 "" H 4550 3850 50  0001 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
NoConn ~ 4750 3400
Wire Wire Line
	5950 3450 5950 3600
Wire Wire Line
	5950 3600 6550 3600
Wire Wire Line
	6550 3600 7100 3600
Wire Wire Line
	7100 3450 7100 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 3550 6550 3600
$Sheet
S 8650 5000 1700 1000
U 60633D5C
F0 "Display" 50
F1 "display.sch" 50
F2 "SDI" I L 8650 5100 50 
F3 "CLK" I L 8650 5200 50 
F4 "LE" I L 8650 5300 50 
F5 "OE" I L 8650 5400 50 
$EndSheet
Text Notes 5150 600  0    50   ~ 0
Input Voltage Connector
Wire Notes Line
	550  500  6500 500 
Wire Notes Line
	550  600  6500 600 
Wire Notes Line
	6500 500  6500 2700
$Comp
L power:GND #PWR0128
U 1 1 605FDCA4
P 1150 4600
F 0 "#PWR0128" H 1150 4350 50  0001 C CNN
F 1 "GND" H 1155 4427 50  0000 C CNN
F 2 "" H 1150 4600 50  0001 C CNN
F 3 "" H 1150 4600 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 605FD7F9
P 850 4600
F 0 "#PWR0127" H 850 4350 50  0001 C CNN
F 1 "GND" H 855 4427 50  0000 C CNN
F 2 "" H 850 4600 50  0001 C CNN
F 3 "" H 850 4600 50  0001 C CNN
	1    850  4600
	1    0    0    -1  
$EndComp
NoConn ~ 1750 3900
NoConn ~ 1750 3800
NoConn ~ 1750 3700
NoConn ~ 1750 3600
NoConn ~ 1750 4300
NoConn ~ 1750 4200
Wire Wire Line
	1750 3400 2150 3400
Wire Wire Line
	1750 3300 2150 3300
Wire Wire Line
	2150 3100 1750 3100
$Sheet
S 2150 2950 1200 550 
U 6071FFAF
F0 "USB Protection Circuits" 50
F1 "USB_Protection.sch" 50
F2 "VBUS" I L 2150 3100 50 
F3 "CC1" I L 2150 3300 50 
F4 "CC2" I L 2150 3400 50 
F5 "5V@500mA" O R 3350 3100 50 
$EndSheet
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 6062777E
P 1150 3700
F 0 "J1" H 1257 4567 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1257 4476 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_Palconn_UTC16-G" H 1300 3700 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1300 3700 50  0001 C CNN
	1    1150 3700
	1    0    0    -1  
$EndComp
$Sheet
S 2150 3850 1200 850 
U 6063DAC2
F0 "Battery Charger" 50
F1 "Battery.sch" 50
F2 "VIN" I L 2150 4050 50 
F3 "VBAT" O R 3350 4050 50 
$EndSheet
Wire Wire Line
	3350 3100 3450 3100
Wire Wire Line
	3450 3100 3450 3650
Wire Wire Line
	3450 3650 2050 3650
Wire Wire Line
	2050 3650 2050 4050
Wire Wire Line
	2050 4050 2150 4050
Wire Wire Line
	3350 4050 3550 4050
Wire Wire Line
	3550 4050 3550 3200
$Comp
L power:GND #PWR?
U 1 1 606AED65
P 5500 3850
F 0 "#PWR?" H 5500 3600 50  0001 C CNN
F 1 "GND" H 5505 3677 50  0000 C CNN
F 2 "" H 5500 3850 50  0001 C CNN
F 3 "" H 5500 3850 50  0001 C CNN
	1    5500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3850 5500 3600
Wire Wire Line
	5500 3600 5450 3600
$Comp
L Device:C_Small C?
U 1 1 606D1942
P 3700 3400
F 0 "C?" H 3792 3446 50  0000 L CNN
F 1 "100nF" H 3792 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3400 50  0001 C CNN
F 3 "~" H 3700 3400 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 3700 3400 50  0001 C CNN "Order"
	1    3700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606DB2B4
P 4150 3400
F 0 "C?" H 4242 3446 50  0000 L CNN
F 1 "100nF" H 4242 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4150 3400 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
F 4 "https://www.digikey.at/product-detail/de/kemet/C0603C104M4RACTU/399-1099-1-ND/411374" H 4150 3400 50  0001 C CNN "Order"
	1    4150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3200 4150 3200
Wire Wire Line
	3450 3100 3700 3100
Connection ~ 3450 3100
Wire Wire Line
	3700 3300 3700 3100
Wire Wire Line
	4150 3300 4150 3200
$Comp
L power:GND #PWR?
U 1 1 606E7157
P 3700 3500
F 0 "#PWR?" H 3700 3250 50  0001 C CNN
F 1 "GND" H 3705 3327 50  0000 C CNN
F 2 "" H 3700 3500 50  0001 C CNN
F 3 "" H 3700 3500 50  0001 C CNN
	1    3700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606E9A17
P 4150 3500
F 0 "#PWR?" H 4150 3250 50  0001 C CNN
F 1 "GND" H 4155 3327 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3100 3700 3100
Connection ~ 3700 3100
Wire Wire Line
	4150 3200 4750 3200
Connection ~ 4150 3200
Wire Wire Line
	5450 3150 5950 3150
$EndSCHEMATC
