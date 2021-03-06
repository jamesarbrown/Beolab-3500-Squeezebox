EESchema Schematic File Version 4
LIBS:Crossfield PCB Replacement-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "www.jamesarbrown.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 11450 5200 0    50   ~ 0
+9V
Text Label 11450 5300 0    50   ~ 0
-9V
Text Label 11450 5400 0    50   ~ 0
GND
Text Label 11450 5500 0    50   ~ 0
BASL
Text Label 11450 5600 0    50   ~ 0
TREBL
Text Label 11450 5700 0    50   ~ 0
~PLIM
Text Label 11450 5800 0    50   ~ 0
PMUTE
Text Label 11450 5900 0    50   ~ 0
~PFAIL
$Comp
L TE_Amp_215079_PCB_Sockets:8_Way_215079-8 P25-2
U 1 1 5C69AEBA
P 12000 5500
F 0 "P25-2" H 12029 5496 50  0000 L CNN
F 1 "Power Amp Left" H 12029 5405 50  0000 L CNN
F 2 "TE_215079-8" H 12000 5500 50  0001 L BNN
F 3 "TE Connectivity" H 12000 5500 50  0001 L BNN
F 4 "https://www.te.com/usa-en/product-215079-8.html?te_bu=Cor&te_type=disp&te_campaign=seda_glo_cor-seda-global-disp-prtnr-fy19-seda-model-bom-cta_sma-317_1&elqCampaignId=32493" H 12000 5500 50  0001 L BNN "Field4"
F 5 "TE CONNECTIVITY 215079-8 / Tyco215079-8 / AMP 215079-8 / micro-match female on board connector" H 12000 5500 50  0001 L BNN "Field5"
F 6 "https://www.digikey.co.uk/product-detail/en/te-connectivity-amp-connectors/215079-8/A105450CT-ND/3465694?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 12000 5500 50  0001 L BNN "Field6"
F 7 "215079-8" H 12000 5500 50  0001 L BNN "Field7"
F 8 "215079-8" H 12000 5500 50  0001 L BNN "Field8"
F 9 "A105450CT-ND" H 12000 5500 50  0001 L BNN "Field9"
F 10 "Compliant" H 12000 5500 50  0001 L BNN "Field10"
F 11 "None" H 12000 5500 50  0001 L BNN "Field11"
	1    12000 5500
	1    0    0    -1  
$EndComp
$Comp
L TE_Amp_215079_PCB_Sockets:12_Way_8-215079-2 P6-P18
U 1 1 5C69B0E0
P 10250 4050
F 0 "P6-P18" H 10250 4817 50  0000 C CNN
F 1 "12_Way_8-215079-2" H 10250 4726 50  0000 C CNN
F 2 "TE_8-215079-2" H 10250 4050 50  0001 L BNN
F 3 "8-215079-2" H 10250 4050 50  0001 L BNN
F 4 "Straight female header [TE Connectivity] 8-215079-2 Straight female header" H 10250 4050 50  0001 L BNN "Field4"
F 5 "None" H 10250 4050 50  0001 L BNN "Field5"
F 6 "https://www.te.com/usa-en/product-8-215079-2.html?te_bu=Cor&te_type=disp&te_campaign=seda_glo_cor-seda-global-disp-prtnr-fy19-seda-model-bom-cta_sma-317_1&elqCampaignId=32493" H 10250 4050 50  0001 L BNN "Field6"
F 7 "https://www.digikey.co.uk/product-detail/en/te-connectivity-amp-connectors/8-215079-2/A99469CT-ND/1955771?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 10250 4050 50  0001 L BNN "Field7"
F 8 "8-215079-2" H 10250 4050 50  0001 L BNN "Field8"
F 9 "A99469CT-ND" H 10250 4050 50  0001 L BNN "Field9"
F 10 "TE Connectivity" H 10250 4050 50  0001 L BNN "Field10"
F 11 "Compliant" H 10250 4050 50  0001 L BNN "Field11"
	1    10250 4050
	1    0    0    -1  
$EndComp
Text Label 10750 3950 0    50   ~ 0
+9V
Wire Wire Line
	10750 3950 11350 3950
Wire Wire Line
	10750 4150 11200 4150
Text Label 10750 4150 0    50   ~ 0
-9V
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C69BE7F
P 11850 3850
F 0 "H1" H 11950 3901 50  0000 L CNN
F 1 "+9V" H 11950 3810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 11850 3850 50  0001 C CNN
F 3 "~" H 11850 3850 50  0001 C CNN
	1    11850 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C69BFD8
P 12250 3850
F 0 "H2" H 12350 3901 50  0000 L CNN
F 1 "-9V" H 12350 3810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 12250 3850 50  0001 C CNN
F 3 "~" H 12250 3850 50  0001 C CNN
	1    12250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 3950 11850 3950
Connection ~ 11350 3950
Wire Wire Line
	12250 4150 12250 3950
Text Label 11450 6400 0    50   ~ 0
+9V
Text Label 11450 6500 0    50   ~ 0
-9V
Text Label 11450 6600 0    50   ~ 0
GND
Text Label 11450 6700 0    50   ~ 0
BASR
Text Label 11450 6800 0    50   ~ 0
TREBR
Text Label 11450 6900 0    50   ~ 0
~PLIM
Text Label 11450 7000 0    50   ~ 0
PMUTE
Text Label 11450 7100 0    50   ~ 0
~PFAIL
$Comp
L TE_Amp_215079_PCB_Sockets:8_Way_215079-8 P16-2
U 1 1 5C69C657
P 12000 6700
F 0 "P16-2" H 12029 6696 50  0000 L CNN
F 1 "Power Amp Right" H 12029 6605 50  0000 L CNN
F 2 "TE_215079-8" H 12000 6700 50  0001 L BNN
F 3 "TE Connectivity" H 12000 6700 50  0001 L BNN
F 4 "https://www.te.com/usa-en/product-215079-8.html?te_bu=Cor&te_type=disp&te_campaign=seda_glo_cor-seda-global-disp-prtnr-fy19-seda-model-bom-cta_sma-317_1&elqCampaignId=32493" H 12000 6700 50  0001 L BNN "Field4"
F 5 "TE CONNECTIVITY 215079-8 / Tyco215079-8 / AMP 215079-8 / micro-match female on board connector" H 12000 6700 50  0001 L BNN "Field5"
F 6 "https://www.digikey.co.uk/product-detail/en/te-connectivity-amp-connectors/215079-8/A105450CT-ND/3465694?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 12000 6700 50  0001 L BNN "Field6"
F 7 "215079-8" H 12000 6700 50  0001 L BNN "Field7"
F 8 "215079-8" H 12000 6700 50  0001 L BNN "Field8"
F 9 "A105450CT-ND" H 12000 6700 50  0001 L BNN "Field9"
F 10 "Compliant" H 12000 6700 50  0001 L BNN "Field10"
F 11 "None" H 12000 6700 50  0001 L BNN "Field11"
	1    12000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 3950 11350 5200
Connection ~ 11200 4150
Wire Wire Line
	11200 4150 12250 4150
Wire Wire Line
	11700 5200 11350 5200
Connection ~ 11350 5200
Wire Wire Line
	11350 5200 11350 6400
Wire Wire Line
	11350 6400 11700 6400
Wire Wire Line
	11200 4150 11200 5300
Wire Wire Line
	11200 6500 11700 6500
Wire Wire Line
	11200 5300 11700 5300
Connection ~ 11200 5300
Wire Wire Line
	11200 5300 11200 6500
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C69CDCF
P 10200 5200
F 0 "H3" H 10300 5251 50  0000 L CNN
F 1 "L GND" H 10300 5160 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 10200 5200 50  0001 C CNN
F 3 "~" H 10200 5200 50  0001 C CNN
	1    10200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5400 10200 5300
Wire Wire Line
	10200 5400 10600 5400
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C69D0D0
P 9800 5200
F 0 "H4" H 9900 5251 50  0000 L CNN
F 1 "BASS" H 9900 5160 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 9800 5200 50  0001 C CNN
F 3 "~" H 9800 5200 50  0001 C CNN
	1    9800 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5C69D203
P 9400 5200
F 0 "H5" H 9500 5251 50  0000 L CNN
F 1 "TREB" H 9500 5160 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 9400 5200 50  0001 C CNN
F 3 "~" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 5500 9800 5500
Wire Wire Line
	9800 5300 9800 5500
Wire Wire Line
	9400 5300 9400 5600
Wire Wire Line
	9400 5600 11700 5600
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 5C69DA01
P 4600 4850
F 0 "H7" H 4700 4901 50  0000 L CNN
F 1 "~PMUTE" H 4700 4810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 4600 4850 50  0001 C CNN
F 3 "~" H 4600 4850 50  0001 C CNN
	1    4600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 5700 11700 5700
Wire Wire Line
	10800 5800 11700 5800
Wire Wire Line
	10900 5900 11700 5900
Wire Wire Line
	10900 7100 11700 7100
Wire Wire Line
	10700 6900 11700 6900
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 5C6A17D4
P 10200 6400
F 0 "H9" H 10300 6451 50  0000 L CNN
F 1 "R GND" H 10300 6360 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 10200 6400 50  0001 C CNN
F 3 "~" H 10200 6400 50  0001 C CNN
	1    10200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 6600 10200 6500
$Comp
L Mechanical:MountingHole_Pad H10
U 1 1 5C6A17DD
P 9800 6400
F 0 "H10" H 9900 6451 50  0000 L CNN
F 1 "BASS" H 9900 6360 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 9800 6400 50  0001 C CNN
F 3 "~" H 9800 6400 50  0001 C CNN
	1    9800 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H11
U 1 1 5C6A17E4
P 9400 6400
F 0 "H11" H 9500 6451 50  0000 L CNN
F 1 "TREB" H 9500 6360 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 9400 6400 50  0001 C CNN
F 3 "~" H 9400 6400 50  0001 C CNN
	1    9400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 6700 9800 6700
Wire Wire Line
	9800 6500 9800 6700
Wire Wire Line
	9400 6500 9400 6800
Wire Wire Line
	9400 6800 11700 6800
$Comp
L Mechanical:MountingHole_Pad H12
U 1 1 5C6A4BC3
P 3350 3050
F 0 "H12" H 3450 3101 50  0000 L CNN
F 1 "+5V" H 3450 3010 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3350 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H13
U 1 1 5C6A5BBB
P 3700 3050
F 0 "H13" H 3800 3101 50  0000 L CNN
F 1 "5V GND" H 3800 3010 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3700 3050 50  0001 C CNN
F 3 "~" H 3700 3050 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5C6A6D01
P 5650 4850
F 0 "H6" H 5750 4901 50  0000 L CNN
F 1 "~PLIM" H 5750 4810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 5650 4850 50  0001 C CNN
F 3 "~" H 5650 4850 50  0001 C CNN
	1    5650 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H14
U 1 1 5C6AB1BA
P 4100 3050
F 0 "H14" H 4200 3101 50  0000 L CNN
F 1 "PON" H 4200 3010 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 4100 3050 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5400 10600 5800
Wire Wire Line
	10200 6600 10600 6600
Connection ~ 10600 5400
Connection ~ 10600 6600
Wire Wire Line
	10600 6600 11700 6600
$Comp
L Device:R R1
U 1 1 5C6D4368
P 4100 3500
F 0 "R1" V 4307 3500 50  0000 C CNN
F 1 "1k" V 4216 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 3500 50  0001 C CNN
F 3 "~" H 4100 3500 50  0001 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5800 10800 7000
Wire Wire Line
	10700 5700 10700 6900
$Comp
L Device:R R3
U 1 1 5C7B7D41
P 4250 5400
F 0 "R3" V 4457 5400 50  0000 C CNN
F 1 "1k" V 4366 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4180 5400 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10900 5900 10900 7100
Wire Wire Line
	10600 5400 11700 5400
Connection ~ 10800 7000
Wire Wire Line
	10800 7000 11700 7000
$Comp
L power:GND #PWR0102
U 1 1 5C81370A
P 5650 5600
F 0 "#PWR0102" H 5650 5350 50  0001 C CNN
F 1 "GND" H 5655 5427 50  0000 C CNN
F 2 "" H 5650 5600 50  0001 C CNN
F 3 "" H 5650 5600 50  0001 C CNN
	1    5650 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C82786D
P 5100 4800
F 0 "R4" H 5170 4846 50  0000 L CNN
F 1 "10k" H 5170 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5030 4800 50  0001 C CNN
F 3 "~" H 5100 4800 50  0001 C CNN
	1    5100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4650 5100 4550
Wire Wire Line
	5100 4550 6450 4550
Wire Wire Line
	10700 6900 5100 6900
Connection ~ 10700 6900
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 5C835913
P 7000 4850
F 0 "H8" H 7100 4901 50  0000 L CNN
F 1 "~PFAIL" H 7100 4810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 7000 4850 50  0001 C CNN
F 3 "~" H 7000 4850 50  0001 C CNN
	1    7000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C83591A
P 7000 5600
F 0 "#PWR0103" H 7000 5350 50  0001 C CNN
F 1 "GND" H 7005 5427 50  0000 C CNN
F 2 "" H 7000 5600 50  0001 C CNN
F 3 "" H 7000 5600 50  0001 C CNN
	1    7000 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C835921
P 6450 4800
F 0 "R5" H 6520 4846 50  0000 L CNN
F 1 "10k" H 6520 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6380 4800 50  0001 C CNN
F 3 "~" H 6450 4800 50  0001 C CNN
	1    6450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4950 7000 5150
Wire Wire Line
	6700 5400 6450 5400
Wire Wire Line
	6450 4950 6450 5400
Wire Wire Line
	6450 4650 6450 4550
Wire Wire Line
	10900 7100 6450 7100
Wire Wire Line
	6450 7100 6450 5400
Connection ~ 10900 7100
Connection ~ 6450 5400
$Comp
L power:GND #PWR0104
U 1 1 5C83DE4C
P 10250 5900
F 0 "#PWR0104" H 10250 5650 50  0001 C CNN
F 1 "GND" H 10255 5727 50  0000 C CNN
F 2 "" H 10250 5900 50  0001 C CNN
F 3 "" H 10250 5900 50  0001 C CNN
	1    10250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5900 10250 5800
Wire Wire Line
	10250 5800 10600 5800
Connection ~ 10600 5800
Wire Wire Line
	10600 5800 10600 6600
$Comp
L Mechanical:MountingHole_Pad H15
U 1 1 5C84719B
P 8500 4850
F 0 "H15" H 8600 4901 50  0000 L CNN
F 1 "+3V3" H 8600 4810 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 8500 4850 50  0001 C CNN
F 3 "~" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C84DF3F
P 7900 5050
F 0 "R6" V 8107 5050 50  0000 C CNN
F 1 "10k" V 8016 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7830 5050 50  0001 C CNN
F 3 "~" H 7900 5050 50  0001 C CNN
	1    7900 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C857056
P 7900 5400
F 0 "R7" V 8107 5400 50  0000 C CNN
F 1 "10k" V 8016 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7830 5400 50  0001 C CNN
F 3 "~" H 7900 5400 50  0001 C CNN
	1    7900 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 5150 7650 5150
Wire Wire Line
	7650 5150 7650 5400
Wire Wire Line
	7650 5400 7750 5400
Connection ~ 7000 5150
Wire Wire Line
	7000 5150 7000 5200
Wire Wire Line
	8050 5050 8500 5050
Wire Wire Line
	8500 5050 8500 4950
Wire Wire Line
	8500 5050 8500 5400
Wire Wire Line
	8500 5400 8050 5400
Connection ~ 8500 5050
Wire Wire Line
	7750 5050 5650 5050
Text Notes 12250 6400 0    50   ~ 0
8 Pin Socket\nRS PN 680-5132\n\n8 Pin Plug\n680-5148
Text Notes 9600 4200 2    50   ~ 0
12pin Socket\n301-8054\n\n12pin plug\nRS 680-4993
Text Notes 5150 3050 2    50   ~ 0
4Pin Socket\n745-5397\n4pin Plug\n341-7394
$Comp
L TE_Amp_215079_PCB_Sockets:4_Way_215079-4 P21
U 1 1 5C8F39AC
P 5200 3750
F 0 "P21" H 5229 3971 50  0000 L CNN
F 1 "4_Way_215079-4" H 5229 3880 50  0000 L CNN
F 2 "Connector_TE_215079_Series:TE_215079-4" H 5200 3900 50  0001 L BNN
F 3 "TE Connectivity" H 5200 3900 50  0001 L BNN
F 4 "https://www.te.com/usa-en/product-215079-8.html?te_bu=Cor&te_type=disp&te_campaign=seda_glo_cor-seda-global-disp-prtnr-fy19-seda-model-bom-cta_sma-317_1&elqCampaignId=32493" H 5200 3900 50  0001 L BNN "Field4"
F 5 "TE CONNECTIVITY 215079-8 / Tyco215079-8 / AMP 215079-8 / micro-match female on board connector" H 5200 3900 50  0001 L BNN "Field5"
F 6 "https://www.digikey.co.uk/product-detail/en/te-connectivity-amp-connectors/215079-8/A105450CT-ND/3465694?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 5200 3900 50  0001 L BNN "Field6"
F 7 "215079-4" H 5200 3900 50  0001 L BNN "Field7"
F 8 "215079-4" H 5200 3900 50  0001 L BNN "Field8"
F 9 "A105450CT-ND" H 5200 3900 50  0001 L BNN "Field9"
F 10 "Compliant" H 5200 3900 50  0001 L BNN "Field10"
F 11 "None" H 5200 3900 50  0001 L BNN "Field11"
	1    5200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3150 3350 4550
Wire Wire Line
	4100 3350 4100 3150
$Comp
L Transistor_BJT:BC548 Q1
U 1 1 5C9701AB
P 4300 3800
F 0 "Q1" H 4491 3846 50  0000 L CNN
F 1 "BC549" H 4491 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4500 3725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4300 3800 50  0001 L CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3550 4400 3550
Wire Wire Line
	4400 3550 4400 3600
Wire Wire Line
	4900 3450 4700 3450
Wire Wire Line
	4700 3450 4700 4550
Wire Wire Line
	4700 4550 5100 4550
Connection ~ 5100 4550
Connection ~ 4700 4550
Wire Wire Line
	4100 3650 4100 3800
$Comp
L power:GND #PWR?
U 1 1 5C99686D
P 3700 3150
F 0 "#PWR?" H 3700 2900 50  0001 C CNN
F 1 "GND" H 3705 2977 50  0000 C CNN
F 2 "" H 3700 3150 50  0001 C CNN
F 3 "" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C9968D0
P 4400 4000
F 0 "#PWR?" H 4400 3750 50  0001 C CNN
F 1 "GND" H 4405 3827 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4950 5100 5400
Wire Wire Line
	5650 5200 5650 5050
$Comp
L Transistor_BJT:BC557 Q3
U 1 1 5C9A882E
P 5550 5400
F 0 "Q3" H 5741 5354 50  0000 L CNN
F 1 "BC557" H 5741 5445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5750 5325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 5550 5400 50  0001 L CNN
	1    5550 5400
	1    0    0    1   
$EndComp
Connection ~ 5650 5050
Wire Wire Line
	5650 4950 5650 5050
Wire Wire Line
	5350 5400 5100 5400
Connection ~ 5100 5400
Wire Wire Line
	5100 5400 5100 6900
$Comp
L Transistor_BJT:BC557 Q4
U 1 1 5C9B7F48
P 6900 5400
F 0 "Q4" H 7091 5354 50  0000 L CNN
F 1 "BC557" H 7091 5445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7100 5325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 6900 5400 50  0001 L CNN
	1    6900 5400
	1    0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5C9EBECA
P 3350 4800
F 0 "R2" H 3420 4846 50  0000 L CNN
F 1 "10k" H 3420 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3280 4800 50  0001 C CNN
F 3 "~" H 3350 4800 50  0001 C CNN
	1    3350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4650 3350 4550
$Comp
L Transistor_BJT:BC548 Q2
U 1 1 5C9F2222
P 3900 5400
F 0 "Q2" H 4091 5446 50  0000 L CNN
F 1 "BC549" H 4091 5355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4100 5325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3900 5400 50  0001 L CNN
	1    3900 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 7000 10800 7000
Wire Wire Line
	3350 4550 4700 4550
$Comp
L power:GND #PWR?
U 1 1 5C9FE5CA
P 3800 5600
F 0 "#PWR?" H 3800 5350 50  0001 C CNN
F 1 "GND" H 3805 5427 50  0000 C CNN
F 2 "" H 3800 5600 50  0001 C CNN
F 3 "" H 3800 5600 50  0001 C CNN
	1    3800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4600 5400
Wire Wire Line
	3350 4950 3350 5200
Wire Wire Line
	4600 4950 4600 5400
Wire Wire Line
	3800 5200 3350 5200
Connection ~ 3350 5200
Wire Wire Line
	3350 5200 3350 7000
$EndSCHEMATC
