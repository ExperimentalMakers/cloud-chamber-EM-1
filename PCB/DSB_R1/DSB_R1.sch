EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MLAB_HEADER:HEADER_2x05_PARALLEL J1
U 1 1 5E1A07A0
P 5700 2800
F 0 "J1" V 5617 2522 60  0000 R CNN
F 1 "HEADER_2x05_PARALLEL" V 5564 2522 60  0001 R CNN
F 2 "Mlab_Pin_Headers:Straight_2x05" H 5828 2699 60  0001 L CNN
F 3 "" H 5700 3000 60  0001 C CNN
	1    5700 2800
	0    -1   -1   0   
$EndComp
$Comp
L MLAB_MECHANICAL:HOLE M1
U 1 1 5E1A0F5F
P 4800 3600
F 0 "M1" H 4819 3708 60  0001 C CNN
F 1 "HOLE" H 4819 3708 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 4800 3600 60  0001 C CNN
F 3 "" H 4800 3600 60  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L MLAB_MECHANICAL:HOLE M2
U 1 1 5E1A15F3
P 4800 3800
F 0 "M2" H 4819 3908 60  0001 C CNN
F 1 "HOLE" H 4819 3908 60  0001 C CNN
F 2 "Mlab_Mechanical:MountingHole_3mm" H 4800 3800 60  0001 C CNN
F 3 "" H 4800 3800 60  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E1A199F
P 4950 3900
F 0 "#PWR0101" H 4950 3650 50  0001 C CNN
F 1 "GND" H 4955 3727 50  0000 C CNN
F 2 "" H 4950 3900 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3800 4950 3800
Wire Wire Line
	4950 3800 4950 3900
Wire Wire Line
	4850 3600 4950 3600
Wire Wire Line
	4950 3600 4950 3800
Connection ~ 4950 3800
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 5E1A5100
P 4250 3150
F 0 "U1" H 4020 3196 50  0001 R CNN
F 1 "DS18B20" H 4020 3150 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3250 2900 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 4100 3400 50  0001 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E1A8D8C
P 5900 3250
F 0 "#PWR0102" H 5900 3000 50  0001 C CNN
F 1 "GND" H 5905 3077 50  0000 C CNN
F 2 "" H 5900 3250 50  0001 C CNN
F 3 "" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E1A8F22
P 5500 3250
F 0 "#PWR0103" H 5500 3000 50  0001 C CNN
F 1 "GND" H 5505 3077 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5E1A9439
P 5700 3250
F 0 "#PWR0104" H 5700 3100 50  0001 C CNN
F 1 "+3.3V" H 5715 3423 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3250 5900 3050
Wire Wire Line
	5700 3250 5700 3050
Wire Wire Line
	5500 3250 5500 3050
Wire Wire Line
	5800 3050 5800 3150
Wire Wire Line
	5800 3150 5600 3150
Wire Wire Line
	5600 3050 5600 3150
Connection ~ 5600 3150
Text Label 5300 3150 2    50   ~ 0
data
$Comp
L power:GND #PWR0105
U 1 1 5E1AEDDC
P 4250 3600
F 0 "#PWR0105" H 4250 3350 50  0001 C CNN
F 1 "GND" H 4255 3427 50  0000 C CNN
F 2 "" H 4250 3600 50  0001 C CNN
F 3 "" H 4250 3600 50  0001 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5E1AEFBB
P 4250 2700
F 0 "#PWR0106" H 4250 2550 50  0001 C CNN
F 1 "+3.3V" H 4265 2873 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3450 4250 3600
Wire Wire Line
	4250 2700 4250 2850
$Comp
L Device:R_Small R1
U 1 1 5E1BB0C9
P 4850 2950
F 0 "R1" H 4909 2996 50  0000 L CNN
F 1 "4k7" H 4909 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4850 2950 50  0001 C CNN
F 3 "~" H 4850 2950 50  0001 C CNN
	1    4850 2950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5E1BB6D3
P 4850 2700
F 0 "#PWR0107" H 4850 2550 50  0001 C CNN
F 1 "+3.3V" H 4865 2873 50  0000 C CNN
F 2 "" H 4850 2700 50  0001 C CNN
F 3 "" H 4850 2700 50  0001 C CNN
	1    4850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3150 4850 3150
Wire Wire Line
	4850 3050 4850 3150
Connection ~ 4850 3150
Wire Wire Line
	4850 3150 5600 3150
Wire Wire Line
	4850 2850 4850 2700
$EndSCHEMATC