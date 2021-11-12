EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "aWristWatch"
Date "2021-04-05"
Rev "3"
Comp "Andreas Kohler"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8000 3050 850  1400
U 60633D5C
F0 "Display" 50
F1 "display.sch" 50
F2 "SDI" I L 8000 3150 50 
F3 "CLK" I L 8000 3250 50 
F4 "LE" I L 8000 3350 50 
F5 "OE" I L 8000 3450 50 
F6 "V_DISP" I L 8000 4350 50 
$EndSheet
$Comp
L power:GND #PWR0128
U 1 1 605FDCA4
P 3200 4650
F 0 "#PWR0128" H 3200 4400 50  0001 C CNN
F 1 "GND" H 3205 4477 50  0001 C CNN
F 2 "" H 3200 4650 50  0001 C CNN
F 3 "" H 3200 4650 50  0001 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 605FD7F9
P 2900 4650
F 0 "#PWR0127" H 2900 4400 50  0001 C CNN
F 1 "GND" H 2905 4477 50  0001 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
NoConn ~ 3800 4350
NoConn ~ 3800 4250
$Sheet
S 3900 3050 1200 1400
U 6071FFAF
F0 "USB Protection Circuits" 50
F1 "USB_Protection.sch" 50
F2 "VBUS" I L 3900 3150 50 
F3 "CC1" I L 3900 3350 50 
F4 "CC2" I L 3900 3450 50 
F5 "5V@500mA" O R 5100 3150 50 
F6 "IN_D+" I L 3900 3900 50 
F7 "IN_D-" I L 3900 3700 50 
$EndSheet
$Sheet
S 5300 3950 900  500 
U 6063DAC2
F0 "Battery Charger" 50
F1 "Battery.sch" 50
F2 "VIN" I R 6200 4250 50 
F3 "VBAT" O R 6200 4350 50 
F4 "VBAT_HALF" O R 6200 4050 50 
$EndSheet
$Sheet
S 6500 4150 1300 300 
U 605CEFBE
F0 "Power Selection Circuits" 50
F1 "Power_Selection.sch" 50
F2 "5V" I L 6500 4250 50 
F3 "VBAT" I L 6500 4350 50 
F4 "V_DISP" O R 7800 4350 50 
F5 "3V3" O R 7800 4250 50 
$EndSheet
Wire Wire Line
	3900 3150 3850 3150
Wire Wire Line
	3800 3350 3900 3350
Wire Wire Line
	3800 3450 3900 3450
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 6062777E
P 3200 3750
F 0 "J1" H 3200 4600 50  0000 C CNN
F 1 "DX07S016JA1R1500" H 3200 4500 50  0000 C CNN
F 2 "watch:DX07S016JA1R1500" H 3350 3750 50  0001 C CNN
F 3 "https://www.jae.com/en/connectors/series/detail/product/id=91780" H 3350 3750 50  0001 C CNN
F 4 "JAE Electronics" H 3200 3750 50  0001 C CNN "Manufacturer"
F 5 "https://www.mouser.at/ProductDetail/JAE-Electronics/DX07S016JA1R1500?qs=%2Fha2pyFaduhIxG%252BJ4XjlZeX%2FOvIg0QPAOjcqMfE5RQ7WfL0OkHc3Zw%3D%3D" H 3200 3750 50  0001 C CNN "Order"
F 6 "DX07S016JA1R1500" H 3200 3750 50  0001 C CNN "MNR"
	1    3200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3650 3850 3650
Wire Wire Line
	3850 3650 3850 3700
Wire Wire Line
	3850 3750 3800 3750
Wire Wire Line
	3800 3850 3850 3850
Wire Wire Line
	3850 3850 3850 3900
Wire Wire Line
	3850 3950 3800 3950
Wire Wire Line
	3900 3700 3850 3700
Connection ~ 3850 3700
Wire Wire Line
	3850 3700 3850 3750
Wire Wire Line
	3850 3900 3900 3900
Connection ~ 3850 3900
Wire Wire Line
	3850 3900 3850 3950
Wire Wire Line
	6300 3650 6300 4250
Wire Wire Line
	6300 4250 6200 4250
Wire Wire Line
	6200 4050 6400 4050
Wire Wire Line
	6400 4050 6400 3750
Wire Wire Line
	6400 3750 6500 3750
Wire Wire Line
	6200 4350 6500 4350
Wire Wire Line
	6300 4250 6500 4250
Connection ~ 6300 4250
Wire Wire Line
	7800 3150 8000 3150
Wire Wire Line
	8000 3250 7800 3250
Wire Wire Line
	7800 3350 8000 3350
Wire Wire Line
	8000 3450 7800 3450
Wire Wire Line
	7800 4350 8000 4350
$Comp
L power:+3V3 #PWR0101
U 1 1 60611A17
P 7900 4250
F 0 "#PWR0101" H 7900 4100 50  0001 C CNN
F 1 "+3V3" H 7900 4400 50  0000 C CNN
F 2 "" H 7900 4250 50  0001 C CNN
F 3 "" H 7900 4250 50  0001 C CNN
	1    7900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4250 7800 4250
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 606A57E9
P 3850 2950
F 0 "#FLG0101" H 3850 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 3850 3123 50  0000 C CNN
F 2 "" H 3850 2950 50  0001 C CNN
F 3 "~" H 3850 2950 50  0001 C CNN
	1    3850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2950 3850 3150
Connection ~ 3850 3150
Wire Wire Line
	3850 3150 3800 3150
$Comp
L power:GND #PWR0151
U 1 1 606ABA38
P 3550 4800
F 0 "#PWR0151" H 3550 4550 50  0001 C CNN
F 1 "GND" H 3555 4627 50  0001 C CNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "" H 3550 4800 50  0001 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 606ABF80
P 3550 4800
F 0 "#FLG0104" H 3550 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 4973 50  0000 C CNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "~" H 3550 4800 50  0001 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3150 6050 3650
Wire Wire Line
	5100 3150 6050 3150
Wire Wire Line
	6050 3650 6300 3650
$Sheet
S 6500 3050 1300 900 
U 605DA130
F0 "Microcontroller Circuitry" 50
F1 "Microcontroller.sch" 50
F2 "LE" O R 7800 3350 50 
F3 "CLK" O R 7800 3250 50 
F4 "MOSI" O R 7800 3150 50 
F5 "OE" O R 7800 3450 50 
F6 "BAT_SENSE" I L 6500 3750 50 
$EndSheet
$EndSCHEMATC
