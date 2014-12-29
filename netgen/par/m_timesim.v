////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: m_timesim.v
// /___/   /\     Timestamp: Sat Dec 06 16:01:19 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf m.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim m.ncd m_timesim.v 
// Device	: 3s400tq144-4 (PRODUCTION 1.39 2013-10-13)
// Input file	: m.ncd
// Output file	: F:\GitHub\FPGA\driver1\maincodev6\netgen\par\m_timesim.v
// # of Modules	: 1
// Design Name	: m
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module m (
  clk, PARITY_IN, M1n1, TXE, M1p1, M2n1, CLK_PAR, M2p1, M3n1, M3p1, USB_WR, HALL11, HALL21, HALL31, DATA_USB, LED, HALL1_COUNT, RPM_IN, MOTOR_NUM
);
  input clk;
  input PARITY_IN;
  output M1n1;
  input TXE;
  output M1p1;
  output M2n1;
  input CLK_PAR;
  output M2p1;
  output M3n1;
  output M3p1;
  output USB_WR;
  input HALL11;
  input HALL21;
  input HALL31;
  output [7 : 0] DATA_USB;
  output [3 : 0] LED;
  input [4 : 0] HALL1_COUNT;
  input [7 : 0] RPM_IN;
  input [1 : 0] MOTOR_NUM;
  wire clk_BUFGP;
  wire \driver1/TIMER_COUNT_cmp_eq0000 ;
  wire \driver1/CLK_TIMER_not0001 ;
  wire \FT245/cnt_cmp_eq0000 ;
  wire \FT245/Mcount_cnt_cy[1] ;
  wire \FT245/Mcount_cnt_cy[3] ;
  wire \FT245/Mcount_cnt_cy[5] ;
  wire \FT245/Mcount_cnt_cy[7] ;
  wire \FT245/Mcount_cnt_cy[9] ;
  wire \FT245/Mcount_cnt_cy[11] ;
  wire CLK_PAR_IBUF_847;
  wire \driver1/CLK_TIMER_848 ;
  wire HALL11_IBUF_849;
  wire HALL21_IBUF_850;
  wire HALL31_IBUF_851;
  wire HALL1_COUNT_0_IBUF_852;
  wire HALL1_COUNT_1_IBUF_853;
  wire HALL1_COUNT_2_IBUF_854;
  wire PARITY_IN_IBUF_855;
  wire HALL1_COUNT_3_IBUF_856;
  wire \FT245/USB_WR_857 ;
  wire HALL1_COUNT_4_IBUF_858;
  wire \MOTOR_NUM<0>_IBUF_861 ;
  wire \MOTOR_NUM<1>_IBUF_864 ;
  wire TXE_IBUF_869;
  wire \RPM_IN<0>_IBUF_874 ;
  wire \RPM_IN<1>_IBUF_876 ;
  wire \RPM_IN<2>_IBUF_878 ;
  wire \RPM_IN<3>_IBUF_879 ;
  wire \RPM_IN<4>_IBUF_880 ;
  wire \RPM_IN<5>_IBUF_881 ;
  wire \RPM_IN<6>_IBUF_882 ;
  wire \RPM_IN<7>_IBUF_883 ;
  wire \driver1/PWM_1/oc_out_cmp_ge00001_SW0/O ;
  wire \FT245/cnt1_not0001_0 ;
  wire \FT245/N11 ;
  wire \FT245/cnt1_FSM_FFd6_897 ;
  wire \FT245/cnt1_FSM_FFd4_899 ;
  wire \FT245/cnt1_FSM_FFd2_900 ;
  wire N12_0;
  wire \FT245/N01_0 ;
  wire N18;
  wire \driver1/PWM_1/oc_out_911 ;
  wire \FT245/cnt_cmp_eq00007_0 ;
  wire N16;
  wire \FT245/cnt1_FSM_FFd3_914 ;
  wire \FT245/cnt1_FSM_FFd5_915 ;
  wire N14;
  wire N8;
  wire \FT245/cnt_cmp_eq000041_0 ;
  wire \FT245/cnt_cmp_eq000019_0 ;
  wire \FT245/cnt_cmp_eq000054_0 ;
  wire \driver1/PWM_1/Cnt_1<0>/DXMUX_963 ;
  wire \driver1/PWM_1/Cnt_1<0>/XORF_961 ;
  wire \driver1/PWM_1/Cnt_1<0>/LOGIC_ONE_960 ;
  wire \driver1/PWM_1/Cnt_1<0>/CYINIT_959 ;
  wire \driver1/PWM_1/Cnt_1<0>/CYSELF_950 ;
  wire \driver1/PWM_1/Cnt_1<0>/BXINV_948 ;
  wire \driver1/PWM_1/Cnt_1<0>/DYMUX_944 ;
  wire \driver1/PWM_1/Cnt_1<0>/XORG_942 ;
  wire \driver1/PWM_1/Cnt_1<0>/CYMUXG_941 ;
  wire \driver1/PWM_1/Cnt_1<0>/LOGIC_ZERO_939 ;
  wire \driver1/PWM_1/Cnt_1<0>/CYSELG_930 ;
  wire \driver1/PWM_1/Cnt_1<0>/G ;
  wire \driver1/PWM_1/Cnt_1<0>/CLKINV_928 ;
  wire \driver1/PWM_1/Cnt_1<2>/DXMUX_1011 ;
  wire \driver1/PWM_1/Cnt_1<2>/XORF_1009 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYINIT_1008 ;
  wire \driver1/PWM_1/Cnt_1<2>/F ;
  wire \driver1/PWM_1/Cnt_1<2>/DYMUX_995 ;
  wire \driver1/PWM_1/Cnt_1<2>/XORG_993 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYSELF_991 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYMUXFAST_990 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYAND_989 ;
  wire \driver1/PWM_1/Cnt_1<2>/FASTCARRY_988 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYMUXG2_987 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYMUXF2_986 ;
  wire \driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 ;
  wire \driver1/PWM_1/Cnt_1<2>/CYSELG_976 ;
  wire \driver1/PWM_1/Cnt_1<2>/G ;
  wire \driver1/PWM_1/Cnt_1<2>/CLKINV_974 ;
  wire \driver1/PWM_1/Cnt_1<4>/DXMUX_1059 ;
  wire \driver1/PWM_1/Cnt_1<4>/XORF_1057 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYINIT_1056 ;
  wire \driver1/PWM_1/Cnt_1<4>/F ;
  wire \driver1/PWM_1/Cnt_1<4>/DYMUX_1043 ;
  wire \driver1/PWM_1/Cnt_1<4>/XORG_1041 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYSELF_1039 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYMUXFAST_1038 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYAND_1037 ;
  wire \driver1/PWM_1/Cnt_1<4>/FASTCARRY_1036 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYMUXG2_1035 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYMUXF2_1034 ;
  wire \driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 ;
  wire \driver1/PWM_1/Cnt_1<4>/CYSELG_1024 ;
  wire \driver1/PWM_1/Cnt_1<4>/G ;
  wire \driver1/PWM_1/Cnt_1<4>/CLKINV_1022 ;
  wire \driver1/PWM_1/Cnt_1<6>/DXMUX_1107 ;
  wire \driver1/PWM_1/Cnt_1<6>/XORF_1105 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYINIT_1104 ;
  wire \driver1/PWM_1/Cnt_1<6>/F ;
  wire \driver1/PWM_1/Cnt_1<6>/DYMUX_1091 ;
  wire \driver1/PWM_1/Cnt_1<6>/XORG_1089 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYSELF_1087 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYMUXFAST_1086 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYAND_1085 ;
  wire \driver1/PWM_1/Cnt_1<6>/FASTCARRY_1084 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYMUXG2_1083 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYMUXF2_1082 ;
  wire \driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 ;
  wire \driver1/PWM_1/Cnt_1<6>/CYSELG_1072 ;
  wire \driver1/PWM_1/Cnt_1<6>/G ;
  wire \driver1/PWM_1/Cnt_1<6>/CLKINV_1070 ;
  wire \driver1/PWM_1/Cnt_1<8>/DXMUX_1155 ;
  wire \driver1/PWM_1/Cnt_1<8>/XORF_1153 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYINIT_1152 ;
  wire \driver1/PWM_1/Cnt_1<8>/F ;
  wire \driver1/PWM_1/Cnt_1<8>/DYMUX_1139 ;
  wire \driver1/PWM_1/Cnt_1<8>/XORG_1137 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYSELF_1135 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYMUXFAST_1134 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYAND_1133 ;
  wire \driver1/PWM_1/Cnt_1<8>/FASTCARRY_1132 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYMUXG2_1131 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYMUXF2_1130 ;
  wire \driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 ;
  wire \driver1/PWM_1/Cnt_1<8>/CYSELG_1120 ;
  wire \driver1/PWM_1/Cnt_1<8>/G ;
  wire \driver1/PWM_1/Cnt_1<8>/CLKINV_1118 ;
  wire \driver1/PWM_1/Cnt_1<10>/DXMUX_1176 ;
  wire \driver1/PWM_1/Cnt_1<10>/XORF_1174 ;
  wire \driver1/PWM_1/Cnt_1<10>/CYINIT_1173 ;
  wire \driver1/PWM_1/Cnt_1<10>_rt_1171 ;
  wire \driver1/PWM_1/Cnt_1<10>/CLKINV_1163 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYINIT_1208 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELF_1199 ;
  wire \driver1/TIMER_COUNT<4>_rt_1198 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/BXINV_1197 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYMUXG_1196 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_1194 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELG_1188 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELF_1232 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXFAST_1231 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYAND_1230 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/FASTCARRY_1229 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXG2_1228 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXF2_1227 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_1226 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELG_1220 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000/LOGIC_ZERO_1253 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000/CYINIT_1252 ;
  wire \driver1/TIMER_COUNT_cmp_eq0000/CYSELF_1246 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/CYINIT_1282 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELF_1273 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/BXINV_1271 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/CYMUXG_1270 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/LOGIC_ONE_1268 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELG_1262 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELF_1306 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXFAST_1305 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYAND_1304 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/FASTCARRY_1303 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXG2_1302 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXF2_1301 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE_1300 ;
  wire \driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELG_1294 ;
  wire \driver1/CLK_TIMER_not0001/LOGIC_ONE_1327 ;
  wire \driver1/CLK_TIMER_not0001/CYINIT_1326 ;
  wire \driver1/CLK_TIMER_not0001/CYSELF_1320 ;
  wire \FT245/cnt<0>/DXMUX_1373 ;
  wire \FT245/cnt<0>/XORF_1371 ;
  wire \FT245/cnt<0>/LOGIC_ONE_1370 ;
  wire \FT245/cnt<0>/CYINIT_1369 ;
  wire \FT245/cnt<0>/CYSELF_1360 ;
  wire \FT245/cnt<0>/BXINV_1358 ;
  wire \FT245/cnt<0>/DYMUX_1353 ;
  wire \FT245/cnt<0>/XORG_1351 ;
  wire \FT245/cnt<0>/CYMUXG_1350 ;
  wire \FT245/Mcount_cnt_cy[0] ;
  wire \FT245/cnt<0>/LOGIC_ZERO_1348 ;
  wire \FT245/cnt<0>/CYSELG_1339 ;
  wire \FT245/cnt<0>/G ;
  wire \FT245/cnt<0>/SRINV_1337 ;
  wire \FT245/cnt<0>/CLKINV_1336 ;
  wire \FT245/cnt<2>/DXMUX_1425 ;
  wire \FT245/cnt<2>/XORF_1423 ;
  wire \FT245/cnt<2>/CYINIT_1422 ;
  wire \FT245/cnt<2>/F ;
  wire \FT245/cnt<2>/DYMUX_1408 ;
  wire \FT245/cnt<2>/XORG_1406 ;
  wire \FT245/Mcount_cnt_cy[2] ;
  wire \FT245/cnt<2>/CYSELF_1404 ;
  wire \FT245/cnt<2>/CYMUXFAST_1403 ;
  wire \FT245/cnt<2>/CYAND_1402 ;
  wire \FT245/cnt<2>/FASTCARRY_1401 ;
  wire \FT245/cnt<2>/CYMUXG2_1400 ;
  wire \FT245/cnt<2>/CYMUXF2_1399 ;
  wire \FT245/cnt<2>/LOGIC_ZERO_1398 ;
  wire \FT245/cnt<2>/CYSELG_1389 ;
  wire \FT245/cnt<2>/G ;
  wire \FT245/cnt<2>/SRINV_1387 ;
  wire \FT245/cnt<2>/CLKINV_1386 ;
  wire \FT245/cnt<4>/DXMUX_1477 ;
  wire \FT245/cnt<4>/XORF_1475 ;
  wire \FT245/cnt<4>/CYINIT_1474 ;
  wire \FT245/cnt<4>/F ;
  wire \FT245/cnt<4>/DYMUX_1460 ;
  wire \FT245/cnt<4>/XORG_1458 ;
  wire \FT245/Mcount_cnt_cy[4] ;
  wire \FT245/cnt<4>/CYSELF_1456 ;
  wire \FT245/cnt<4>/CYMUXFAST_1455 ;
  wire \FT245/cnt<4>/CYAND_1454 ;
  wire \FT245/cnt<4>/FASTCARRY_1453 ;
  wire \FT245/cnt<4>/CYMUXG2_1452 ;
  wire \FT245/cnt<4>/CYMUXF2_1451 ;
  wire \FT245/cnt<4>/LOGIC_ZERO_1450 ;
  wire \FT245/cnt<4>/CYSELG_1441 ;
  wire \FT245/cnt<4>/G ;
  wire \FT245/cnt<4>/SRINV_1439 ;
  wire \FT245/cnt<4>/CLKINV_1438 ;
  wire \FT245/cnt<6>/DXMUX_1529 ;
  wire \FT245/cnt<6>/XORF_1527 ;
  wire \FT245/cnt<6>/CYINIT_1526 ;
  wire \FT245/cnt<6>/F ;
  wire \FT245/cnt<6>/DYMUX_1512 ;
  wire \FT245/cnt<6>/XORG_1510 ;
  wire \FT245/Mcount_cnt_cy[6] ;
  wire \FT245/cnt<6>/CYSELF_1508 ;
  wire \FT245/cnt<6>/CYMUXFAST_1507 ;
  wire \FT245/cnt<6>/CYAND_1506 ;
  wire \FT245/cnt<6>/FASTCARRY_1505 ;
  wire \FT245/cnt<6>/CYMUXG2_1504 ;
  wire \FT245/cnt<6>/CYMUXF2_1503 ;
  wire \FT245/cnt<6>/LOGIC_ZERO_1502 ;
  wire \FT245/cnt<6>/CYSELG_1493 ;
  wire \FT245/cnt<6>/G ;
  wire \FT245/cnt<6>/SRINV_1491 ;
  wire \FT245/cnt<6>/CLKINV_1490 ;
  wire \FT245/cnt<8>/DXMUX_1581 ;
  wire \FT245/cnt<8>/XORF_1579 ;
  wire \FT245/cnt<8>/CYINIT_1578 ;
  wire \FT245/cnt<8>/F ;
  wire \FT245/cnt<8>/DYMUX_1564 ;
  wire \FT245/cnt<8>/XORG_1562 ;
  wire \FT245/Mcount_cnt_cy[8] ;
  wire \FT245/cnt<8>/CYSELF_1560 ;
  wire \FT245/cnt<8>/CYMUXFAST_1559 ;
  wire \FT245/cnt<8>/CYAND_1558 ;
  wire \FT245/cnt<8>/FASTCARRY_1557 ;
  wire \FT245/cnt<8>/CYMUXG2_1556 ;
  wire \FT245/cnt<8>/CYMUXF2_1555 ;
  wire \FT245/cnt<8>/LOGIC_ZERO_1554 ;
  wire \FT245/cnt<8>/CYSELG_1545 ;
  wire \FT245/cnt<8>/G ;
  wire \FT245/cnt<8>/SRINV_1543 ;
  wire \FT245/cnt<8>/CLKINV_1542 ;
  wire \FT245/cnt<10>/DXMUX_1633 ;
  wire \FT245/cnt<10>/XORF_1631 ;
  wire \FT245/cnt<10>/CYINIT_1630 ;
  wire \FT245/cnt<10>/F ;
  wire \FT245/cnt<10>/DYMUX_1616 ;
  wire \FT245/cnt<10>/XORG_1614 ;
  wire \FT245/Mcount_cnt_cy[10] ;
  wire \FT245/cnt<10>/CYSELF_1612 ;
  wire \FT245/cnt<10>/CYMUXFAST_1611 ;
  wire \FT245/cnt<10>/CYAND_1610 ;
  wire \FT245/cnt<10>/FASTCARRY_1609 ;
  wire \FT245/cnt<10>/CYMUXG2_1608 ;
  wire \FT245/cnt<10>/CYMUXF2_1607 ;
  wire \FT245/cnt<10>/LOGIC_ZERO_1606 ;
  wire \FT245/cnt<10>/CYSELG_1597 ;
  wire \FT245/cnt<10>/G ;
  wire \FT245/cnt<10>/SRINV_1595 ;
  wire \FT245/cnt<10>/CLKINV_1594 ;
  wire \FT245/cnt<12>/DXMUX_1685 ;
  wire \FT245/cnt<12>/XORF_1683 ;
  wire \FT245/cnt<12>/CYINIT_1682 ;
  wire \FT245/cnt<12>/F ;
  wire \FT245/cnt<12>/DYMUX_1668 ;
  wire \FT245/cnt<12>/XORG_1666 ;
  wire \FT245/Mcount_cnt_cy[12] ;
  wire \FT245/cnt<12>/CYSELF_1664 ;
  wire \FT245/cnt<12>/CYMUXFAST_1663 ;
  wire \FT245/cnt<12>/CYAND_1662 ;
  wire \FT245/cnt<12>/FASTCARRY_1661 ;
  wire \FT245/cnt<12>/CYMUXG2_1660 ;
  wire \FT245/cnt<12>/CYMUXF2_1659 ;
  wire \FT245/cnt<12>/LOGIC_ZERO_1658 ;
  wire \FT245/cnt<12>/CYSELG_1649 ;
  wire \FT245/cnt<12>/G ;
  wire \FT245/cnt<12>/SRINV_1647 ;
  wire \FT245/cnt<12>/CLKINV_1646 ;
  wire \FT245/cnt<14>/DXMUX_1730 ;
  wire \FT245/cnt<14>/XORF_1728 ;
  wire \FT245/cnt<14>/LOGIC_ZERO_1727 ;
  wire \FT245/cnt<14>/CYINIT_1726 ;
  wire \FT245/cnt<14>/CYSELF_1717 ;
  wire \FT245/cnt<14>/F ;
  wire \FT245/cnt<14>/DYMUX_1711 ;
  wire \FT245/cnt<14>/XORG_1709 ;
  wire \FT245/Mcount_cnt_cy[14] ;
  wire \FT245/cnt<15>_rt_1706 ;
  wire \FT245/cnt<14>/SRINV_1698 ;
  wire \FT245/cnt<14>/CLKINV_1697 ;
  wire \driver1/TIMER_COUNT<0>/DXMUX_1780 ;
  wire \driver1/TIMER_COUNT<0>/XORF_1778 ;
  wire \driver1/TIMER_COUNT<0>/LOGIC_ONE_1777 ;
  wire \driver1/TIMER_COUNT<0>/CYINIT_1776 ;
  wire \driver1/TIMER_COUNT<0>/CYSELF_1767 ;
  wire \driver1/TIMER_COUNT<0>/BXINV_1765 ;
  wire \driver1/TIMER_COUNT<0>/DYMUX_1760 ;
  wire \driver1/TIMER_COUNT<0>/XORG_1758 ;
  wire \driver1/TIMER_COUNT<0>/CYMUXG_1757 ;
  wire \driver1/TIMER_COUNT<0>/LOGIC_ZERO_1755 ;
  wire \driver1/TIMER_COUNT<0>/CYSELG_1746 ;
  wire \driver1/TIMER_COUNT<0>/G ;
  wire \driver1/TIMER_COUNT<0>/SRINV_1744 ;
  wire \driver1/TIMER_COUNT<0>/CLKINV_1743 ;
  wire \driver1/TIMER_COUNT<2>/DXMUX_1832 ;
  wire \driver1/TIMER_COUNT<2>/XORF_1830 ;
  wire \driver1/TIMER_COUNT<2>/CYINIT_1829 ;
  wire \driver1/TIMER_COUNT<2>/F ;
  wire \driver1/TIMER_COUNT<2>/DYMUX_1815 ;
  wire \driver1/TIMER_COUNT<2>/XORG_1813 ;
  wire \driver1/TIMER_COUNT<2>/CYSELF_1811 ;
  wire \driver1/TIMER_COUNT<2>/CYMUXFAST_1810 ;
  wire \driver1/TIMER_COUNT<2>/CYAND_1809 ;
  wire \driver1/TIMER_COUNT<2>/FASTCARRY_1808 ;
  wire \driver1/TIMER_COUNT<2>/CYMUXG2_1807 ;
  wire \driver1/TIMER_COUNT<2>/CYMUXF2_1806 ;
  wire \driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 ;
  wire \driver1/TIMER_COUNT<2>/CYSELG_1796 ;
  wire \driver1/TIMER_COUNT<2>/G ;
  wire \driver1/TIMER_COUNT<2>/SRINV_1794 ;
  wire \driver1/TIMER_COUNT<2>/CLKINV_1793 ;
  wire \driver1/TIMER_COUNT<4>/DXMUX_1884 ;
  wire \driver1/TIMER_COUNT<4>/XORF_1882 ;
  wire \driver1/TIMER_COUNT<4>/CYINIT_1881 ;
  wire \driver1/TIMER_COUNT<4>/F ;
  wire \driver1/TIMER_COUNT<4>/DYMUX_1867 ;
  wire \driver1/TIMER_COUNT<4>/XORG_1865 ;
  wire \driver1/TIMER_COUNT<4>/CYSELF_1863 ;
  wire \driver1/TIMER_COUNT<4>/CYMUXFAST_1862 ;
  wire \driver1/TIMER_COUNT<4>/CYAND_1861 ;
  wire \driver1/TIMER_COUNT<4>/FASTCARRY_1860 ;
  wire \driver1/TIMER_COUNT<4>/CYMUXG2_1859 ;
  wire \driver1/TIMER_COUNT<4>/CYMUXF2_1858 ;
  wire \driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 ;
  wire \driver1/TIMER_COUNT<4>/CYSELG_1848 ;
  wire \driver1/TIMER_COUNT<4>/G ;
  wire \driver1/TIMER_COUNT<4>/SRINV_1846 ;
  wire \driver1/TIMER_COUNT<4>/CLKINV_1845 ;
  wire \driver1/TIMER_COUNT<6>/DXMUX_1936 ;
  wire \driver1/TIMER_COUNT<6>/XORF_1934 ;
  wire \driver1/TIMER_COUNT<6>/CYINIT_1933 ;
  wire \driver1/TIMER_COUNT<6>/F ;
  wire \driver1/TIMER_COUNT<6>/DYMUX_1919 ;
  wire \driver1/TIMER_COUNT<6>/XORG_1917 ;
  wire \driver1/TIMER_COUNT<6>/CYSELF_1915 ;
  wire \driver1/TIMER_COUNT<6>/CYMUXFAST_1914 ;
  wire \driver1/TIMER_COUNT<6>/CYAND_1913 ;
  wire \driver1/TIMER_COUNT<6>/FASTCARRY_1912 ;
  wire \driver1/TIMER_COUNT<6>/CYMUXG2_1911 ;
  wire \driver1/TIMER_COUNT<6>/CYMUXF2_1910 ;
  wire \driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 ;
  wire \driver1/TIMER_COUNT<6>/CYSELG_1900 ;
  wire \driver1/TIMER_COUNT<6>/G ;
  wire \driver1/TIMER_COUNT<6>/SRINV_1898 ;
  wire \driver1/TIMER_COUNT<6>/CLKINV_1897 ;
  wire \driver1/TIMER_COUNT<8>/DXMUX_1988 ;
  wire \driver1/TIMER_COUNT<8>/XORF_1986 ;
  wire \driver1/TIMER_COUNT<8>/CYINIT_1985 ;
  wire \driver1/TIMER_COUNT<8>/F ;
  wire \driver1/TIMER_COUNT<8>/DYMUX_1971 ;
  wire \driver1/TIMER_COUNT<8>/XORG_1969 ;
  wire \driver1/TIMER_COUNT<8>/CYSELF_1967 ;
  wire \driver1/TIMER_COUNT<8>/CYMUXFAST_1966 ;
  wire \driver1/TIMER_COUNT<8>/CYAND_1965 ;
  wire \driver1/TIMER_COUNT<8>/FASTCARRY_1964 ;
  wire \driver1/TIMER_COUNT<8>/CYMUXG2_1963 ;
  wire \driver1/TIMER_COUNT<8>/CYMUXF2_1962 ;
  wire \driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 ;
  wire \driver1/TIMER_COUNT<8>/CYSELG_1952 ;
  wire \driver1/TIMER_COUNT<8>/G ;
  wire \driver1/TIMER_COUNT<8>/SRINV_1950 ;
  wire \driver1/TIMER_COUNT<8>/CLKINV_1949 ;
  wire \driver1/TIMER_COUNT<10>/DXMUX_2040 ;
  wire \driver1/TIMER_COUNT<10>/XORF_2038 ;
  wire \driver1/TIMER_COUNT<10>/CYINIT_2037 ;
  wire \driver1/TIMER_COUNT<10>/F ;
  wire \driver1/TIMER_COUNT<10>/DYMUX_2023 ;
  wire \driver1/TIMER_COUNT<10>/XORG_2021 ;
  wire \driver1/TIMER_COUNT<10>/CYSELF_2019 ;
  wire \driver1/TIMER_COUNT<10>/CYMUXFAST_2018 ;
  wire \driver1/TIMER_COUNT<10>/CYAND_2017 ;
  wire \driver1/TIMER_COUNT<10>/FASTCARRY_2016 ;
  wire \driver1/TIMER_COUNT<10>/CYMUXG2_2015 ;
  wire \driver1/TIMER_COUNT<10>/CYMUXF2_2014 ;
  wire \driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 ;
  wire \driver1/TIMER_COUNT<10>/CYSELG_2004 ;
  wire \driver1/TIMER_COUNT<10>/G ;
  wire \driver1/TIMER_COUNT<10>/SRINV_2002 ;
  wire \driver1/TIMER_COUNT<10>/CLKINV_2001 ;
  wire \driver1/TIMER_COUNT<12>/DXMUX_2092 ;
  wire \driver1/TIMER_COUNT<12>/XORF_2090 ;
  wire \driver1/TIMER_COUNT<12>/CYINIT_2089 ;
  wire \driver1/TIMER_COUNT<12>/F ;
  wire \driver1/TIMER_COUNT<12>/DYMUX_2075 ;
  wire \driver1/TIMER_COUNT<12>/XORG_2073 ;
  wire \driver1/TIMER_COUNT<12>/CYSELF_2071 ;
  wire \driver1/TIMER_COUNT<12>/CYMUXFAST_2070 ;
  wire \driver1/TIMER_COUNT<12>/CYAND_2069 ;
  wire \driver1/TIMER_COUNT<12>/FASTCARRY_2068 ;
  wire \driver1/TIMER_COUNT<12>/CYMUXG2_2067 ;
  wire \driver1/TIMER_COUNT<12>/CYMUXF2_2066 ;
  wire \driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 ;
  wire \driver1/TIMER_COUNT<12>/CYSELG_2056 ;
  wire \driver1/TIMER_COUNT<12>/G ;
  wire \driver1/TIMER_COUNT<12>/SRINV_2054 ;
  wire \driver1/TIMER_COUNT<12>/CLKINV_2053 ;
  wire \driver1/TIMER_COUNT<14>/DXMUX_2144 ;
  wire \driver1/TIMER_COUNT<14>/XORF_2142 ;
  wire \driver1/TIMER_COUNT<14>/CYINIT_2141 ;
  wire \driver1/TIMER_COUNT<14>/F ;
  wire \driver1/TIMER_COUNT<14>/DYMUX_2127 ;
  wire \driver1/TIMER_COUNT<14>/XORG_2125 ;
  wire \driver1/TIMER_COUNT<14>/CYSELF_2123 ;
  wire \driver1/TIMER_COUNT<14>/CYMUXFAST_2122 ;
  wire \driver1/TIMER_COUNT<14>/CYAND_2121 ;
  wire \driver1/TIMER_COUNT<14>/FASTCARRY_2120 ;
  wire \driver1/TIMER_COUNT<14>/CYMUXG2_2119 ;
  wire \driver1/TIMER_COUNT<14>/CYMUXF2_2118 ;
  wire \driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 ;
  wire \driver1/TIMER_COUNT<14>/CYSELG_2108 ;
  wire \driver1/TIMER_COUNT<14>/G ;
  wire \driver1/TIMER_COUNT<14>/SRINV_2106 ;
  wire \driver1/TIMER_COUNT<14>/CLKINV_2105 ;
  wire \driver1/TIMER_COUNT<16>/DXMUX_2168 ;
  wire \driver1/TIMER_COUNT<16>/XORF_2166 ;
  wire \driver1/TIMER_COUNT<16>/CYINIT_2165 ;
  wire \driver1/TIMER_COUNT<16>_rt_2163 ;
  wire \driver1/TIMER_COUNT<16>/SRINV_2155 ;
  wire \driver1/TIMER_COUNT<16>/CLKINV_2154 ;
  wire \clk/INBUF ;
  wire \CLK_PAR/INBUF ;
  wire \LED<0>/O ;
  wire \LED<1>/O ;
  wire \LED<2>/O ;
  wire \LED<3>/O ;
  wire \HALL1_COUNT<0>/INBUF ;
  wire \HALL1_COUNT<1>/INBUF ;
  wire \HALL1_COUNT<2>/INBUF ;
  wire \PARITY_IN/INBUF ;
  wire \HALL1_COUNT<3>/INBUF ;
  wire \HALL11/INBUF ;
  wire \USB_WR/O ;
  wire \HALL1_COUNT<4>/INBUF ;
  wire \HALL21/INBUF ;
  wire \HALL31/INBUF ;
  wire \DATA_USB<0>/O ;
  wire \DATA_USB<1>/O ;
  wire \MOTOR_NUM<0>/INBUF ;
  wire \M1n1/O ;
  wire \DATA_USB<2>/O ;
  wire \MOTOR_NUM<1>/INBUF ;
  wire \DATA_USB<3>/O ;
  wire \M2n1/O ;
  wire \M1p1/O ;
  wire \DATA_USB<4>/O ;
  wire \TXE/INBUF ;
  wire \DATA_USB<5>/O ;
  wire \M3n1/O ;
  wire \M2p1/O ;
  wire \DATA_USB<6>/O ;
  wire \RPM_IN<0>/INBUF ;
  wire \DATA_USB<7>/O ;
  wire \RPM_IN<1>/INBUF ;
  wire \M3p1/O ;
  wire \RPM_IN<2>/INBUF ;
  wire \RPM_IN<3>/INBUF ;
  wire \RPM_IN<4>/INBUF ;
  wire \RPM_IN<5>/INBUF ;
  wire \RPM_IN<6>/INBUF ;
  wire \RPM_IN<7>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD0 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD1 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD2 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD3 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD4 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD5 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD6 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD7 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD16 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD17 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD18 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD19 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD20 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD21 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD22 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD23 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD24 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD25 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD26 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD27 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD28 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD29 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD30 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD31 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD32 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD33 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD34 ;
  wire \driver1/Mmult_M_RPMTEMP_mult0000/PROD35 ;
  wire \driver1/PWM_1/oc_out_cmp_ge0000 ;
  wire \driver1/PWM_1/oc_out_cmp_ge00001_SW0/O_pack_1 ;
  wire \FT245/DATA_USB<7>/DXMUX_2586 ;
  wire \FT245/N11_pack_3 ;
  wire \FT245/DATA_USB<7>/CLKINV_2571 ;
  wire \FT245/DATA_USB<7>/CEINV_2570 ;
  wire \FT245/cnt1_FSM_FFd6/DYMUX_2618 ;
  wire \FT245/Mshreg_cnt1_FSM_FFd6_2615 ;
  wire \FT245/cnt1_FSM_FFd6/DIG_MUX_2607 ;
  wire \FT245/cnt1_FSM_FFd6/CLKINV_2605 ;
  wire \FT245/cnt1_FSM_FFd6/CEINV_2604 ;
  wire \FT245/cnt1_FSM_FFd6/WSG ;
  wire \FT245/DATA_USB<2>/DXMUX_2656 ;
  wire \FT245/DATA_USB<2>/DYMUX_2644 ;
  wire \FT245/DATA_USB<2>/CLKINV_2636 ;
  wire \FT245/DATA_USB<2>/CEINV_2635 ;
  wire \FT245/USB_WR/DXMUX_2694 ;
  wire \FT245/_mux0000 ;
  wire \FT245/USB_WR/DYMUX_2681 ;
  wire \FT245/USB_WR/CLKINV_2673 ;
  wire \FT245/USB_WR/CEINV_2672 ;
  wire \driver1/M_RPMF1<1>/DXMUX_2714 ;
  wire \driver1/M_RPMF1<1>/DYMUX_2708 ;
  wire \driver1/M_RPMF1<1>/CLKINV_2706 ;
  wire \driver1/M_RPMF1<1>/CEINV_2705 ;
  wire \driver1/M_RPMF1<3>/DXMUX_2734 ;
  wire \driver1/M_RPMF1<3>/DYMUX_2728 ;
  wire \driver1/M_RPMF1<3>/CLKINV_2726 ;
  wire \driver1/M_RPMF1<3>/CEINV_2725 ;
  wire \driver1/M_RPMF1<5>/DXMUX_2754 ;
  wire \driver1/M_RPMF1<5>/DYMUX_2748 ;
  wire \driver1/M_RPMF1<5>/CLKINV_2746 ;
  wire \driver1/M_RPMF1<5>/CEINV_2745 ;
  wire \driver1/M_RPMF1<7>/DXMUX_2774 ;
  wire \driver1/M_RPMF1<7>/DYMUX_2768 ;
  wire \driver1/M_RPMF1<7>/CLKINV_2766 ;
  wire \driver1/M_RPMF1<7>/CEINV_2765 ;
  wire \FT245/DATA_USB<3>/DXMUX_2807 ;
  wire N18_pack_2;
  wire \FT245/DATA_USB<3>/CLKINV_2790 ;
  wire \FT245/DATA_USB<3>/CEINV_2789 ;
  wire M1n1_OBUF_2833;
  wire M1p1_OBUF_2825;
  wire \FT245/cnt_cmp_eq00007_2845 ;
  wire \driver1/M_PID<5>/DYMUX_2855 ;
  wire \driver1/M_PID<5>/BYINV_2854 ;
  wire \driver1/M_PID<5>/CLKINV_2853 ;
  wire \driver1/M_PID<5>/CEINV_2852 ;
  wire \FT245/DATA_USB<4>/DXMUX_2888 ;
  wire N16_pack_2;
  wire \FT245/DATA_USB<4>/CLKINV_2871 ;
  wire \FT245/DATA_USB<4>/CEINV_2870 ;
  wire \driver1/CLK_TIMER/DYMUX_2900 ;
  wire \driver1/CLK_TIMER/BYINV_2899 ;
  wire \driver1/CLK_TIMER/SRINV_2898 ;
  wire \driver1/CLK_TIMER/CLKINV_2897 ;
  wire M2n1_OBUF_2926;
  wire M2p1_OBUF_2918;
  wire M3n1_OBUF_2950;
  wire M3p1_OBUF_2942;
  wire N12;
  wire \FT245/N01 ;
  wire \FT245/DATA_USB<6>/DXMUX_3005 ;
  wire N14_pack_2;
  wire \FT245/DATA_USB<6>/CLKINV_2988 ;
  wire \FT245/DATA_USB<6>/CEINV_2987 ;
  wire \FT245/cnt1_FSM_FFd3/DXMUX_3025 ;
  wire \FT245/cnt1_FSM_FFd3/DYMUX_3019 ;
  wire \FT245/cnt1_FSM_FFd3/CLKINV_3017 ;
  wire \FT245/cnt1_FSM_FFd3/CEINV_3016 ;
  wire \FT245/cnt1_FSM_FFd5/DXMUX_3045 ;
  wire \FT245/cnt1_FSM_FFd5/DYMUX_3039 ;
  wire \FT245/cnt1_FSM_FFd5/CLKINV_3037 ;
  wire \FT245/cnt1_FSM_FFd5/CEINV_3036 ;
  wire \FT245/DATA_USB<1>/DXMUX_3078 ;
  wire N8_pack_2;
  wire \FT245/DATA_USB<1>/CLKINV_3061 ;
  wire \FT245/DATA_USB<1>/CEINV_3060 ;
  wire \driver1/PWM_1/oc_out/DYMUX_3090 ;
  wire \driver1/PWM_1/oc_out/BYINV_3089 ;
  wire \driver1/PWM_1/oc_out/SRINV_3088 ;
  wire \driver1/PWM_1/oc_out/CLKINV_3087 ;
  wire \FT245/cnt_cmp_eq000041_3104 ;
  wire \FT245/cnt_cmp_eq000019_3116 ;
  wire \FT245/cnt_cmp_eq000054_3128 ;
  wire \FT245/cnt1_not0001 ;
  wire \FT245/cnt_cmp_eq0000_pack_1 ;
  wire VCC;
  wire GND;
  wire \NLW_FT245/Mshreg_cnt1_FSM_FFd6_Q15_UNCONNECTED ;
  wire [10 : 0] \driver1/PWM_1/Cnt_1 ;
  wire [8 : 0] \driver1/PWM_1/Mcount_Cnt_1_cy ;
  wire [16 : 0] \driver1/TIMER_COUNT ;
  wire [15 : 0] \FT245/cnt ;
  wire [14 : 0] \driver1/Mcount_TIMER_COUNT_cy ;
  wire [7 : 0] \FT245/DATA_USB ;
  wire [15 : 8] \driver1/M_RPMTEMP_mult0000 ;
  wire [5 : 5] \driver1/M_PID ;
  wire [7 : 0] \driver1/M_RPMF1 ;
  wire [0 : 0] \driver1/PWM_1/Mcount_Cnt_1_lut ;
  wire [0 : 0] \driver1/TIMER_COUNT_cmp_eq0000_wg_cy ;
  wire [4 : 1] \driver1/TIMER_COUNT_cmp_eq0000_wg_lut ;
  wire [4 : 0] \driver1/CLK_TIMER_not0001_wg_lut ;
  wire [0 : 0] \driver1/CLK_TIMER_not0001_wg_cy ;
  wire [0 : 0] \FT245/Mcount_cnt_lut ;
  wire [0 : 0] \driver1/Mcount_TIMER_COUNT_lut ;
  wire [7 : 0] \FT245/DATA_USB_mux0000 ;
  wire [4 : 0] \NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A ;
  initial $sdf_annotate("netgen/par/m_timesim.sdf");
  X_ZERO #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/LOGIC_ZERO  (
    .O(\driver1/PWM_1/Cnt_1<0>/LOGIC_ZERO_939 )
  );
  X_ONE #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/LOGIC_ONE  (
    .O(\driver1/PWM_1/Cnt_1<0>/LOGIC_ONE_960 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<0>/XORF_961 ),
    .O(\driver1/PWM_1/Cnt_1<0>/DXMUX_963 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<0>/CYINIT_959 ),
    .I1(\driver1/PWM_1/Mcount_Cnt_1_lut [0]),
    .O(\driver1/PWM_1/Cnt_1<0>/XORF_961 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CYMUXF  (
    .IA(\driver1/PWM_1/Cnt_1<0>/LOGIC_ONE_960 ),
    .IB(\driver1/PWM_1/Cnt_1<0>/CYINIT_959 ),
    .SEL(\driver1/PWM_1/Cnt_1<0>/CYSELF_950 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CYINIT  (
    .I(\driver1/PWM_1/Cnt_1<0>/BXINV_948 ),
    .O(\driver1/PWM_1/Cnt_1<0>/CYINIT_959 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CYSELF  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_lut [0]),
    .O(\driver1/PWM_1/Cnt_1<0>/CYSELF_950 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/BXINV  (
    .I(1'b0),
    .O(\driver1/PWM_1/Cnt_1<0>/BXINV_948 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/DYMUX  (
    .I(\driver1/PWM_1/Cnt_1<0>/XORG_942 ),
    .O(\driver1/PWM_1/Cnt_1<0>/DYMUX_944 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/XORG  (
    .I0(\driver1/PWM_1/Mcount_Cnt_1_cy [0]),
    .I1(\driver1/PWM_1/Cnt_1<0>/G ),
    .O(\driver1/PWM_1/Cnt_1<0>/XORG_942 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/COUTUSED  (
    .I(\driver1/PWM_1/Cnt_1<0>/CYMUXG_941 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CYMUXG  (
    .IA(\driver1/PWM_1/Cnt_1<0>/LOGIC_ZERO_939 ),
    .IB(\driver1/PWM_1/Mcount_Cnt_1_cy [0]),
    .SEL(\driver1/PWM_1/Cnt_1<0>/CYSELG_930 ),
    .O(\driver1/PWM_1/Cnt_1<0>/CYMUXG_941 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CYSELG  (
    .I(\driver1/PWM_1/Cnt_1<0>/G ),
    .O(\driver1/PWM_1/Cnt_1<0>/CYSELG_930 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<0>/CLKINV_928 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO  (
    .O(\driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<2>/XORF_1009 ),
    .O(\driver1/PWM_1/Cnt_1<2>/DXMUX_1011 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<2>/CYINIT_1008 ),
    .I1(\driver1/PWM_1/Cnt_1<2>/F ),
    .O(\driver1/PWM_1/Cnt_1<2>/XORF_1009 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYMUXF  (
    .IA(\driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 ),
    .IB(\driver1/PWM_1/Cnt_1<2>/CYINIT_1008 ),
    .SEL(\driver1/PWM_1/Cnt_1<2>/CYSELF_991 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYMUXF2  (
    .IA(\driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 ),
    .IB(\driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 ),
    .SEL(\driver1/PWM_1/Cnt_1<2>/CYSELF_991 ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYMUXF2_986 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYINIT  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [1]),
    .O(\driver1/PWM_1/Cnt_1<2>/CYINIT_1008 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYSELF  (
    .I(\driver1/PWM_1/Cnt_1<2>/F ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYSELF_991 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/DYMUX  (
    .I(\driver1/PWM_1/Cnt_1<2>/XORG_993 ),
    .O(\driver1/PWM_1/Cnt_1<2>/DYMUX_995 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/XORG  (
    .I0(\driver1/PWM_1/Mcount_Cnt_1_cy [2]),
    .I1(\driver1/PWM_1/Cnt_1<2>/G ),
    .O(\driver1/PWM_1/Cnt_1<2>/XORG_993 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/COUTUSED  (
    .I(\driver1/PWM_1/Cnt_1<2>/CYMUXFAST_990 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/FASTCARRY  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [1]),
    .O(\driver1/PWM_1/Cnt_1<2>/FASTCARRY_988 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYAND  (
    .I0(\driver1/PWM_1/Cnt_1<2>/CYSELG_976 ),
    .I1(\driver1/PWM_1/Cnt_1<2>/CYSELF_991 ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYAND_989 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYMUXFAST  (
    .IA(\driver1/PWM_1/Cnt_1<2>/CYMUXG2_987 ),
    .IB(\driver1/PWM_1/Cnt_1<2>/FASTCARRY_988 ),
    .SEL(\driver1/PWM_1/Cnt_1<2>/CYAND_989 ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYMUXFAST_990 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYMUXG2  (
    .IA(\driver1/PWM_1/Cnt_1<2>/LOGIC_ZERO_985 ),
    .IB(\driver1/PWM_1/Cnt_1<2>/CYMUXF2_986 ),
    .SEL(\driver1/PWM_1/Cnt_1<2>/CYSELG_976 ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYMUXG2_987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CYSELG  (
    .I(\driver1/PWM_1/Cnt_1<2>/G ),
    .O(\driver1/PWM_1/Cnt_1<2>/CYSELG_976 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<2>/CLKINV_974 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO  (
    .O(\driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<4>/XORF_1057 ),
    .O(\driver1/PWM_1/Cnt_1<4>/DXMUX_1059 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<4>/CYINIT_1056 ),
    .I1(\driver1/PWM_1/Cnt_1<4>/F ),
    .O(\driver1/PWM_1/Cnt_1<4>/XORF_1057 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYMUXF  (
    .IA(\driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 ),
    .IB(\driver1/PWM_1/Cnt_1<4>/CYINIT_1056 ),
    .SEL(\driver1/PWM_1/Cnt_1<4>/CYSELF_1039 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [4])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYMUXF2  (
    .IA(\driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 ),
    .IB(\driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 ),
    .SEL(\driver1/PWM_1/Cnt_1<4>/CYSELF_1039 ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYMUXF2_1034 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYINIT  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [3]),
    .O(\driver1/PWM_1/Cnt_1<4>/CYINIT_1056 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYSELF  (
    .I(\driver1/PWM_1/Cnt_1<4>/F ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYSELF_1039 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/DYMUX  (
    .I(\driver1/PWM_1/Cnt_1<4>/XORG_1041 ),
    .O(\driver1/PWM_1/Cnt_1<4>/DYMUX_1043 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/XORG  (
    .I0(\driver1/PWM_1/Mcount_Cnt_1_cy [4]),
    .I1(\driver1/PWM_1/Cnt_1<4>/G ),
    .O(\driver1/PWM_1/Cnt_1<4>/XORG_1041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/COUTUSED  (
    .I(\driver1/PWM_1/Cnt_1<4>/CYMUXFAST_1038 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/FASTCARRY  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [3]),
    .O(\driver1/PWM_1/Cnt_1<4>/FASTCARRY_1036 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYAND  (
    .I0(\driver1/PWM_1/Cnt_1<4>/CYSELG_1024 ),
    .I1(\driver1/PWM_1/Cnt_1<4>/CYSELF_1039 ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYAND_1037 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYMUXFAST  (
    .IA(\driver1/PWM_1/Cnt_1<4>/CYMUXG2_1035 ),
    .IB(\driver1/PWM_1/Cnt_1<4>/FASTCARRY_1036 ),
    .SEL(\driver1/PWM_1/Cnt_1<4>/CYAND_1037 ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYMUXFAST_1038 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYMUXG2  (
    .IA(\driver1/PWM_1/Cnt_1<4>/LOGIC_ZERO_1033 ),
    .IB(\driver1/PWM_1/Cnt_1<4>/CYMUXF2_1034 ),
    .SEL(\driver1/PWM_1/Cnt_1<4>/CYSELG_1024 ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYMUXG2_1035 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CYSELG  (
    .I(\driver1/PWM_1/Cnt_1<4>/G ),
    .O(\driver1/PWM_1/Cnt_1<4>/CYSELG_1024 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<4>/CLKINV_1022 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO  (
    .O(\driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<6>/XORF_1105 ),
    .O(\driver1/PWM_1/Cnt_1<6>/DXMUX_1107 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<6>/CYINIT_1104 ),
    .I1(\driver1/PWM_1/Cnt_1<6>/F ),
    .O(\driver1/PWM_1/Cnt_1<6>/XORF_1105 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYMUXF  (
    .IA(\driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 ),
    .IB(\driver1/PWM_1/Cnt_1<6>/CYINIT_1104 ),
    .SEL(\driver1/PWM_1/Cnt_1<6>/CYSELF_1087 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [6])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYMUXF2  (
    .IA(\driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 ),
    .IB(\driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 ),
    .SEL(\driver1/PWM_1/Cnt_1<6>/CYSELF_1087 ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYMUXF2_1082 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYINIT  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [5]),
    .O(\driver1/PWM_1/Cnt_1<6>/CYINIT_1104 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYSELF  (
    .I(\driver1/PWM_1/Cnt_1<6>/F ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYSELF_1087 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/DYMUX  (
    .I(\driver1/PWM_1/Cnt_1<6>/XORG_1089 ),
    .O(\driver1/PWM_1/Cnt_1<6>/DYMUX_1091 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/XORG  (
    .I0(\driver1/PWM_1/Mcount_Cnt_1_cy [6]),
    .I1(\driver1/PWM_1/Cnt_1<6>/G ),
    .O(\driver1/PWM_1/Cnt_1<6>/XORG_1089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/COUTUSED  (
    .I(\driver1/PWM_1/Cnt_1<6>/CYMUXFAST_1086 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [7])
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/FASTCARRY  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [5]),
    .O(\driver1/PWM_1/Cnt_1<6>/FASTCARRY_1084 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYAND  (
    .I0(\driver1/PWM_1/Cnt_1<6>/CYSELG_1072 ),
    .I1(\driver1/PWM_1/Cnt_1<6>/CYSELF_1087 ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYAND_1085 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYMUXFAST  (
    .IA(\driver1/PWM_1/Cnt_1<6>/CYMUXG2_1083 ),
    .IB(\driver1/PWM_1/Cnt_1<6>/FASTCARRY_1084 ),
    .SEL(\driver1/PWM_1/Cnt_1<6>/CYAND_1085 ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYMUXFAST_1086 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYMUXG2  (
    .IA(\driver1/PWM_1/Cnt_1<6>/LOGIC_ZERO_1081 ),
    .IB(\driver1/PWM_1/Cnt_1<6>/CYMUXF2_1082 ),
    .SEL(\driver1/PWM_1/Cnt_1<6>/CYSELG_1072 ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYMUXG2_1083 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CYSELG  (
    .I(\driver1/PWM_1/Cnt_1<6>/G ),
    .O(\driver1/PWM_1/Cnt_1<6>/CYSELG_1072 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<6>/CLKINV_1070 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO  (
    .O(\driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<8>/XORF_1153 ),
    .O(\driver1/PWM_1/Cnt_1<8>/DXMUX_1155 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<8>/CYINIT_1152 ),
    .I1(\driver1/PWM_1/Cnt_1<8>/F ),
    .O(\driver1/PWM_1/Cnt_1<8>/XORF_1153 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYMUXF  (
    .IA(\driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 ),
    .IB(\driver1/PWM_1/Cnt_1<8>/CYINIT_1152 ),
    .SEL(\driver1/PWM_1/Cnt_1<8>/CYSELF_1135 ),
    .O(\driver1/PWM_1/Mcount_Cnt_1_cy [8])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYMUXF2  (
    .IA(\driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 ),
    .IB(\driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 ),
    .SEL(\driver1/PWM_1/Cnt_1<8>/CYSELF_1135 ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYMUXF2_1130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYINIT  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [7]),
    .O(\driver1/PWM_1/Cnt_1<8>/CYINIT_1152 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYSELF  (
    .I(\driver1/PWM_1/Cnt_1<8>/F ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYSELF_1135 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/DYMUX  (
    .I(\driver1/PWM_1/Cnt_1<8>/XORG_1137 ),
    .O(\driver1/PWM_1/Cnt_1<8>/DYMUX_1139 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/XORG  (
    .I0(\driver1/PWM_1/Mcount_Cnt_1_cy [8]),
    .I1(\driver1/PWM_1/Cnt_1<8>/G ),
    .O(\driver1/PWM_1/Cnt_1<8>/XORG_1137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/FASTCARRY  (
    .I(\driver1/PWM_1/Mcount_Cnt_1_cy [7]),
    .O(\driver1/PWM_1/Cnt_1<8>/FASTCARRY_1132 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYAND  (
    .I0(\driver1/PWM_1/Cnt_1<8>/CYSELG_1120 ),
    .I1(\driver1/PWM_1/Cnt_1<8>/CYSELF_1135 ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYAND_1133 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYMUXFAST  (
    .IA(\driver1/PWM_1/Cnt_1<8>/CYMUXG2_1131 ),
    .IB(\driver1/PWM_1/Cnt_1<8>/FASTCARRY_1132 ),
    .SEL(\driver1/PWM_1/Cnt_1<8>/CYAND_1133 ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYMUXFAST_1134 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYMUXG2  (
    .IA(\driver1/PWM_1/Cnt_1<8>/LOGIC_ZERO_1129 ),
    .IB(\driver1/PWM_1/Cnt_1<8>/CYMUXF2_1130 ),
    .SEL(\driver1/PWM_1/Cnt_1<8>/CYSELG_1120 ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYMUXG2_1131 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CYSELG  (
    .I(\driver1/PWM_1/Cnt_1<8>/G ),
    .O(\driver1/PWM_1/Cnt_1<8>/CYSELG_1120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<8>/CLKINV_1118 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y33" ))
  \driver1/PWM_1/Cnt_1<10>/DXMUX  (
    .I(\driver1/PWM_1/Cnt_1<10>/XORF_1174 ),
    .O(\driver1/PWM_1/Cnt_1<10>/DXMUX_1176 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X45Y33" ))
  \driver1/PWM_1/Cnt_1<10>/XORF  (
    .I0(\driver1/PWM_1/Cnt_1<10>/CYINIT_1173 ),
    .I1(\driver1/PWM_1/Cnt_1<10>_rt_1171 ),
    .O(\driver1/PWM_1/Cnt_1<10>/XORF_1174 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y33" ))
  \driver1/PWM_1/Cnt_1<10>/CYINIT  (
    .I(\driver1/PWM_1/Cnt_1<8>/CYMUXFAST_1134 ),
    .O(\driver1/PWM_1/Cnt_1<10>/CYINIT_1173 )
  );
  X_BUF #(
    .LOC ( "SLICE_X45Y33" ))
  \driver1/PWM_1/Cnt_1<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/Cnt_1<10>/CLKINV_1163 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_1194 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_1194 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYINIT_1208 ),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELF_1199 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYINIT  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/BXINV_1197 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYINIT_1208 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELF  (
    .I(\driver1/TIMER_COUNT<4>_rt_1198 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELF_1199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/BXINV  (
    .I(1'b1),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/BXINV_1197 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYMUXG  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_1194 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy [0]),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELG_1188 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYMUXG_1196 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELG  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [1]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYSELG_1188 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_1226 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_1226 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_1226 ),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELF_1232 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXF2_1227 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELF  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [2]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELF_1232 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/FASTCARRY  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<1>/CYMUXG_1196 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/FASTCARRY_1229 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYAND  (
    .I0(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELG_1220 ),
    .I1(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELF_1232 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYAND_1230 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXG2_1228 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/FASTCARRY_1229 ),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYAND_1230 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXFAST_1231 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_1226 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXF2_1227 ),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELG_1220 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXG2_1228 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELG  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [3]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYSELG_1220 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X29Y48" ))
  \driver1/TIMER_COUNT_cmp_eq0000/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT_cmp_eq0000/LOGIC_ZERO_1253 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X29Y48" ))
  \driver1/TIMER_COUNT_cmp_eq0000/CYMUXF  (
    .IA(\driver1/TIMER_COUNT_cmp_eq0000/LOGIC_ZERO_1253 ),
    .IB(\driver1/TIMER_COUNT_cmp_eq0000/CYINIT_1252 ),
    .SEL(\driver1/TIMER_COUNT_cmp_eq0000/CYSELF_1246 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y48" ))
  \driver1/TIMER_COUNT_cmp_eq0000/CYINIT  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_cy<3>/CYMUXFAST_1231 ),
    .O(\driver1/TIMER_COUNT_cmp_eq0000/CYINIT_1252 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y48" ))
  \driver1/TIMER_COUNT_cmp_eq0000/CYSELF  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [4]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000/CYSELF_1246 )
  );
  X_ONE #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/LOGIC_ONE  (
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/LOGIC_ONE_1268 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/CYMUXF  (
    .IA(\driver1/CLK_TIMER_not0001_wg_cy<1>/LOGIC_ONE_1268 ),
    .IB(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYINIT_1282 ),
    .SEL(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELF_1273 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/CYINIT  (
    .I(\driver1/CLK_TIMER_not0001_wg_cy<1>/BXINV_1271 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYINIT_1282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELF  (
    .I(\driver1/CLK_TIMER_not0001_wg_lut [0]),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELF_1273 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/BXINV  (
    .I(1'b0),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/BXINV_1271 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/CYMUXG  (
    .IA(\driver1/CLK_TIMER_not0001_wg_cy<1>/LOGIC_ONE_1268 ),
    .IB(\driver1/CLK_TIMER_not0001_wg_cy [0]),
    .SEL(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELG_1262 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYMUXG_1270 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELG  (
    .I(\driver1/CLK_TIMER_not0001_wg_lut [1]),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYSELG_1262 )
  );
  X_ONE #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE  (
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE_1300 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXF2  (
    .IA(\driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE_1300 ),
    .IB(\driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE_1300 ),
    .SEL(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELF_1306 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXF2_1301 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELF  (
    .I(\driver1/CLK_TIMER_not0001_wg_lut [2]),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELF_1306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/FASTCARRY  (
    .I(\driver1/CLK_TIMER_not0001_wg_cy<1>/CYMUXG_1270 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/FASTCARRY_1303 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYAND  (
    .I0(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELG_1294 ),
    .I1(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELF_1306 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYAND_1304 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXFAST  (
    .IA(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXG2_1302 ),
    .IB(\driver1/CLK_TIMER_not0001_wg_cy<3>/FASTCARRY_1303 ),
    .SEL(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYAND_1304 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXFAST_1305 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXG2  (
    .IA(\driver1/CLK_TIMER_not0001_wg_cy<3>/LOGIC_ONE_1300 ),
    .IB(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXF2_1301 ),
    .SEL(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELG_1294 ),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXG2_1302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELG  (
    .I(\driver1/CLK_TIMER_not0001_wg_lut [3]),
    .O(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYSELG_1294 )
  );
  X_ONE #(
    .LOC ( "SLICE_X30Y48" ))
  \driver1/CLK_TIMER_not0001/LOGIC_ONE  (
    .O(\driver1/CLK_TIMER_not0001/LOGIC_ONE_1327 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X30Y48" ))
  \driver1/CLK_TIMER_not0001/CYMUXF  (
    .IA(\driver1/CLK_TIMER_not0001/LOGIC_ONE_1327 ),
    .IB(\driver1/CLK_TIMER_not0001/CYINIT_1326 ),
    .SEL(\driver1/CLK_TIMER_not0001/CYSELF_1320 ),
    .O(\driver1/CLK_TIMER_not0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y48" ))
  \driver1/CLK_TIMER_not0001/CYINIT  (
    .I(\driver1/CLK_TIMER_not0001_wg_cy<3>/CYMUXFAST_1305 ),
    .O(\driver1/CLK_TIMER_not0001/CYINIT_1326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y48" ))
  \driver1/CLK_TIMER_not0001/CYSELF  (
    .I(\driver1/CLK_TIMER_not0001_wg_lut [4]),
    .O(\driver1/CLK_TIMER_not0001/CYSELF_1320 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/LOGIC_ZERO  (
    .O(\FT245/cnt<0>/LOGIC_ZERO_1348 )
  );
  X_ONE #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/LOGIC_ONE  (
    .O(\FT245/cnt<0>/LOGIC_ONE_1370 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/DXMUX  (
    .I(\FT245/cnt<0>/XORF_1371 ),
    .O(\FT245/cnt<0>/DXMUX_1373 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/XORF  (
    .I0(\FT245/cnt<0>/CYINIT_1369 ),
    .I1(\FT245/Mcount_cnt_lut [0]),
    .O(\FT245/cnt<0>/XORF_1371 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CYMUXF  (
    .IA(\FT245/cnt<0>/LOGIC_ONE_1370 ),
    .IB(\FT245/cnt<0>/CYINIT_1369 ),
    .SEL(\FT245/cnt<0>/CYSELF_1360 ),
    .O(\FT245/Mcount_cnt_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CYINIT  (
    .I(\FT245/cnt<0>/BXINV_1358 ),
    .O(\FT245/cnt<0>/CYINIT_1369 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CYSELF  (
    .I(\FT245/Mcount_cnt_lut [0]),
    .O(\FT245/cnt<0>/CYSELF_1360 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/BXINV  (
    .I(1'b0),
    .O(\FT245/cnt<0>/BXINV_1358 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/DYMUX  (
    .I(\FT245/cnt<0>/XORG_1351 ),
    .O(\FT245/cnt<0>/DYMUX_1353 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[0] ),
    .I1(\FT245/cnt<0>/G ),
    .O(\FT245/cnt<0>/XORG_1351 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/COUTUSED  (
    .I(\FT245/cnt<0>/CYMUXG_1350 ),
    .O(\FT245/Mcount_cnt_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CYMUXG  (
    .IA(\FT245/cnt<0>/LOGIC_ZERO_1348 ),
    .IB(\FT245/Mcount_cnt_cy[0] ),
    .SEL(\FT245/cnt<0>/CYSELG_1339 ),
    .O(\FT245/cnt<0>/CYMUXG_1350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CYSELG  (
    .I(\FT245/cnt<0>/G ),
    .O(\FT245/cnt<0>/CYSELG_1339 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<0>/SRINV_1337 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<0>/CLKINV_1336 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/LOGIC_ZERO  (
    .O(\FT245/cnt<2>/LOGIC_ZERO_1398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/DXMUX  (
    .I(\FT245/cnt<2>/XORF_1423 ),
    .O(\FT245/cnt<2>/DXMUX_1425 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/XORF  (
    .I0(\FT245/cnt<2>/CYINIT_1422 ),
    .I1(\FT245/cnt<2>/F ),
    .O(\FT245/cnt<2>/XORF_1423 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYMUXF  (
    .IA(\FT245/cnt<2>/LOGIC_ZERO_1398 ),
    .IB(\FT245/cnt<2>/CYINIT_1422 ),
    .SEL(\FT245/cnt<2>/CYSELF_1404 ),
    .O(\FT245/Mcount_cnt_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYMUXF2  (
    .IA(\FT245/cnt<2>/LOGIC_ZERO_1398 ),
    .IB(\FT245/cnt<2>/LOGIC_ZERO_1398 ),
    .SEL(\FT245/cnt<2>/CYSELF_1404 ),
    .O(\FT245/cnt<2>/CYMUXF2_1399 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[1] ),
    .O(\FT245/cnt<2>/CYINIT_1422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYSELF  (
    .I(\FT245/cnt<2>/F ),
    .O(\FT245/cnt<2>/CYSELF_1404 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/DYMUX  (
    .I(\FT245/cnt<2>/XORG_1406 ),
    .O(\FT245/cnt<2>/DYMUX_1408 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[2] ),
    .I1(\FT245/cnt<2>/G ),
    .O(\FT245/cnt<2>/XORG_1406 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/COUTUSED  (
    .I(\FT245/cnt<2>/CYMUXFAST_1403 ),
    .O(\FT245/Mcount_cnt_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[1] ),
    .O(\FT245/cnt<2>/FASTCARRY_1401 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYAND  (
    .I0(\FT245/cnt<2>/CYSELG_1389 ),
    .I1(\FT245/cnt<2>/CYSELF_1404 ),
    .O(\FT245/cnt<2>/CYAND_1402 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYMUXFAST  (
    .IA(\FT245/cnt<2>/CYMUXG2_1400 ),
    .IB(\FT245/cnt<2>/FASTCARRY_1401 ),
    .SEL(\FT245/cnt<2>/CYAND_1402 ),
    .O(\FT245/cnt<2>/CYMUXFAST_1403 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYMUXG2  (
    .IA(\FT245/cnt<2>/LOGIC_ZERO_1398 ),
    .IB(\FT245/cnt<2>/CYMUXF2_1399 ),
    .SEL(\FT245/cnt<2>/CYSELG_1389 ),
    .O(\FT245/cnt<2>/CYMUXG2_1400 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CYSELG  (
    .I(\FT245/cnt<2>/G ),
    .O(\FT245/cnt<2>/CYSELG_1389 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<2>/SRINV_1387 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<2>/CLKINV_1386 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/LOGIC_ZERO  (
    .O(\FT245/cnt<4>/LOGIC_ZERO_1450 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/DXMUX  (
    .I(\FT245/cnt<4>/XORF_1475 ),
    .O(\FT245/cnt<4>/DXMUX_1477 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/XORF  (
    .I0(\FT245/cnt<4>/CYINIT_1474 ),
    .I1(\FT245/cnt<4>/F ),
    .O(\FT245/cnt<4>/XORF_1475 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYMUXF  (
    .IA(\FT245/cnt<4>/LOGIC_ZERO_1450 ),
    .IB(\FT245/cnt<4>/CYINIT_1474 ),
    .SEL(\FT245/cnt<4>/CYSELF_1456 ),
    .O(\FT245/Mcount_cnt_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYMUXF2  (
    .IA(\FT245/cnt<4>/LOGIC_ZERO_1450 ),
    .IB(\FT245/cnt<4>/LOGIC_ZERO_1450 ),
    .SEL(\FT245/cnt<4>/CYSELF_1456 ),
    .O(\FT245/cnt<4>/CYMUXF2_1451 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[3] ),
    .O(\FT245/cnt<4>/CYINIT_1474 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYSELF  (
    .I(\FT245/cnt<4>/F ),
    .O(\FT245/cnt<4>/CYSELF_1456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/DYMUX  (
    .I(\FT245/cnt<4>/XORG_1458 ),
    .O(\FT245/cnt<4>/DYMUX_1460 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[4] ),
    .I1(\FT245/cnt<4>/G ),
    .O(\FT245/cnt<4>/XORG_1458 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/COUTUSED  (
    .I(\FT245/cnt<4>/CYMUXFAST_1455 ),
    .O(\FT245/Mcount_cnt_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[3] ),
    .O(\FT245/cnt<4>/FASTCARRY_1453 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYAND  (
    .I0(\FT245/cnt<4>/CYSELG_1441 ),
    .I1(\FT245/cnt<4>/CYSELF_1456 ),
    .O(\FT245/cnt<4>/CYAND_1454 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYMUXFAST  (
    .IA(\FT245/cnt<4>/CYMUXG2_1452 ),
    .IB(\FT245/cnt<4>/FASTCARRY_1453 ),
    .SEL(\FT245/cnt<4>/CYAND_1454 ),
    .O(\FT245/cnt<4>/CYMUXFAST_1455 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYMUXG2  (
    .IA(\FT245/cnt<4>/LOGIC_ZERO_1450 ),
    .IB(\FT245/cnt<4>/CYMUXF2_1451 ),
    .SEL(\FT245/cnt<4>/CYSELG_1441 ),
    .O(\FT245/cnt<4>/CYMUXG2_1452 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CYSELG  (
    .I(\FT245/cnt<4>/G ),
    .O(\FT245/cnt<4>/CYSELG_1441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<4>/SRINV_1439 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<4>/CLKINV_1438 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/LOGIC_ZERO  (
    .O(\FT245/cnt<6>/LOGIC_ZERO_1502 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/DXMUX  (
    .I(\FT245/cnt<6>/XORF_1527 ),
    .O(\FT245/cnt<6>/DXMUX_1529 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/XORF  (
    .I0(\FT245/cnt<6>/CYINIT_1526 ),
    .I1(\FT245/cnt<6>/F ),
    .O(\FT245/cnt<6>/XORF_1527 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYMUXF  (
    .IA(\FT245/cnt<6>/LOGIC_ZERO_1502 ),
    .IB(\FT245/cnt<6>/CYINIT_1526 ),
    .SEL(\FT245/cnt<6>/CYSELF_1508 ),
    .O(\FT245/Mcount_cnt_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYMUXF2  (
    .IA(\FT245/cnt<6>/LOGIC_ZERO_1502 ),
    .IB(\FT245/cnt<6>/LOGIC_ZERO_1502 ),
    .SEL(\FT245/cnt<6>/CYSELF_1508 ),
    .O(\FT245/cnt<6>/CYMUXF2_1503 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[5] ),
    .O(\FT245/cnt<6>/CYINIT_1526 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYSELF  (
    .I(\FT245/cnt<6>/F ),
    .O(\FT245/cnt<6>/CYSELF_1508 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/DYMUX  (
    .I(\FT245/cnt<6>/XORG_1510 ),
    .O(\FT245/cnt<6>/DYMUX_1512 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[6] ),
    .I1(\FT245/cnt<6>/G ),
    .O(\FT245/cnt<6>/XORG_1510 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/COUTUSED  (
    .I(\FT245/cnt<6>/CYMUXFAST_1507 ),
    .O(\FT245/Mcount_cnt_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[5] ),
    .O(\FT245/cnt<6>/FASTCARRY_1505 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYAND  (
    .I0(\FT245/cnt<6>/CYSELG_1493 ),
    .I1(\FT245/cnt<6>/CYSELF_1508 ),
    .O(\FT245/cnt<6>/CYAND_1506 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYMUXFAST  (
    .IA(\FT245/cnt<6>/CYMUXG2_1504 ),
    .IB(\FT245/cnt<6>/FASTCARRY_1505 ),
    .SEL(\FT245/cnt<6>/CYAND_1506 ),
    .O(\FT245/cnt<6>/CYMUXFAST_1507 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYMUXG2  (
    .IA(\FT245/cnt<6>/LOGIC_ZERO_1502 ),
    .IB(\FT245/cnt<6>/CYMUXF2_1503 ),
    .SEL(\FT245/cnt<6>/CYSELG_1493 ),
    .O(\FT245/cnt<6>/CYMUXG2_1504 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CYSELG  (
    .I(\FT245/cnt<6>/G ),
    .O(\FT245/cnt<6>/CYSELG_1493 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<6>/SRINV_1491 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<6>/CLKINV_1490 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/LOGIC_ZERO  (
    .O(\FT245/cnt<8>/LOGIC_ZERO_1554 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/DXMUX  (
    .I(\FT245/cnt<8>/XORF_1579 ),
    .O(\FT245/cnt<8>/DXMUX_1581 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/XORF  (
    .I0(\FT245/cnt<8>/CYINIT_1578 ),
    .I1(\FT245/cnt<8>/F ),
    .O(\FT245/cnt<8>/XORF_1579 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYMUXF  (
    .IA(\FT245/cnt<8>/LOGIC_ZERO_1554 ),
    .IB(\FT245/cnt<8>/CYINIT_1578 ),
    .SEL(\FT245/cnt<8>/CYSELF_1560 ),
    .O(\FT245/Mcount_cnt_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYMUXF2  (
    .IA(\FT245/cnt<8>/LOGIC_ZERO_1554 ),
    .IB(\FT245/cnt<8>/LOGIC_ZERO_1554 ),
    .SEL(\FT245/cnt<8>/CYSELF_1560 ),
    .O(\FT245/cnt<8>/CYMUXF2_1555 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[7] ),
    .O(\FT245/cnt<8>/CYINIT_1578 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYSELF  (
    .I(\FT245/cnt<8>/F ),
    .O(\FT245/cnt<8>/CYSELF_1560 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/DYMUX  (
    .I(\FT245/cnt<8>/XORG_1562 ),
    .O(\FT245/cnt<8>/DYMUX_1564 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[8] ),
    .I1(\FT245/cnt<8>/G ),
    .O(\FT245/cnt<8>/XORG_1562 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/COUTUSED  (
    .I(\FT245/cnt<8>/CYMUXFAST_1559 ),
    .O(\FT245/Mcount_cnt_cy[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[7] ),
    .O(\FT245/cnt<8>/FASTCARRY_1557 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYAND  (
    .I0(\FT245/cnt<8>/CYSELG_1545 ),
    .I1(\FT245/cnt<8>/CYSELF_1560 ),
    .O(\FT245/cnt<8>/CYAND_1558 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYMUXFAST  (
    .IA(\FT245/cnt<8>/CYMUXG2_1556 ),
    .IB(\FT245/cnt<8>/FASTCARRY_1557 ),
    .SEL(\FT245/cnt<8>/CYAND_1558 ),
    .O(\FT245/cnt<8>/CYMUXFAST_1559 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYMUXG2  (
    .IA(\FT245/cnt<8>/LOGIC_ZERO_1554 ),
    .IB(\FT245/cnt<8>/CYMUXF2_1555 ),
    .SEL(\FT245/cnt<8>/CYSELG_1545 ),
    .O(\FT245/cnt<8>/CYMUXG2_1556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CYSELG  (
    .I(\FT245/cnt<8>/G ),
    .O(\FT245/cnt<8>/CYSELG_1545 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<8>/SRINV_1543 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<8>/CLKINV_1542 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/LOGIC_ZERO  (
    .O(\FT245/cnt<10>/LOGIC_ZERO_1606 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/DXMUX  (
    .I(\FT245/cnt<10>/XORF_1631 ),
    .O(\FT245/cnt<10>/DXMUX_1633 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/XORF  (
    .I0(\FT245/cnt<10>/CYINIT_1630 ),
    .I1(\FT245/cnt<10>/F ),
    .O(\FT245/cnt<10>/XORF_1631 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYMUXF  (
    .IA(\FT245/cnt<10>/LOGIC_ZERO_1606 ),
    .IB(\FT245/cnt<10>/CYINIT_1630 ),
    .SEL(\FT245/cnt<10>/CYSELF_1612 ),
    .O(\FT245/Mcount_cnt_cy[10] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYMUXF2  (
    .IA(\FT245/cnt<10>/LOGIC_ZERO_1606 ),
    .IB(\FT245/cnt<10>/LOGIC_ZERO_1606 ),
    .SEL(\FT245/cnt<10>/CYSELF_1612 ),
    .O(\FT245/cnt<10>/CYMUXF2_1607 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[9] ),
    .O(\FT245/cnt<10>/CYINIT_1630 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYSELF  (
    .I(\FT245/cnt<10>/F ),
    .O(\FT245/cnt<10>/CYSELF_1612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/DYMUX  (
    .I(\FT245/cnt<10>/XORG_1614 ),
    .O(\FT245/cnt<10>/DYMUX_1616 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[10] ),
    .I1(\FT245/cnt<10>/G ),
    .O(\FT245/cnt<10>/XORG_1614 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/COUTUSED  (
    .I(\FT245/cnt<10>/CYMUXFAST_1611 ),
    .O(\FT245/Mcount_cnt_cy[11] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[9] ),
    .O(\FT245/cnt<10>/FASTCARRY_1609 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYAND  (
    .I0(\FT245/cnt<10>/CYSELG_1597 ),
    .I1(\FT245/cnt<10>/CYSELF_1612 ),
    .O(\FT245/cnt<10>/CYAND_1610 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYMUXFAST  (
    .IA(\FT245/cnt<10>/CYMUXG2_1608 ),
    .IB(\FT245/cnt<10>/FASTCARRY_1609 ),
    .SEL(\FT245/cnt<10>/CYAND_1610 ),
    .O(\FT245/cnt<10>/CYMUXFAST_1611 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYMUXG2  (
    .IA(\FT245/cnt<10>/LOGIC_ZERO_1606 ),
    .IB(\FT245/cnt<10>/CYMUXF2_1607 ),
    .SEL(\FT245/cnt<10>/CYSELG_1597 ),
    .O(\FT245/cnt<10>/CYMUXG2_1608 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CYSELG  (
    .I(\FT245/cnt<10>/G ),
    .O(\FT245/cnt<10>/CYSELG_1597 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<10>/SRINV_1595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<10>/CLKINV_1594 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/LOGIC_ZERO  (
    .O(\FT245/cnt<12>/LOGIC_ZERO_1658 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/DXMUX  (
    .I(\FT245/cnt<12>/XORF_1683 ),
    .O(\FT245/cnt<12>/DXMUX_1685 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/XORF  (
    .I0(\FT245/cnt<12>/CYINIT_1682 ),
    .I1(\FT245/cnt<12>/F ),
    .O(\FT245/cnt<12>/XORF_1683 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYMUXF  (
    .IA(\FT245/cnt<12>/LOGIC_ZERO_1658 ),
    .IB(\FT245/cnt<12>/CYINIT_1682 ),
    .SEL(\FT245/cnt<12>/CYSELF_1664 ),
    .O(\FT245/Mcount_cnt_cy[12] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYMUXF2  (
    .IA(\FT245/cnt<12>/LOGIC_ZERO_1658 ),
    .IB(\FT245/cnt<12>/LOGIC_ZERO_1658 ),
    .SEL(\FT245/cnt<12>/CYSELF_1664 ),
    .O(\FT245/cnt<12>/CYMUXF2_1659 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYINIT  (
    .I(\FT245/Mcount_cnt_cy[11] ),
    .O(\FT245/cnt<12>/CYINIT_1682 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYSELF  (
    .I(\FT245/cnt<12>/F ),
    .O(\FT245/cnt<12>/CYSELF_1664 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/DYMUX  (
    .I(\FT245/cnt<12>/XORG_1666 ),
    .O(\FT245/cnt<12>/DYMUX_1668 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[12] ),
    .I1(\FT245/cnt<12>/G ),
    .O(\FT245/cnt<12>/XORG_1666 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/FASTCARRY  (
    .I(\FT245/Mcount_cnt_cy[11] ),
    .O(\FT245/cnt<12>/FASTCARRY_1661 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYAND  (
    .I0(\FT245/cnt<12>/CYSELG_1649 ),
    .I1(\FT245/cnt<12>/CYSELF_1664 ),
    .O(\FT245/cnt<12>/CYAND_1662 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYMUXFAST  (
    .IA(\FT245/cnt<12>/CYMUXG2_1660 ),
    .IB(\FT245/cnt<12>/FASTCARRY_1661 ),
    .SEL(\FT245/cnt<12>/CYAND_1662 ),
    .O(\FT245/cnt<12>/CYMUXFAST_1663 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYMUXG2  (
    .IA(\FT245/cnt<12>/LOGIC_ZERO_1658 ),
    .IB(\FT245/cnt<12>/CYMUXF2_1659 ),
    .SEL(\FT245/cnt<12>/CYSELG_1649 ),
    .O(\FT245/cnt<12>/CYMUXG2_1660 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CYSELG  (
    .I(\FT245/cnt<12>/G ),
    .O(\FT245/cnt<12>/CYSELG_1649 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<12>/SRINV_1647 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<12>/CLKINV_1646 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/LOGIC_ZERO  (
    .O(\FT245/cnt<14>/LOGIC_ZERO_1727 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/DXMUX  (
    .I(\FT245/cnt<14>/XORF_1728 ),
    .O(\FT245/cnt<14>/DXMUX_1730 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/XORF  (
    .I0(\FT245/cnt<14>/CYINIT_1726 ),
    .I1(\FT245/cnt<14>/F ),
    .O(\FT245/cnt<14>/XORF_1728 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/CYMUXF  (
    .IA(\FT245/cnt<14>/LOGIC_ZERO_1727 ),
    .IB(\FT245/cnt<14>/CYINIT_1726 ),
    .SEL(\FT245/cnt<14>/CYSELF_1717 ),
    .O(\FT245/Mcount_cnt_cy[14] )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/CYINIT  (
    .I(\FT245/cnt<12>/CYMUXFAST_1663 ),
    .O(\FT245/cnt<14>/CYINIT_1726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/CYSELF  (
    .I(\FT245/cnt<14>/F ),
    .O(\FT245/cnt<14>/CYSELF_1717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/DYMUX  (
    .I(\FT245/cnt<14>/XORG_1709 ),
    .O(\FT245/cnt<14>/DYMUX_1711 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/XORG  (
    .I0(\FT245/Mcount_cnt_cy[14] ),
    .I1(\FT245/cnt<15>_rt_1706 ),
    .O(\FT245/cnt<14>/XORG_1709 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/SRINV  (
    .I(\FT245/cnt_cmp_eq0000 ),
    .O(\FT245/cnt<14>/SRINV_1698 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt<14>/CLKINV_1697 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<0>/LOGIC_ZERO_1755 )
  );
  X_ONE #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/LOGIC_ONE  (
    .O(\driver1/TIMER_COUNT<0>/LOGIC_ONE_1777 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/DXMUX  (
    .I(\driver1/TIMER_COUNT<0>/XORF_1778 ),
    .O(\driver1/TIMER_COUNT<0>/DXMUX_1780 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/XORF  (
    .I0(\driver1/TIMER_COUNT<0>/CYINIT_1776 ),
    .I1(\driver1/Mcount_TIMER_COUNT_lut [0]),
    .O(\driver1/TIMER_COUNT<0>/XORF_1778 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<0>/LOGIC_ONE_1777 ),
    .IB(\driver1/TIMER_COUNT<0>/CYINIT_1776 ),
    .SEL(\driver1/TIMER_COUNT<0>/CYSELF_1767 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CYINIT  (
    .I(\driver1/TIMER_COUNT<0>/BXINV_1765 ),
    .O(\driver1/TIMER_COUNT<0>/CYINIT_1776 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CYSELF  (
    .I(\driver1/Mcount_TIMER_COUNT_lut [0]),
    .O(\driver1/TIMER_COUNT<0>/CYSELF_1767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/BXINV  (
    .I(1'b0),
    .O(\driver1/TIMER_COUNT<0>/BXINV_1765 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/DYMUX  (
    .I(\driver1/TIMER_COUNT<0>/XORG_1758 ),
    .O(\driver1/TIMER_COUNT<0>/DYMUX_1760 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [0]),
    .I1(\driver1/TIMER_COUNT<0>/G ),
    .O(\driver1/TIMER_COUNT<0>/XORG_1758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<0>/CYMUXG_1757 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CYMUXG  (
    .IA(\driver1/TIMER_COUNT<0>/LOGIC_ZERO_1755 ),
    .IB(\driver1/Mcount_TIMER_COUNT_cy [0]),
    .SEL(\driver1/TIMER_COUNT<0>/CYSELG_1746 ),
    .O(\driver1/TIMER_COUNT<0>/CYMUXG_1757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CYSELG  (
    .I(\driver1/TIMER_COUNT<0>/G ),
    .O(\driver1/TIMER_COUNT<0>/CYSELG_1746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<0>/SRINV_1744 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<0>/CLKINV_1743 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y44" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_0  (
    .I(\driver1/TIMER_COUNT<0>/DXMUX_1780 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<0>/CLKINV_1743 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<0>/SRINV_1744 ),
    .O(\driver1/TIMER_COUNT [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y45" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_3  (
    .I(\driver1/TIMER_COUNT<2>/DYMUX_1815 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<2>/CLKINV_1793 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<2>/SRINV_1794 ),
    .O(\driver1/TIMER_COUNT [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y45" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_2  (
    .I(\driver1/TIMER_COUNT<2>/DXMUX_1832 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<2>/CLKINV_1793 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<2>/SRINV_1794 ),
    .O(\driver1/TIMER_COUNT [2])
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/DXMUX  (
    .I(\driver1/TIMER_COUNT<2>/XORF_1830 ),
    .O(\driver1/TIMER_COUNT<2>/DXMUX_1832 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/XORF  (
    .I0(\driver1/TIMER_COUNT<2>/CYINIT_1829 ),
    .I1(\driver1/TIMER_COUNT<2>/F ),
    .O(\driver1/TIMER_COUNT<2>/XORF_1830 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 ),
    .IB(\driver1/TIMER_COUNT<2>/CYINIT_1829 ),
    .SEL(\driver1/TIMER_COUNT<2>/CYSELF_1811 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 ),
    .IB(\driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 ),
    .SEL(\driver1/TIMER_COUNT<2>/CYSELF_1811 ),
    .O(\driver1/TIMER_COUNT<2>/CYMUXF2_1806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [1]),
    .O(\driver1/TIMER_COUNT<2>/CYINIT_1829 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYSELF  (
    .I(\driver1/TIMER_COUNT<2>/F ),
    .O(\driver1/TIMER_COUNT<2>/CYSELF_1811 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/DYMUX  (
    .I(\driver1/TIMER_COUNT<2>/XORG_1813 ),
    .O(\driver1/TIMER_COUNT<2>/DYMUX_1815 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [2]),
    .I1(\driver1/TIMER_COUNT<2>/G ),
    .O(\driver1/TIMER_COUNT<2>/XORG_1813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<2>/CYMUXFAST_1810 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [1]),
    .O(\driver1/TIMER_COUNT<2>/FASTCARRY_1808 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYAND  (
    .I0(\driver1/TIMER_COUNT<2>/CYSELG_1796 ),
    .I1(\driver1/TIMER_COUNT<2>/CYSELF_1811 ),
    .O(\driver1/TIMER_COUNT<2>/CYAND_1809 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<2>/CYMUXG2_1807 ),
    .IB(\driver1/TIMER_COUNT<2>/FASTCARRY_1808 ),
    .SEL(\driver1/TIMER_COUNT<2>/CYAND_1809 ),
    .O(\driver1/TIMER_COUNT<2>/CYMUXFAST_1810 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<2>/LOGIC_ZERO_1805 ),
    .IB(\driver1/TIMER_COUNT<2>/CYMUXF2_1806 ),
    .SEL(\driver1/TIMER_COUNT<2>/CYSELG_1796 ),
    .O(\driver1/TIMER_COUNT<2>/CYMUXG2_1807 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CYSELG  (
    .I(\driver1/TIMER_COUNT<2>/G ),
    .O(\driver1/TIMER_COUNT<2>/CYSELG_1796 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<2>/SRINV_1794 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<2>/CLKINV_1793 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y46" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_5  (
    .I(\driver1/TIMER_COUNT<4>/DYMUX_1867 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<4>/CLKINV_1845 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<4>/SRINV_1846 ),
    .O(\driver1/TIMER_COUNT [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y46" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_4  (
    .I(\driver1/TIMER_COUNT<4>/DXMUX_1884 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<4>/CLKINV_1845 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<4>/SRINV_1846 ),
    .O(\driver1/TIMER_COUNT [4])
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/DXMUX  (
    .I(\driver1/TIMER_COUNT<4>/XORF_1882 ),
    .O(\driver1/TIMER_COUNT<4>/DXMUX_1884 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/XORF  (
    .I0(\driver1/TIMER_COUNT<4>/CYINIT_1881 ),
    .I1(\driver1/TIMER_COUNT<4>/F ),
    .O(\driver1/TIMER_COUNT<4>/XORF_1882 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 ),
    .IB(\driver1/TIMER_COUNT<4>/CYINIT_1881 ),
    .SEL(\driver1/TIMER_COUNT<4>/CYSELF_1863 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [4])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 ),
    .IB(\driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 ),
    .SEL(\driver1/TIMER_COUNT<4>/CYSELF_1863 ),
    .O(\driver1/TIMER_COUNT<4>/CYMUXF2_1858 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [3]),
    .O(\driver1/TIMER_COUNT<4>/CYINIT_1881 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYSELF  (
    .I(\driver1/TIMER_COUNT<4>/F ),
    .O(\driver1/TIMER_COUNT<4>/CYSELF_1863 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/DYMUX  (
    .I(\driver1/TIMER_COUNT<4>/XORG_1865 ),
    .O(\driver1/TIMER_COUNT<4>/DYMUX_1867 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [4]),
    .I1(\driver1/TIMER_COUNT<4>/G ),
    .O(\driver1/TIMER_COUNT<4>/XORG_1865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<4>/CYMUXFAST_1862 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [3]),
    .O(\driver1/TIMER_COUNT<4>/FASTCARRY_1860 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYAND  (
    .I0(\driver1/TIMER_COUNT<4>/CYSELG_1848 ),
    .I1(\driver1/TIMER_COUNT<4>/CYSELF_1863 ),
    .O(\driver1/TIMER_COUNT<4>/CYAND_1861 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<4>/CYMUXG2_1859 ),
    .IB(\driver1/TIMER_COUNT<4>/FASTCARRY_1860 ),
    .SEL(\driver1/TIMER_COUNT<4>/CYAND_1861 ),
    .O(\driver1/TIMER_COUNT<4>/CYMUXFAST_1862 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<4>/LOGIC_ZERO_1857 ),
    .IB(\driver1/TIMER_COUNT<4>/CYMUXF2_1858 ),
    .SEL(\driver1/TIMER_COUNT<4>/CYSELG_1848 ),
    .O(\driver1/TIMER_COUNT<4>/CYMUXG2_1859 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CYSELG  (
    .I(\driver1/TIMER_COUNT<4>/G ),
    .O(\driver1/TIMER_COUNT<4>/CYSELG_1848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<4>/SRINV_1846 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<4>/CLKINV_1845 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y47" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_7  (
    .I(\driver1/TIMER_COUNT<6>/DYMUX_1919 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<6>/CLKINV_1897 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<6>/SRINV_1898 ),
    .O(\driver1/TIMER_COUNT [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y47" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_6  (
    .I(\driver1/TIMER_COUNT<6>/DXMUX_1936 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<6>/CLKINV_1897 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<6>/SRINV_1898 ),
    .O(\driver1/TIMER_COUNT [6])
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/DXMUX  (
    .I(\driver1/TIMER_COUNT<6>/XORF_1934 ),
    .O(\driver1/TIMER_COUNT<6>/DXMUX_1936 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/XORF  (
    .I0(\driver1/TIMER_COUNT<6>/CYINIT_1933 ),
    .I1(\driver1/TIMER_COUNT<6>/F ),
    .O(\driver1/TIMER_COUNT<6>/XORF_1934 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 ),
    .IB(\driver1/TIMER_COUNT<6>/CYINIT_1933 ),
    .SEL(\driver1/TIMER_COUNT<6>/CYSELF_1915 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [6])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 ),
    .IB(\driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 ),
    .SEL(\driver1/TIMER_COUNT<6>/CYSELF_1915 ),
    .O(\driver1/TIMER_COUNT<6>/CYMUXF2_1910 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [5]),
    .O(\driver1/TIMER_COUNT<6>/CYINIT_1933 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYSELF  (
    .I(\driver1/TIMER_COUNT<6>/F ),
    .O(\driver1/TIMER_COUNT<6>/CYSELF_1915 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/DYMUX  (
    .I(\driver1/TIMER_COUNT<6>/XORG_1917 ),
    .O(\driver1/TIMER_COUNT<6>/DYMUX_1919 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [6]),
    .I1(\driver1/TIMER_COUNT<6>/G ),
    .O(\driver1/TIMER_COUNT<6>/XORG_1917 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<6>/CYMUXFAST_1914 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [7])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [5]),
    .O(\driver1/TIMER_COUNT<6>/FASTCARRY_1912 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYAND  (
    .I0(\driver1/TIMER_COUNT<6>/CYSELG_1900 ),
    .I1(\driver1/TIMER_COUNT<6>/CYSELF_1915 ),
    .O(\driver1/TIMER_COUNT<6>/CYAND_1913 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<6>/CYMUXG2_1911 ),
    .IB(\driver1/TIMER_COUNT<6>/FASTCARRY_1912 ),
    .SEL(\driver1/TIMER_COUNT<6>/CYAND_1913 ),
    .O(\driver1/TIMER_COUNT<6>/CYMUXFAST_1914 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<6>/LOGIC_ZERO_1909 ),
    .IB(\driver1/TIMER_COUNT<6>/CYMUXF2_1910 ),
    .SEL(\driver1/TIMER_COUNT<6>/CYSELG_1900 ),
    .O(\driver1/TIMER_COUNT<6>/CYMUXG2_1911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CYSELG  (
    .I(\driver1/TIMER_COUNT<6>/G ),
    .O(\driver1/TIMER_COUNT<6>/CYSELG_1900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<6>/SRINV_1898 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<6>/CLKINV_1897 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/DXMUX  (
    .I(\driver1/TIMER_COUNT<8>/XORF_1986 ),
    .O(\driver1/TIMER_COUNT<8>/DXMUX_1988 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/XORF  (
    .I0(\driver1/TIMER_COUNT<8>/CYINIT_1985 ),
    .I1(\driver1/TIMER_COUNT<8>/F ),
    .O(\driver1/TIMER_COUNT<8>/XORF_1986 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 ),
    .IB(\driver1/TIMER_COUNT<8>/CYINIT_1985 ),
    .SEL(\driver1/TIMER_COUNT<8>/CYSELF_1967 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [8])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 ),
    .IB(\driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 ),
    .SEL(\driver1/TIMER_COUNT<8>/CYSELF_1967 ),
    .O(\driver1/TIMER_COUNT<8>/CYMUXF2_1962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [7]),
    .O(\driver1/TIMER_COUNT<8>/CYINIT_1985 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYSELF  (
    .I(\driver1/TIMER_COUNT<8>/F ),
    .O(\driver1/TIMER_COUNT<8>/CYSELF_1967 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/DYMUX  (
    .I(\driver1/TIMER_COUNT<8>/XORG_1969 ),
    .O(\driver1/TIMER_COUNT<8>/DYMUX_1971 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [8]),
    .I1(\driver1/TIMER_COUNT<8>/G ),
    .O(\driver1/TIMER_COUNT<8>/XORG_1969 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<8>/CYMUXFAST_1966 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [9])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [7]),
    .O(\driver1/TIMER_COUNT<8>/FASTCARRY_1964 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYAND  (
    .I0(\driver1/TIMER_COUNT<8>/CYSELG_1952 ),
    .I1(\driver1/TIMER_COUNT<8>/CYSELF_1967 ),
    .O(\driver1/TIMER_COUNT<8>/CYAND_1965 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<8>/CYMUXG2_1963 ),
    .IB(\driver1/TIMER_COUNT<8>/FASTCARRY_1964 ),
    .SEL(\driver1/TIMER_COUNT<8>/CYAND_1965 ),
    .O(\driver1/TIMER_COUNT<8>/CYMUXFAST_1966 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<8>/LOGIC_ZERO_1961 ),
    .IB(\driver1/TIMER_COUNT<8>/CYMUXF2_1962 ),
    .SEL(\driver1/TIMER_COUNT<8>/CYSELG_1952 ),
    .O(\driver1/TIMER_COUNT<8>/CYMUXG2_1963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CYSELG  (
    .I(\driver1/TIMER_COUNT<8>/G ),
    .O(\driver1/TIMER_COUNT<8>/CYSELG_1952 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<8>/SRINV_1950 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<8>/CLKINV_1949 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/DXMUX  (
    .I(\driver1/TIMER_COUNT<10>/XORF_2038 ),
    .O(\driver1/TIMER_COUNT<10>/DXMUX_2040 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/XORF  (
    .I0(\driver1/TIMER_COUNT<10>/CYINIT_2037 ),
    .I1(\driver1/TIMER_COUNT<10>/F ),
    .O(\driver1/TIMER_COUNT<10>/XORF_2038 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 ),
    .IB(\driver1/TIMER_COUNT<10>/CYINIT_2037 ),
    .SEL(\driver1/TIMER_COUNT<10>/CYSELF_2019 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [10])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 ),
    .IB(\driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 ),
    .SEL(\driver1/TIMER_COUNT<10>/CYSELF_2019 ),
    .O(\driver1/TIMER_COUNT<10>/CYMUXF2_2014 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [9]),
    .O(\driver1/TIMER_COUNT<10>/CYINIT_2037 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYSELF  (
    .I(\driver1/TIMER_COUNT<10>/F ),
    .O(\driver1/TIMER_COUNT<10>/CYSELF_2019 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/DYMUX  (
    .I(\driver1/TIMER_COUNT<10>/XORG_2021 ),
    .O(\driver1/TIMER_COUNT<10>/DYMUX_2023 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [10]),
    .I1(\driver1/TIMER_COUNT<10>/G ),
    .O(\driver1/TIMER_COUNT<10>/XORG_2021 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<10>/CYMUXFAST_2018 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [11])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [9]),
    .O(\driver1/TIMER_COUNT<10>/FASTCARRY_2016 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYAND  (
    .I0(\driver1/TIMER_COUNT<10>/CYSELG_2004 ),
    .I1(\driver1/TIMER_COUNT<10>/CYSELF_2019 ),
    .O(\driver1/TIMER_COUNT<10>/CYAND_2017 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<10>/CYMUXG2_2015 ),
    .IB(\driver1/TIMER_COUNT<10>/FASTCARRY_2016 ),
    .SEL(\driver1/TIMER_COUNT<10>/CYAND_2017 ),
    .O(\driver1/TIMER_COUNT<10>/CYMUXFAST_2018 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<10>/LOGIC_ZERO_2013 ),
    .IB(\driver1/TIMER_COUNT<10>/CYMUXF2_2014 ),
    .SEL(\driver1/TIMER_COUNT<10>/CYSELG_2004 ),
    .O(\driver1/TIMER_COUNT<10>/CYMUXG2_2015 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CYSELG  (
    .I(\driver1/TIMER_COUNT<10>/G ),
    .O(\driver1/TIMER_COUNT<10>/CYSELG_2004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<10>/SRINV_2002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<10>/CLKINV_2001 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y50" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_12  (
    .I(\driver1/TIMER_COUNT<12>/DXMUX_2092 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<12>/CLKINV_2053 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<12>/SRINV_2054 ),
    .O(\driver1/TIMER_COUNT [12])
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/DXMUX  (
    .I(\driver1/TIMER_COUNT<12>/XORF_2090 ),
    .O(\driver1/TIMER_COUNT<12>/DXMUX_2092 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/XORF  (
    .I0(\driver1/TIMER_COUNT<12>/CYINIT_2089 ),
    .I1(\driver1/TIMER_COUNT<12>/F ),
    .O(\driver1/TIMER_COUNT<12>/XORF_2090 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 ),
    .IB(\driver1/TIMER_COUNT<12>/CYINIT_2089 ),
    .SEL(\driver1/TIMER_COUNT<12>/CYSELF_2071 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [12])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 ),
    .IB(\driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 ),
    .SEL(\driver1/TIMER_COUNT<12>/CYSELF_2071 ),
    .O(\driver1/TIMER_COUNT<12>/CYMUXF2_2066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [11]),
    .O(\driver1/TIMER_COUNT<12>/CYINIT_2089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYSELF  (
    .I(\driver1/TIMER_COUNT<12>/F ),
    .O(\driver1/TIMER_COUNT<12>/CYSELF_2071 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/DYMUX  (
    .I(\driver1/TIMER_COUNT<12>/XORG_2073 ),
    .O(\driver1/TIMER_COUNT<12>/DYMUX_2075 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [12]),
    .I1(\driver1/TIMER_COUNT<12>/G ),
    .O(\driver1/TIMER_COUNT<12>/XORG_2073 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/COUTUSED  (
    .I(\driver1/TIMER_COUNT<12>/CYMUXFAST_2070 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [13])
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [11]),
    .O(\driver1/TIMER_COUNT<12>/FASTCARRY_2068 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYAND  (
    .I0(\driver1/TIMER_COUNT<12>/CYSELG_2056 ),
    .I1(\driver1/TIMER_COUNT<12>/CYSELF_2071 ),
    .O(\driver1/TIMER_COUNT<12>/CYAND_2069 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<12>/CYMUXG2_2067 ),
    .IB(\driver1/TIMER_COUNT<12>/FASTCARRY_2068 ),
    .SEL(\driver1/TIMER_COUNT<12>/CYAND_2069 ),
    .O(\driver1/TIMER_COUNT<12>/CYMUXFAST_2070 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<12>/LOGIC_ZERO_2065 ),
    .IB(\driver1/TIMER_COUNT<12>/CYMUXF2_2066 ),
    .SEL(\driver1/TIMER_COUNT<12>/CYSELG_2056 ),
    .O(\driver1/TIMER_COUNT<12>/CYMUXG2_2067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CYSELG  (
    .I(\driver1/TIMER_COUNT<12>/G ),
    .O(\driver1/TIMER_COUNT<12>/CYSELG_2056 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<12>/SRINV_2054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<12>/CLKINV_2053 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/LOGIC_ZERO  (
    .O(\driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/DXMUX  (
    .I(\driver1/TIMER_COUNT<14>/XORF_2142 ),
    .O(\driver1/TIMER_COUNT<14>/DXMUX_2144 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/XORF  (
    .I0(\driver1/TIMER_COUNT<14>/CYINIT_2141 ),
    .I1(\driver1/TIMER_COUNT<14>/F ),
    .O(\driver1/TIMER_COUNT<14>/XORF_2142 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYMUXF  (
    .IA(\driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 ),
    .IB(\driver1/TIMER_COUNT<14>/CYINIT_2141 ),
    .SEL(\driver1/TIMER_COUNT<14>/CYSELF_2123 ),
    .O(\driver1/Mcount_TIMER_COUNT_cy [14])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYMUXF2  (
    .IA(\driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 ),
    .IB(\driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 ),
    .SEL(\driver1/TIMER_COUNT<14>/CYSELF_2123 ),
    .O(\driver1/TIMER_COUNT<14>/CYMUXF2_2118 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYINIT  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [13]),
    .O(\driver1/TIMER_COUNT<14>/CYINIT_2141 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYSELF  (
    .I(\driver1/TIMER_COUNT<14>/F ),
    .O(\driver1/TIMER_COUNT<14>/CYSELF_2123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/DYMUX  (
    .I(\driver1/TIMER_COUNT<14>/XORG_2125 ),
    .O(\driver1/TIMER_COUNT<14>/DYMUX_2127 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/XORG  (
    .I0(\driver1/Mcount_TIMER_COUNT_cy [14]),
    .I1(\driver1/TIMER_COUNT<14>/G ),
    .O(\driver1/TIMER_COUNT<14>/XORG_2125 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/FASTCARRY  (
    .I(\driver1/Mcount_TIMER_COUNT_cy [13]),
    .O(\driver1/TIMER_COUNT<14>/FASTCARRY_2120 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYAND  (
    .I0(\driver1/TIMER_COUNT<14>/CYSELG_2108 ),
    .I1(\driver1/TIMER_COUNT<14>/CYSELF_2123 ),
    .O(\driver1/TIMER_COUNT<14>/CYAND_2121 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYMUXFAST  (
    .IA(\driver1/TIMER_COUNT<14>/CYMUXG2_2119 ),
    .IB(\driver1/TIMER_COUNT<14>/FASTCARRY_2120 ),
    .SEL(\driver1/TIMER_COUNT<14>/CYAND_2121 ),
    .O(\driver1/TIMER_COUNT<14>/CYMUXFAST_2122 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYMUXG2  (
    .IA(\driver1/TIMER_COUNT<14>/LOGIC_ZERO_2117 ),
    .IB(\driver1/TIMER_COUNT<14>/CYMUXF2_2118 ),
    .SEL(\driver1/TIMER_COUNT<14>/CYSELG_2108 ),
    .O(\driver1/TIMER_COUNT<14>/CYMUXG2_2119 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CYSELG  (
    .I(\driver1/TIMER_COUNT<14>/G ),
    .O(\driver1/TIMER_COUNT<14>/CYSELG_2108 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<14>/SRINV_2106 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<14>/CLKINV_2105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>/DXMUX  (
    .I(\driver1/TIMER_COUNT<16>/XORF_2166 ),
    .O(\driver1/TIMER_COUNT<16>/DXMUX_2168 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>/XORF  (
    .I0(\driver1/TIMER_COUNT<16>/CYINIT_2165 ),
    .I1(\driver1/TIMER_COUNT<16>_rt_2163 ),
    .O(\driver1/TIMER_COUNT<16>/XORF_2166 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>/CYINIT  (
    .I(\driver1/TIMER_COUNT<14>/CYMUXFAST_2122 ),
    .O(\driver1/TIMER_COUNT<16>/CYINIT_2165 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>/SRINV  (
    .I(\driver1/TIMER_COUNT_cmp_eq0000 ),
    .O(\driver1/TIMER_COUNT<16>/SRINV_2155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/TIMER_COUNT<16>/CLKINV_2154 )
  );
  X_IPAD #(
    .LOC ( "PAD35" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD182" ))
  \CLK_PAR/PAD  (
    .PAD(CLK_PAR)
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  CLK_PAR_IBUF (
    .I(CLK_PAR),
    .O(\CLK_PAR/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD3" ))
  \LED<0>/PAD  (
    .PAD(LED[0])
  );
  X_OBUF #(
    .LOC ( "PAD3" ))
  LED_0_OBUF (
    .I(\LED<0>/O ),
    .O(LED[0])
  );
  X_OPAD #(
    .LOC ( "PAD2" ))
  \LED<1>/PAD  (
    .PAD(LED[1])
  );
  X_OBUF #(
    .LOC ( "PAD2" ))
  LED_1_OBUF (
    .I(\LED<1>/O ),
    .O(LED[1])
  );
  X_OPAD #(
    .LOC ( "PAD206" ))
  \LED<2>/PAD  (
    .PAD(LED[2])
  );
  X_OBUF #(
    .LOC ( "PAD206" ))
  LED_2_OBUF (
    .I(\LED<2>/O ),
    .O(LED[2])
  );
  X_OPAD #(
    .LOC ( "PAD215" ))
  \LED<3>/PAD  (
    .PAD(LED[3])
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  LED_3_OBUF (
    .I(\LED<3>/O ),
    .O(LED[3])
  );
  X_IPAD #(
    .LOC ( "PAD167" ))
  \HALL1_COUNT<0>/PAD  (
    .PAD(HALL1_COUNT[0])
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  HALL1_COUNT_0_IBUF (
    .I(HALL1_COUNT[0]),
    .O(\HALL1_COUNT<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD135" ))
  \HALL1_COUNT<1>/PAD  (
    .PAD(HALL1_COUNT[1])
  );
  X_BUF #(
    .LOC ( "PAD135" ))
  HALL1_COUNT_1_IBUF (
    .I(HALL1_COUNT[1]),
    .O(\HALL1_COUNT<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD135" ))
  \HALL1_COUNT<1>/IFF/IMUX  (
    .I(\HALL1_COUNT<1>/INBUF ),
    .O(HALL1_COUNT_1_IBUF_853)
  );
  X_IPAD #(
    .LOC ( "PAD156" ))
  \HALL1_COUNT<2>/PAD  (
    .PAD(HALL1_COUNT[2])
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  HALL1_COUNT_2_IBUF (
    .I(HALL1_COUNT[2]),
    .O(\HALL1_COUNT<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \HALL1_COUNT<2>/IFF/IMUX  (
    .I(\HALL1_COUNT<2>/INBUF ),
    .O(HALL1_COUNT_2_IBUF_854)
  );
  X_IPAD #(
    .LOC ( "PAD183" ))
  \PARITY_IN/PAD  (
    .PAD(PARITY_IN)
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  PARITY_IN_IBUF (
    .I(PARITY_IN),
    .O(\PARITY_IN/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD137" ))
  \HALL1_COUNT<3>/PAD  (
    .PAD(HALL1_COUNT[3])
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  HALL1_COUNT_3_IBUF (
    .I(HALL1_COUNT[3]),
    .O(\HALL1_COUNT<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  \HALL11/PAD  (
    .PAD(HALL11)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  HALL11_IBUF (
    .I(HALL11),
    .O(\HALL11/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD90" ))
  \USB_WR/PAD  (
    .PAD(USB_WR)
  );
  X_OBUF #(
    .LOC ( "PAD90" ))
  USB_WR_OBUF (
    .I(\USB_WR/O ),
    .O(USB_WR)
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  \HALL1_COUNT<4>/PAD  (
    .PAD(HALL1_COUNT[4])
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  HALL1_COUNT_4_IBUF (
    .I(HALL1_COUNT[4]),
    .O(\HALL1_COUNT<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD119" ))
  \HALL21/PAD  (
    .PAD(HALL21)
  );
  X_BUF #(
    .LOC ( "PAD119" ))
  HALL21_IBUF (
    .I(HALL21),
    .O(\HALL21/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD121" ))
  \HALL31/PAD  (
    .PAD(HALL31)
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  HALL31_IBUF (
    .I(HALL31),
    .O(\HALL31/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  \HALL31/IFF/IMUX  (
    .I(\HALL31/INBUF ),
    .O(HALL31_IBUF_851)
  );
  X_OPAD #(
    .LOC ( "PAD118" ))
  \DATA_USB<0>/PAD  (
    .PAD(DATA_USB[0])
  );
  X_OBUF #(
    .LOC ( "PAD118" ))
  DATA_USB_0_OBUF (
    .I(\DATA_USB<0>/O ),
    .O(DATA_USB[0])
  );
  X_OPAD #(
    .LOC ( "PAD115" ))
  \DATA_USB<1>/PAD  (
    .PAD(DATA_USB[1])
  );
  X_OBUF #(
    .LOC ( "PAD115" ))
  DATA_USB_1_OBUF (
    .I(\DATA_USB<1>/O ),
    .O(DATA_USB[1])
  );
  X_IPAD #(
    .LOC ( "PAD174" ))
  \MOTOR_NUM<0>/PAD  (
    .PAD(MOTOR_NUM[0])
  );
  X_BUF #(
    .LOC ( "PAD174" ))
  \MOTOR_NUM<0>_IBUF  (
    .I(MOTOR_NUM[0]),
    .O(\MOTOR_NUM<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD133" ))
  \M1n1/PAD  (
    .PAD(M1n1)
  );
  X_OBUF #(
    .LOC ( "PAD133" ))
  M1n1_OBUF (
    .I(\M1n1/O ),
    .O(M1n1)
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \DATA_USB<2>/PAD  (
    .PAD(DATA_USB[2])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  DATA_USB_2_OBUF (
    .I(\DATA_USB<2>/O ),
    .O(DATA_USB[2])
  );
  X_IPAD #(
    .LOC ( "PAD181" ))
  \MOTOR_NUM<1>/PAD  (
    .PAD(MOTOR_NUM[1])
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \MOTOR_NUM<1>_IBUF  (
    .I(MOTOR_NUM[1]),
    .O(\MOTOR_NUM<1>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD101" ))
  \DATA_USB<3>/PAD  (
    .PAD(DATA_USB[3])
  );
  X_OBUF #(
    .LOC ( "PAD101" ))
  DATA_USB_3_OBUF (
    .I(\DATA_USB<3>/O ),
    .O(DATA_USB[3])
  );
  X_OPAD #(
    .LOC ( "PAD124" ))
  \M2n1/PAD  (
    .PAD(M2n1)
  );
  X_OBUF #(
    .LOC ( "PAD124" ))
  M2n1_OBUF (
    .I(\M2n1/O ),
    .O(M2n1)
  );
  X_OPAD #(
    .LOC ( "PAD134" ))
  \M1p1/PAD  (
    .PAD(M1p1)
  );
  X_OBUF #(
    .LOC ( "PAD134" ))
  M1p1_OBUF (
    .I(\M1p1/O ),
    .O(M1p1)
  );
  X_OPAD #(
    .LOC ( "PAD117" ))
  \DATA_USB<4>/PAD  (
    .PAD(DATA_USB[4])
  );
  X_OBUF #(
    .LOC ( "PAD117" ))
  DATA_USB_4_OBUF (
    .I(\DATA_USB<4>/O ),
    .O(DATA_USB[4])
  );
  X_IPAD #(
    .LOC ( "PAD88" ))
  \TXE/PAD  (
    .PAD(TXE)
  );
  X_BUF #(
    .LOC ( "PAD88" ))
  TXE_IBUF (
    .I(TXE),
    .O(\TXE/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD103" ))
  \DATA_USB<5>/PAD  (
    .PAD(DATA_USB[5])
  );
  X_OBUF #(
    .LOC ( "PAD103" ))
  DATA_USB_5_OBUF (
    .I(\DATA_USB<5>/O ),
    .O(DATA_USB[5])
  );
  X_OPAD #(
    .LOC ( "PAD122" ))
  \M3n1/PAD  (
    .PAD(M3n1)
  );
  X_OBUF #(
    .LOC ( "PAD122" ))
  M3n1_OBUF (
    .I(\M3n1/O ),
    .O(M3n1)
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \M2p1/PAD  (
    .PAD(M2p1)
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  M2p1_OBUF (
    .I(\M2p1/O ),
    .O(M2p1)
  );
  X_OPAD #(
    .LOC ( "PAD102" ))
  \DATA_USB<6>/PAD  (
    .PAD(DATA_USB[6])
  );
  X_OBUF #(
    .LOC ( "PAD102" ))
  DATA_USB_6_OBUF (
    .I(\DATA_USB<6>/O ),
    .O(DATA_USB[6])
  );
  X_IPAD #(
    .LOC ( "PAD157" ))
  \RPM_IN<0>/PAD  (
    .PAD(RPM_IN[0])
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \RPM_IN<0>_IBUF  (
    .I(RPM_IN[0]),
    .O(\RPM_IN<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \RPM_IN<0>/IFF/IMUX  (
    .I(\RPM_IN<0>/INBUF ),
    .O(\RPM_IN<0>_IBUF_874 )
  );
  X_OPAD #(
    .LOC ( "PAD104" ))
  \DATA_USB<7>/PAD  (
    .PAD(DATA_USB[7])
  );
  X_OBUF #(
    .LOC ( "PAD104" ))
  DATA_USB_7_OBUF (
    .I(\DATA_USB<7>/O ),
    .O(DATA_USB[7])
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \RPM_IN<1>/PAD  (
    .PAD(RPM_IN[1])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \RPM_IN<1>_IBUF  (
    .I(RPM_IN[1]),
    .O(\RPM_IN<1>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD123" ))
  \M3p1/PAD  (
    .PAD(M3p1)
  );
  X_OBUF #(
    .LOC ( "PAD123" ))
  M3p1_OBUF (
    .I(\M3p1/O ),
    .O(M3p1)
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \RPM_IN<2>/PAD  (
    .PAD(RPM_IN[2])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \RPM_IN<2>_IBUF  (
    .I(RPM_IN[2]),
    .O(\RPM_IN<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD168" ))
  \RPM_IN<3>/PAD  (
    .PAD(RPM_IN[3])
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \RPM_IN<3>_IBUF  (
    .I(RPM_IN[3]),
    .O(\RPM_IN<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD169" ))
  \RPM_IN<4>/PAD  (
    .PAD(RPM_IN[4])
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  \RPM_IN<4>_IBUF  (
    .I(RPM_IN[4]),
    .O(\RPM_IN<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD171" ))
  \RPM_IN<5>/PAD  (
    .PAD(RPM_IN[5])
  );
  X_BUF #(
    .LOC ( "PAD171" ))
  \RPM_IN<5>_IBUF  (
    .I(RPM_IN[5]),
    .O(\RPM_IN<5>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD171" ))
  \RPM_IN<5>/IFF/IMUX  (
    .I(\RPM_IN<5>/INBUF ),
    .O(\RPM_IN<5>_IBUF_881 )
  );
  X_IPAD #(
    .LOC ( "PAD172" ))
  \RPM_IN<6>/PAD  (
    .PAD(RPM_IN[6])
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \RPM_IN<6>_IBUF  (
    .I(RPM_IN[6]),
    .O(\RPM_IN<6>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \RPM_IN<6>/IFF/IMUX  (
    .I(\RPM_IN<6>/INBUF ),
    .O(\RPM_IN<6>_IBUF_882 )
  );
  X_IPAD #(
    .LOC ( "PAD173" ))
  \RPM_IN<7>/PAD  (
    .PAD(RPM_IN[7])
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \RPM_IN<7>_IBUF  (
    .I(RPM_IN[7]),
    .O(\RPM_IN<7>/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX6" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX6" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX6" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_MULT18X18 #(
    .LOC ( "MULT18X18_X1Y3" ))
  \driver1/Mmult_M_RPMTEMP_mult0000  (
    .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [4], 
\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [3], \NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [2], 
\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [1], \NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [0]}),
    .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0}),
    .P({\driver1/Mmult_M_RPMTEMP_mult0000/PROD35 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD34 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD33 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD32 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD31 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD30 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD29 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD28 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD27 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD26 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD25 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD24 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD23 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD22 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD21 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD20 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD19 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD18 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD17 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD16 , \driver1/M_RPMTEMP_mult0000 [15], 
\driver1/M_RPMTEMP_mult0000 [14], \driver1/M_RPMTEMP_mult0000 [13], \driver1/M_RPMTEMP_mult0000 [12], \driver1/M_RPMTEMP_mult0000 [11], 
\driver1/M_RPMTEMP_mult0000 [10], \driver1/M_RPMTEMP_mult0000 [9], \driver1/M_RPMTEMP_mult0000 [8], \driver1/Mmult_M_RPMTEMP_mult0000/PROD7 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD6 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD5 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD4 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD3 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD2 , \driver1/Mmult_M_RPMTEMP_mult0000/PROD1 , 
\driver1/Mmult_M_RPMTEMP_mult0000/PROD0 })
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X44Y33" ))
  \driver1/PWM_1/oc_out_cmp_ge00001  (
    .ADR0(\driver1/PWM_1/Cnt_1 [8]),
    .ADR1(\driver1/PWM_1/Cnt_1 [10]),
    .ADR2(\driver1/PWM_1/oc_out_cmp_ge00001_SW0/O ),
    .ADR3(\driver1/PWM_1/Cnt_1 [9]),
    .O(\driver1/PWM_1/oc_out_cmp_ge0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X44Y33" ))
  \driver1/PWM_1/oc_out_cmp_ge0000/YUSED  (
    .I(\driver1/PWM_1/oc_out_cmp_ge00001_SW0/O_pack_1 ),
    .O(\driver1/PWM_1/oc_out_cmp_ge00001_SW0/O )
  );
  X_LUT4 #(
    .INIT ( 16'hC8FF ),
    .LOC ( "SLICE_X44Y33" ))
  \driver1/PWM_1/oc_out_cmp_ge00001_SW0  (
    .ADR0(\driver1/PWM_1/Cnt_1 [5]),
    .ADR1(\driver1/PWM_1/Cnt_1 [7]),
    .ADR2(\driver1/PWM_1/Cnt_1 [6]),
    .ADR3(\driver1/M_PID [5]),
    .O(\driver1/PWM_1/oc_out_cmp_ge00001_SW0/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB<7>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [7]),
    .O(\FT245/DATA_USB<7>/DXMUX_2586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB<7>/YUSED  (
    .I(\FT245/N11_pack_3 ),
    .O(\FT245/N11 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<7>/CLKINV_2571 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB<7>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<7>/CEINV_2570 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y35" ))
  \FT245/cnt1_FSM_FFd6/DYMUX  (
    .I(\FT245/Mshreg_cnt1_FSM_FFd6_2615 ),
    .O(\FT245/cnt1_FSM_FFd6/DYMUX_2618 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y35" ))
  \FT245/cnt1_FSM_FFd6/DIG_MUX  (
    .I(\FT245/cnt1_FSM_FFd2_900 ),
    .O(\FT245/cnt1_FSM_FFd6/DIG_MUX_2607 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y35" ))
  \FT245/cnt1_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt1_FSM_FFd6/CLKINV_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y35" ))
  \FT245/cnt1_FSM_FFd6/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/cnt1_FSM_FFd6/CEINV_2604 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB_mux0000<0>2  (
    .ADR0(\FT245/N11 ),
    .ADR1(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR2(\FT245/DATA_USB [0]),
    .ADR3(\driver1/M_RPMF1 [0]),
    .O(\FT245/DATA_USB_mux0000 [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB<2>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [2]),
    .O(\FT245/DATA_USB<2>/DXMUX_2656 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB<2>/DYMUX  (
    .I(\FT245/DATA_USB_mux0000 [0]),
    .O(\FT245/DATA_USB<2>/DYMUX_2644 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<2>/CLKINV_2636 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB<2>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<2>/CEINV_2635 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y35" ))
  \FT245/USB_WR/DXMUX  (
    .I(\FT245/_mux0000 ),
    .O(\FT245/USB_WR/DXMUX_2694 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y35" ))
  \FT245/USB_WR/DYMUX  (
    .I(\FT245/DATA_USB_mux0000 [5]),
    .O(\FT245/USB_WR/DYMUX_2681 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y35" ))
  \FT245/USB_WR/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/USB_WR/CLKINV_2673 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y35" ))
  \FT245/USB_WR/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/USB_WR/CEINV_2672 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y29" ))
  \driver1/M_RPMF1<1>/DXMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [9]),
    .O(\driver1/M_RPMF1<1>/DXMUX_2714 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y29" ))
  \driver1/M_RPMF1<1>/DYMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [8]),
    .O(\driver1/M_RPMF1<1>/DYMUX_2708 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y29" ))
  \driver1/M_RPMF1<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/M_RPMF1<1>/CLKINV_2706 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y29" ))
  \driver1/M_RPMF1<1>/CEINV  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\driver1/M_RPMF1<1>/CEINV_2705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y28" ))
  \driver1/M_RPMF1<3>/DXMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [11]),
    .O(\driver1/M_RPMF1<3>/DXMUX_2734 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y28" ))
  \driver1/M_RPMF1<3>/DYMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [10]),
    .O(\driver1/M_RPMF1<3>/DYMUX_2728 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y28" ))
  \driver1/M_RPMF1<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/M_RPMF1<3>/CLKINV_2726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y28" ))
  \driver1/M_RPMF1<3>/CEINV  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\driver1/M_RPMF1<3>/CEINV_2725 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y29" ))
  \driver1/M_RPMF1<5>/DXMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [13]),
    .O(\driver1/M_RPMF1<5>/DXMUX_2754 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y29" ))
  \driver1/M_RPMF1<5>/DYMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [12]),
    .O(\driver1/M_RPMF1<5>/DYMUX_2748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y29" ))
  \driver1/M_RPMF1<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/M_RPMF1<5>/CLKINV_2746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y29" ))
  \driver1/M_RPMF1<5>/CEINV  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\driver1/M_RPMF1<5>/CEINV_2745 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y31" ))
  \driver1/M_RPMF1<7>/DXMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [15]),
    .O(\driver1/M_RPMF1<7>/DXMUX_2774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y31" ))
  \driver1/M_RPMF1<7>/DYMUX  (
    .I(\driver1/M_RPMTEMP_mult0000 [14]),
    .O(\driver1/M_RPMF1<7>/DYMUX_2768 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y31" ))
  \driver1/M_RPMF1<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/M_RPMF1<7>/CLKINV_2766 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y31" ))
  \driver1/M_RPMF1<7>/CEINV  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\driver1/M_RPMF1<7>/CEINV_2765 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y31" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_7  (
    .I(\driver1/M_RPMF1<7>/DXMUX_2774 ),
    .CE(\driver1/M_RPMF1<7>/CEINV_2765 ),
    .CLK(\driver1/M_RPMF1<7>/CLKINV_2766 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB_mux0000<3>_SW0_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR3(\driver1/M_RPMF1 [3]),
    .O(N18_pack_2)
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB<3>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [3]),
    .O(\FT245/DATA_USB<3>/DXMUX_2807 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB<3>/YUSED  (
    .I(N18_pack_2),
    .O(N18)
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<3>/CLKINV_2790 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB<3>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<3>/CEINV_2789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y38" ))
  \FT245/cnt_cmp_eq00007/XUSED  (
    .I(\FT245/cnt_cmp_eq00007_2845 ),
    .O(\FT245/cnt_cmp_eq00007_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X44Y32" ))
  \driver1/M_PID<5>/DYMUX  (
    .I(\driver1/M_PID<5>/BYINV_2854 ),
    .O(\driver1/M_PID<5>/DYMUX_2855 )
  );
  X_BUF #(
    .LOC ( "SLICE_X44Y32" ))
  \driver1/M_PID<5>/BYINV  (
    .I(1'b1),
    .O(\driver1/M_PID<5>/BYINV_2854 )
  );
  X_BUF #(
    .LOC ( "SLICE_X44Y32" ))
  \driver1/M_PID<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/M_PID<5>/CLKINV_2853 )
  );
  X_BUF #(
    .LOC ( "SLICE_X44Y32" ))
  \driver1/M_PID<5>/CEINV  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\driver1/M_PID<5>/CEINV_2852 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB_mux0000<4>_SW0_SW0  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR2(VCC),
    .ADR3(\driver1/M_RPMF1 [4]),
    .O(N16_pack_2)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB<4>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [4]),
    .O(\FT245/DATA_USB<4>/DXMUX_2888 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB<4>/YUSED  (
    .I(N16_pack_2),
    .O(N16)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<4>/CLKINV_2871 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB<4>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<4>/CEINV_2870 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y49" ))
  \driver1/CLK_TIMER/DYMUX  (
    .I(\driver1/CLK_TIMER/BYINV_2899 ),
    .O(\driver1/CLK_TIMER/DYMUX_2900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y49" ))
  \driver1/CLK_TIMER/BYINV  (
    .I(1'b1),
    .O(\driver1/CLK_TIMER/BYINV_2899 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y49" ))
  \driver1/CLK_TIMER/SRINV  (
    .I(\driver1/CLK_TIMER_not0001 ),
    .O(\driver1/CLK_TIMER/SRINV_2898 )
  );
  X_BUF #(
    .LOC ( "SLICE_X30Y49" ))
  \driver1/CLK_TIMER/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/CLK_TIMER/CLKINV_2897 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y36" ))
  \N12/XUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y36" ))
  \N12/YUSED  (
    .I(\FT245/N01 ),
    .O(\FT245/N01_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB<6>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [6]),
    .O(\FT245/DATA_USB<6>/DXMUX_3005 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB<6>/YUSED  (
    .I(N14_pack_2),
    .O(N14)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<6>/CLKINV_2988 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB<6>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<6>/CEINV_2987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y37" ))
  \FT245/cnt1_FSM_FFd3/DXMUX  (
    .I(\FT245/cnt1_FSM_FFd4_899 ),
    .O(\FT245/cnt1_FSM_FFd3/DXMUX_3025 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y37" ))
  \FT245/cnt1_FSM_FFd3/DYMUX  (
    .I(\FT245/cnt1_FSM_FFd3_914 ),
    .O(\FT245/cnt1_FSM_FFd3/DYMUX_3019 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y37" ))
  \FT245/cnt1_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt1_FSM_FFd3/CLKINV_3017 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y37" ))
  \FT245/cnt1_FSM_FFd3/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/cnt1_FSM_FFd3/CEINV_3016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y37" ))
  \FT245/cnt1_FSM_FFd5/DXMUX  (
    .I(\FT245/cnt1_FSM_FFd6_897 ),
    .O(\FT245/cnt1_FSM_FFd5/DXMUX_3045 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y37" ))
  \FT245/cnt1_FSM_FFd5/DYMUX  (
    .I(\FT245/cnt1_FSM_FFd5_915 ),
    .O(\FT245/cnt1_FSM_FFd5/DYMUX_3039 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y37" ))
  \FT245/cnt1_FSM_FFd5/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/cnt1_FSM_FFd5/CLKINV_3037 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y37" ))
  \FT245/cnt1_FSM_FFd5/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/cnt1_FSM_FFd5/CEINV_3036 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB<1>/DXMUX  (
    .I(\FT245/DATA_USB_mux0000 [1]),
    .O(\FT245/DATA_USB<1>/DXMUX_3078 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB<1>/YUSED  (
    .I(N8_pack_2),
    .O(N8)
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\FT245/DATA_USB<1>/CLKINV_3061 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB<1>/CEINV  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/DATA_USB<1>/CEINV_3060 )
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y20" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/oc_out  (
    .I(\driver1/PWM_1/oc_out/DYMUX_3090 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/oc_out/CLKINV_3087 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/PWM_1/oc_out/SRINV_3088 ),
    .O(\driver1/PWM_1/oc_out_911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y20" ))
  \driver1/PWM_1/oc_out/DYMUX  (
    .I(\driver1/PWM_1/oc_out/BYINV_3089 ),
    .O(\driver1/PWM_1/oc_out/DYMUX_3090 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y20" ))
  \driver1/PWM_1/oc_out/BYINV  (
    .I(1'b1),
    .O(\driver1/PWM_1/oc_out/BYINV_3089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y20" ))
  \driver1/PWM_1/oc_out/SRINV  (
    .I(\driver1/PWM_1/oc_out_cmp_ge0000 ),
    .O(\driver1/PWM_1/oc_out/SRINV_3088 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y20" ))
  \driver1/PWM_1/oc_out/CLKINV  (
    .I(clk_BUFGP),
    .O(\driver1/PWM_1/oc_out/CLKINV_3087 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y42" ))
  \FT245/cnt_cmp_eq000041/XUSED  (
    .I(\FT245/cnt_cmp_eq000041_3104 ),
    .O(\FT245/cnt_cmp_eq000041_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \FT245/cnt_cmp_eq000019/XUSED  (
    .I(\FT245/cnt_cmp_eq000019_3116 ),
    .O(\FT245/cnt_cmp_eq000019_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y40" ))
  \FT245/cnt_cmp_eq000054/XUSED  (
    .I(\FT245/cnt_cmp_eq000054_3128 ),
    .O(\FT245/cnt_cmp_eq000054_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \FT245/cnt1_not0001/XUSED  (
    .I(\FT245/cnt1_not0001 ),
    .O(\FT245/cnt1_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \FT245/cnt1_not0001/YUSED  (
    .I(\FT245/cnt_cmp_eq0000_pack_1 ),
    .O(\FT245/cnt_cmp_eq0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X45Y30" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_4  (
    .I(\driver1/PWM_1/Cnt_1<4>/DXMUX_1059 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<4>/CLKINV_1022 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y29" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_2  (
    .I(\driver1/PWM_1/Cnt_1<2>/DXMUX_1011 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<2>/CLKINV_974 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y50" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_13  (
    .I(\driver1/TIMER_COUNT<12>/DYMUX_2075 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<12>/CLKINV_2053 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<12>/SRINV_2054 ),
    .O(\driver1/TIMER_COUNT [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y49" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_10  (
    .I(\driver1/TIMER_COUNT<10>/DXMUX_2040 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<10>/CLKINV_2001 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<10>/SRINV_2002 ),
    .O(\driver1/TIMER_COUNT [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y49" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_11  (
    .I(\driver1/TIMER_COUNT<10>/DYMUX_2023 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<10>/CLKINV_2001 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<10>/SRINV_2002 ),
    .O(\driver1/TIMER_COUNT [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y48" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_8  (
    .I(\driver1/TIMER_COUNT<8>/DXMUX_1988 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<8>/CLKINV_1949 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<8>/SRINV_1950 ),
    .O(\driver1/TIMER_COUNT [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y48" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_9  (
    .I(\driver1/TIMER_COUNT<8>/DYMUX_1971 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<8>/CLKINV_1949 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<8>/SRINV_1950 ),
    .O(\driver1/TIMER_COUNT [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y51" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_15  (
    .I(\driver1/TIMER_COUNT<14>/DYMUX_2127 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<14>/CLKINV_2105 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<14>/SRINV_2106 ),
    .O(\driver1/TIMER_COUNT [15])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X51Y28" ))
  \FT245/DATA_USB_mux0000<2>1  (
    .ADR0(\FT245/N11 ),
    .ADR1(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR2(\FT245/DATA_USB [2]),
    .ADR3(\driver1/M_RPMF1 [2]),
    .O(\FT245/DATA_USB_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y30" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_5  (
    .I(\driver1/PWM_1/Cnt_1<4>/DYMUX_1043 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<4>/CLKINV_1022 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y28" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_1  (
    .I(\driver1/PWM_1/Cnt_1<0>/DYMUX_944 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<0>/CLKINV_928 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h00FF ),
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Mcount_Cnt_1_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/PWM_1/Cnt_1 [0]),
    .O(\driver1/PWM_1/Mcount_Cnt_1_lut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y28" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_0  (
    .I(\driver1/PWM_1/Cnt_1<0>/DXMUX_963 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<0>/CLKINV_928 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y29" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_3  (
    .I(\driver1/PWM_1/Cnt_1<2>/DYMUX_995 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<2>/CLKINV_974 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y31" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_7  (
    .I(\driver1/PWM_1/Cnt_1<6>/DYMUX_1091 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<6>/CLKINV_1070 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y31" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_6  (
    .I(\driver1/PWM_1/Cnt_1<6>/DXMUX_1107 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<6>/CLKINV_1070 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y32" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_9  (
    .I(\driver1/PWM_1/Cnt_1<8>/DYMUX_1139 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<8>/CLKINV_1118 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [9])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y32" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_8  (
    .I(\driver1/PWM_1/Cnt_1<8>/DXMUX_1155 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<8>/CLKINV_1118 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X45Y33" ))
  \driver1/PWM_1/Cnt_1<10>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/PWM_1/Cnt_1 [10]),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<10>_rt_1171 )
  );
  X_FF #(
    .LOC ( "SLICE_X45Y33" ),
    .INIT ( 1'b0 ))
  \driver1/PWM_1/Cnt_1_10  (
    .I(\driver1/PWM_1/Cnt_1<10>/DXMUX_1176 ),
    .CE(VCC),
    .CLK(\driver1/PWM_1/Cnt_1<10>/CLKINV_1163 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/PWM_1/Cnt_1 [10])
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_lut<1>  (
    .ADR0(\driver1/TIMER_COUNT [7]),
    .ADR1(\driver1/TIMER_COUNT [6]),
    .ADR2(\driver1/TIMER_COUNT [5]),
    .ADR3(\driver1/TIMER_COUNT [3]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X29Y46" ))
  \driver1/TIMER_COUNT<4>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/TIMER_COUNT [4]),
    .O(\driver1/TIMER_COUNT<4>_rt_1198 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_lut<3>  (
    .ADR0(\driver1/TIMER_COUNT [12]),
    .ADR1(\driver1/TIMER_COUNT [0]),
    .ADR2(\driver1/TIMER_COUNT [13]),
    .ADR3(\driver1/TIMER_COUNT [11]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X29Y47" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_lut<2>  (
    .ADR0(\driver1/TIMER_COUNT [1]),
    .ADR1(\driver1/TIMER_COUNT [8]),
    .ADR2(\driver1/TIMER_COUNT [9]),
    .ADR3(\driver1/TIMER_COUNT [10]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X29Y48" ))
  \driver1/TIMER_COUNT_cmp_eq0000_wg_lut<4>  (
    .ADR0(\driver1/TIMER_COUNT [16]),
    .ADR1(\driver1/TIMER_COUNT [2]),
    .ADR2(\driver1/TIMER_COUNT [15]),
    .ADR3(\driver1/TIMER_COUNT [14]),
    .O(\driver1/TIMER_COUNT_cmp_eq0000_wg_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_lut<1>  (
    .ADR0(\driver1/TIMER_COUNT [4]),
    .ADR1(\driver1/TIMER_COUNT [6]),
    .ADR2(\driver1/TIMER_COUNT [8]),
    .ADR3(\driver1/TIMER_COUNT [7]),
    .O(\driver1/CLK_TIMER_not0001_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0F0F ),
    .LOC ( "SLICE_X30Y46" ))
  \driver1/CLK_TIMER_not0001_wg_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/TIMER_COUNT [5]),
    .ADR3(VCC),
    .O(\driver1/CLK_TIMER_not0001_wg_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_lut<3>  (
    .ADR0(\driver1/TIMER_COUNT [12]),
    .ADR1(\driver1/TIMER_COUNT [13]),
    .ADR2(\driver1/TIMER_COUNT [14]),
    .ADR3(\driver1/TIMER_COUNT [1]),
    .O(\driver1/CLK_TIMER_not0001_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X30Y47" ))
  \driver1/CLK_TIMER_not0001_wg_lut<2>  (
    .ADR0(\driver1/TIMER_COUNT [11]),
    .ADR1(\driver1/TIMER_COUNT [9]),
    .ADR2(\driver1/TIMER_COUNT [10]),
    .ADR3(\driver1/TIMER_COUNT [2]),
    .O(\driver1/CLK_TIMER_not0001_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X30Y48" ))
  \driver1/CLK_TIMER_not0001_wg_lut<4>  (
    .ADR0(\driver1/TIMER_COUNT [15]),
    .ADR1(\driver1/TIMER_COUNT [0]),
    .ADR2(\driver1/TIMER_COUNT [16]),
    .ADR3(\driver1/TIMER_COUNT [3]),
    .O(\driver1/CLK_TIMER_not0001_wg_lut [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y36" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_1  (
    .I(\FT245/cnt<0>/DYMUX_1353 ),
    .CE(VCC),
    .CLK(\FT245/cnt<0>/CLKINV_1336 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<0>/SRINV_1337 ),
    .O(\FT245/cnt [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ),
    .LOC ( "SLICE_X51Y36" ))
  \FT245/Mcount_cnt_lut<0>_INV_0  (
    .ADR0(\FT245/cnt [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/Mcount_cnt_lut [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y36" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_0  (
    .I(\FT245/cnt<0>/DXMUX_1373 ),
    .CE(VCC),
    .CLK(\FT245/cnt<0>/CLKINV_1336 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<0>/SRINV_1337 ),
    .O(\FT245/cnt [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_3  (
    .I(\FT245/cnt<2>/DYMUX_1408 ),
    .CE(VCC),
    .CLK(\FT245/cnt<2>/CLKINV_1386 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<2>/SRINV_1387 ),
    .O(\FT245/cnt [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_2  (
    .I(\FT245/cnt<2>/DXMUX_1425 ),
    .CE(VCC),
    .CLK(\FT245/cnt<2>/CLKINV_1386 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<2>/SRINV_1387 ),
    .O(\FT245/cnt [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y38" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_5  (
    .I(\FT245/cnt<4>/DYMUX_1460 ),
    .CE(VCC),
    .CLK(\FT245/cnt<4>/CLKINV_1438 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<4>/SRINV_1439 ),
    .O(\FT245/cnt [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y38" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_4  (
    .I(\FT245/cnt<4>/DXMUX_1477 ),
    .CE(VCC),
    .CLK(\FT245/cnt<4>/CLKINV_1438 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<4>/SRINV_1439 ),
    .O(\FT245/cnt [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y39" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_7  (
    .I(\FT245/cnt<6>/DYMUX_1512 ),
    .CE(VCC),
    .CLK(\FT245/cnt<6>/CLKINV_1490 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<6>/SRINV_1491 ),
    .O(\FT245/cnt [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y39" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_6  (
    .I(\FT245/cnt<6>/DXMUX_1529 ),
    .CE(VCC),
    .CLK(\FT245/cnt<6>/CLKINV_1490 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<6>/SRINV_1491 ),
    .O(\FT245/cnt [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y40" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_9  (
    .I(\FT245/cnt<8>/DYMUX_1564 ),
    .CE(VCC),
    .CLK(\FT245/cnt<8>/CLKINV_1542 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<8>/SRINV_1543 ),
    .O(\FT245/cnt [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y40" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_8  (
    .I(\FT245/cnt<8>/DXMUX_1581 ),
    .CE(VCC),
    .CLK(\FT245/cnt<8>/CLKINV_1542 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<8>/SRINV_1543 ),
    .O(\FT245/cnt [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_11  (
    .I(\FT245/cnt<10>/DYMUX_1616 ),
    .CE(VCC),
    .CLK(\FT245/cnt<10>/CLKINV_1594 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<10>/SRINV_1595 ),
    .O(\FT245/cnt [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_10  (
    .I(\FT245/cnt<10>/DXMUX_1633 ),
    .CE(VCC),
    .CLK(\FT245/cnt<10>/CLKINV_1594 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<10>/SRINV_1595 ),
    .O(\FT245/cnt [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y42" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_13  (
    .I(\FT245/cnt<12>/DYMUX_1668 ),
    .CE(VCC),
    .CLK(\FT245/cnt<12>/CLKINV_1646 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<12>/SRINV_1647 ),
    .O(\FT245/cnt [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y42" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_12  (
    .I(\FT245/cnt<12>/DXMUX_1685 ),
    .CE(VCC),
    .CLK(\FT245/cnt<12>/CLKINV_1646 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<12>/SRINV_1647 ),
    .O(\FT245/cnt [12])
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<15>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt [15]),
    .ADR3(VCC),
    .O(\FT245/cnt<15>_rt_1706 )
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y43" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_15  (
    .I(\FT245/cnt<14>/DYMUX_1711 ),
    .CE(VCC),
    .CLK(\FT245/cnt<14>/CLKINV_1697 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<14>/SRINV_1698 ),
    .O(\FT245/cnt [15])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y43" ),
    .INIT ( 1'b0 ))
  \FT245/cnt_14  (
    .I(\FT245/cnt<14>/DXMUX_1730 ),
    .CE(VCC),
    .CLK(\FT245/cnt<14>/CLKINV_1697 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\FT245/cnt<14>/SRINV_1698 ),
    .O(\FT245/cnt [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y44" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_1  (
    .I(\driver1/TIMER_COUNT<0>/DYMUX_1760 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<0>/CLKINV_1743 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<0>/SRINV_1744 ),
    .O(\driver1/TIMER_COUNT [1])
  );
  X_LUT4 #(
    .INIT ( 16'h3333 ),
    .LOC ( "SLICE_X28Y44" ))
  \driver1/Mcount_TIMER_COUNT_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(\driver1/TIMER_COUNT [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/Mcount_TIMER_COUNT_lut [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y51" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_14  (
    .I(\driver1/TIMER_COUNT<14>/DXMUX_2144 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<14>/CLKINV_2105 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<14>/SRINV_2106 ),
    .O(\driver1/TIMER_COUNT [14])
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X28Y52" ))
  \driver1/TIMER_COUNT<16>_rt  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/TIMER_COUNT [16]),
    .O(\driver1/TIMER_COUNT<16>_rt_2163 )
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y52" ),
    .INIT ( 1'b0 ))
  \driver1/TIMER_COUNT_16  (
    .I(\driver1/TIMER_COUNT<16>/DXMUX_2168 ),
    .CE(VCC),
    .CLK(\driver1/TIMER_COUNT<16>/CLKINV_2154 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/TIMER_COUNT<16>/SRINV_2155 ),
    .O(\driver1/TIMER_COUNT [16])
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \CLK_PAR/IFF/IMUX  (
    .I(\CLK_PAR/INBUF ),
    .O(CLK_PAR_IBUF_847)
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \HALL1_COUNT<0>/IFF/IMUX  (
    .I(\HALL1_COUNT<0>/INBUF ),
    .O(HALL1_COUNT_0_IBUF_852)
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  \PARITY_IN/IFF/IMUX  (
    .I(\PARITY_IN/INBUF ),
    .O(PARITY_IN_IBUF_855)
  );
  X_BUF #(
    .LOC ( "PAD137" ))
  \HALL1_COUNT<3>/IFF/IMUX  (
    .I(\HALL1_COUNT<3>/INBUF ),
    .O(HALL1_COUNT_3_IBUF_856)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \HALL11/IFF/IMUX  (
    .I(\HALL11/INBUF ),
    .O(HALL11_IBUF_849)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \HALL1_COUNT<4>/IFF/IMUX  (
    .I(\HALL1_COUNT<4>/INBUF ),
    .O(HALL1_COUNT_4_IBUF_858)
  );
  X_BUF #(
    .LOC ( "PAD119" ))
  \HALL21/IFF/IMUX  (
    .I(\HALL21/INBUF ),
    .O(HALL21_IBUF_850)
  );
  X_BUF #(
    .LOC ( "PAD174" ))
  \MOTOR_NUM<0>/IFF/IMUX  (
    .I(\MOTOR_NUM<0>/INBUF ),
    .O(\MOTOR_NUM<0>_IBUF_861 )
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \MOTOR_NUM<1>/IFF/IMUX  (
    .I(\MOTOR_NUM<1>/INBUF ),
    .O(\MOTOR_NUM<1>_IBUF_864 )
  );
  X_BUF #(
    .LOC ( "PAD88" ))
  \TXE/IFF/IMUX  (
    .I(\TXE/INBUF ),
    .O(TXE_IBUF_869)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \RPM_IN<1>/IFF/IMUX  (
    .I(\RPM_IN<1>/INBUF ),
    .O(\RPM_IN<1>_IBUF_876 )
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \RPM_IN<2>/IFF/IMUX  (
    .I(\RPM_IN<2>/INBUF ),
    .O(\RPM_IN<2>_IBUF_878 )
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \RPM_IN<3>/IFF/IMUX  (
    .I(\RPM_IN<3>/INBUF ),
    .O(\RPM_IN<3>_IBUF_879 )
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  \RPM_IN<4>/IFF/IMUX  (
    .I(\RPM_IN<4>/INBUF ),
    .O(\RPM_IN<4>_IBUF_880 )
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \RPM_IN<7>/IFF/IMUX  (
    .I(\RPM_IN<7>/INBUF ),
    .O(\RPM_IN<7>_IBUF_883 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F1 ),
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB_mux0000<0>1  (
    .ADR0(\FT245/cnt1_FSM_FFd4_899 ),
    .ADR1(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR2(N12_0),
    .ADR3(\FT245/cnt1_FSM_FFd6_897 ),
    .O(\FT245/N11_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y28" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_0  (
    .I(\FT245/DATA_USB<2>/DYMUX_2644 ),
    .CE(\FT245/DATA_USB<2>/CEINV_2635 ),
    .CLK(\FT245/DATA_USB<2>/CLKINV_2636 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [0])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X51Y34" ))
  \FT245/DATA_USB_mux0000<7>1  (
    .ADR0(\FT245/DATA_USB [7]),
    .ADR1(\driver1/M_RPMF1 [7]),
    .ADR2(\FT245/N11 ),
    .ADR3(\FT245/cnt1_FSM_FFd6_897 ),
    .O(\FT245/DATA_USB_mux0000 [7])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y34" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_7  (
    .I(\FT245/DATA_USB<7>/DXMUX_2586 ),
    .CE(\FT245/DATA_USB<7>/CEINV_2570 ),
    .CLK(\FT245/DATA_USB<7>/CLKINV_2571 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [7])
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X50Y35" ))
  \FT245/Mshreg_cnt1_FSM_FFd6  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\FT245/cnt1_FSM_FFd6/DIG_MUX_2607 ),
    .CE(\FT245/cnt1_FSM_FFd6/WSG ),
    .CLK(\FT245/cnt1_FSM_FFd6/CLKINV_2605 ),
    .Q(\FT245/Mshreg_cnt1_FSM_FFd6_2615 ),
    .Q15(\NLW_FT245/Mshreg_cnt1_FSM_FFd6_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y35" ),
    .INIT ( 1'b1 ))
  \FT245/cnt1_FSM_FFd6  (
    .I(\FT245/cnt1_FSM_FFd6/DYMUX_2618 ),
    .CE(\FT245/cnt1_FSM_FFd6/CEINV_2604 ),
    .CLK(\FT245/cnt1_FSM_FFd6/CLKINV_2605 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/cnt1_FSM_FFd6_897 )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y28" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_2  (
    .I(\FT245/DATA_USB<2>/DXMUX_2656 ),
    .CE(\FT245/DATA_USB<2>/CEINV_2635 ),
    .CLK(\FT245/DATA_USB<2>/CLKINV_2636 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [2])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y35" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_5  (
    .I(\FT245/USB_WR/DYMUX_2681 ),
    .CE(\FT245/USB_WR/CEINV_2672 ),
    .CLK(\FT245/USB_WR/CLKINV_2673 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [5])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X51Y35" ))
  \FT245/DATA_USB_mux0000<5>1  (
    .ADR0(\driver1/M_RPMF1 [5]),
    .ADR1(\FT245/DATA_USB [5]),
    .ADR2(\FT245/N11 ),
    .ADR3(\FT245/cnt1_FSM_FFd6_897 ),
    .O(\FT245/DATA_USB_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFFEE ),
    .LOC ( "SLICE_X51Y35" ))
  \FT245/cnt1_FSM_Out51  (
    .ADR0(\FT245/cnt1_FSM_FFd4_899 ),
    .ADR1(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR2(VCC),
    .ADR3(\FT245/cnt1_FSM_FFd6_897 ),
    .O(\FT245/_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y35" ),
    .INIT ( 1'b0 ))
  \FT245/USB_WR  (
    .I(\FT245/USB_WR/DXMUX_2694 ),
    .CE(\FT245/USB_WR/CEINV_2672 ),
    .CLK(\FT245/USB_WR/CLKINV_2673 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/USB_WR_857 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y29" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_0  (
    .I(\driver1/M_RPMF1<1>/DYMUX_2708 ),
    .CE(\driver1/M_RPMF1<1>/CEINV_2705 ),
    .CLK(\driver1/M_RPMF1<1>/CLKINV_2706 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [0])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y29" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_1  (
    .I(\driver1/M_RPMF1<1>/DXMUX_2714 ),
    .CE(\driver1/M_RPMF1<1>/CEINV_2705 ),
    .CLK(\driver1/M_RPMF1<1>/CLKINV_2706 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ),
    .LOC ( "SLICE_X50Y32" ))
  \FT245/DATA_USB_mux0000<3>  (
    .ADR0(\FT245/DATA_USB [3]),
    .ADR1(\FT245/N01_0 ),
    .ADR2(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR3(N18),
    .O(\FT245/DATA_USB_mux0000 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y28" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_2  (
    .I(\driver1/M_RPMF1<3>/DYMUX_2728 ),
    .CE(\driver1/M_RPMF1<3>/CEINV_2725 ),
    .CLK(\driver1/M_RPMF1<3>/CLKINV_2726 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y28" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_3  (
    .I(\driver1/M_RPMF1<3>/DXMUX_2734 ),
    .CE(\driver1/M_RPMF1<3>/CEINV_2725 ),
    .CLK(\driver1/M_RPMF1<3>/CLKINV_2726 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [3])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y29" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_4  (
    .I(\driver1/M_RPMF1<5>/DYMUX_2748 ),
    .CE(\driver1/M_RPMF1<5>/CEINV_2745 ),
    .CLK(\driver1/M_RPMF1<5>/CLKINV_2746 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y29" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_5  (
    .I(\driver1/M_RPMF1<5>/DXMUX_2754 ),
    .CE(\driver1/M_RPMF1<5>/CEINV_2745 ),
    .CLK(\driver1/M_RPMF1<5>/CLKINV_2746 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y31" ),
    .INIT ( 1'b0 ))
  \driver1/M_RPMF1_6  (
    .I(\driver1/M_RPMF1<7>/DYMUX_2768 ),
    .CE(\driver1/M_RPMF1<7>/CEINV_2765 ),
    .CLK(\driver1/M_RPMF1<7>/CLKINV_2766 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_RPMF1 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y32" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_3  (
    .I(\FT245/DATA_USB<3>/DXMUX_2807 ),
    .CE(\FT245/DATA_USB<3>/CEINV_2789 ),
    .CLK(\FT245/DATA_USB<3>/CLKINV_2790 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [3])
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X54Y10" ))
  \driver1/M1p_or00001  (
    .ADR0(HALL31_IBUF_851),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(HALL11_IBUF_849),
    .O(M1p1_OBUF_2825)
  );
  X_LUT4 #(
    .INIT ( 16'h5000 ),
    .LOC ( "SLICE_X54Y10" ))
  \driver1/M1n1  (
    .ADR0(HALL31_IBUF_851),
    .ADR1(VCC),
    .ADR2(\driver1/PWM_1/oc_out_911 ),
    .ADR3(HALL11_IBUF_849),
    .O(M1n1_OBUF_2833)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X50Y38" ))
  \FT245/cnt_cmp_eq00007  (
    .ADR0(\FT245/cnt [0]),
    .ADR1(\FT245/cnt [3]),
    .ADR2(\FT245/cnt [2]),
    .ADR3(\FT245/cnt [1]),
    .O(\FT245/cnt_cmp_eq00007_2845 )
  );
  X_FF #(
    .LOC ( "SLICE_X44Y32" ),
    .INIT ( 1'b0 ))
  \driver1/M_PID_5  (
    .I(\driver1/M_PID<5>/DYMUX_2855 ),
    .CE(\driver1/M_PID<5>/CEINV_2852 ),
    .CLK(\driver1/M_PID<5>/CLKINV_2853 ),
    .SET(GND),
    .RST(GND),
    .O(\driver1/M_PID [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFFEC ),
    .LOC ( "SLICE_X51Y33" ))
  \FT245/DATA_USB_mux0000<4>  (
    .ADR0(\FT245/DATA_USB [4]),
    .ADR1(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR2(\FT245/N01_0 ),
    .ADR3(N16),
    .O(\FT245/DATA_USB_mux0000 [4])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y33" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_4  (
    .I(\FT245/DATA_USB<4>/DXMUX_2888 ),
    .CE(\FT245/DATA_USB<4>/CEINV_2870 ),
    .CLK(\FT245/DATA_USB<4>/CLKINV_2871 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X30Y49" ),
    .INIT ( 1'b0 ))
  \driver1/CLK_TIMER  (
    .I(\driver1/CLK_TIMER/DYMUX_2900 ),
    .CE(VCC),
    .CLK(\driver1/CLK_TIMER/CLKINV_2897 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\driver1/CLK_TIMER/SRINV_2898 ),
    .O(\driver1/CLK_TIMER_848 )
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X55Y11" ))
  \driver1/M2p_or00001  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(HALL21_IBUF_850),
    .ADR3(HALL31_IBUF_851),
    .O(M2p1_OBUF_2918)
  );
  X_LUT4 #(
    .INIT ( 16'h0C00 ),
    .LOC ( "SLICE_X55Y11" ))
  \driver1/M2n1  (
    .ADR0(VCC),
    .ADR1(\driver1/PWM_1/oc_out_911 ),
    .ADR2(HALL21_IBUF_850),
    .ADR3(HALL31_IBUF_851),
    .O(M2n1_OBUF_2926)
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X55Y12" ))
  \driver1/M3p_or00001  (
    .ADR0(VCC),
    .ADR1(HALL11_IBUF_849),
    .ADR2(VCC),
    .ADR3(HALL21_IBUF_850),
    .O(M3p1_OBUF_2942)
  );
  X_LUT4 #(
    .INIT ( 16'h3000 ),
    .LOC ( "SLICE_X55Y12" ))
  \driver1/M3n1  (
    .ADR0(VCC),
    .ADR1(HALL11_IBUF_849),
    .ADR2(\driver1/PWM_1/oc_out_911 ),
    .ADR3(HALL21_IBUF_850),
    .O(M3n1_OBUF_2950)
  );
  X_LUT4 #(
    .INIT ( 16'hEEEF ),
    .LOC ( "SLICE_X50Y36" ))
  \FT245/DATA_USB_mux0000<1>11  (
    .ADR0(\FT245/cnt1_FSM_FFd3_914 ),
    .ADR1(\FT245/cnt1_FSM_FFd5_915 ),
    .ADR2(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR3(\FT245/cnt1_FSM_FFd4_899 ),
    .O(\FT245/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ),
    .LOC ( "SLICE_X50Y36" ))
  \FT245/DATA_USB_mux0000<0>1_SW0  (
    .ADR0(\FT245/cnt1_FSM_FFd3_914 ),
    .ADR1(\FT245/cnt1_FSM_FFd5_915 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB_mux0000<6>_SW0_SW0  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR2(VCC),
    .ADR3(\driver1/M_RPMF1 [6]),
    .O(N14_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFC ),
    .LOC ( "SLICE_X51Y32" ))
  \FT245/DATA_USB_mux0000<6>  (
    .ADR0(\FT245/N01_0 ),
    .ADR1(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR2(N14),
    .ADR3(\FT245/DATA_USB [6]),
    .O(\FT245/DATA_USB_mux0000 [6])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y32" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_6  (
    .I(\FT245/DATA_USB<6>/DXMUX_3005 ),
    .CE(\FT245/DATA_USB<6>/CEINV_2987 ),
    .CLK(\FT245/DATA_USB<6>/CLKINV_2988 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [6])
  );
  X_FF #(
    .LOC ( "SLICE_X49Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt1_FSM_FFd3  (
    .I(\FT245/cnt1_FSM_FFd3/DXMUX_3025 ),
    .CE(\FT245/cnt1_FSM_FFd3/CEINV_3016 ),
    .CLK(\FT245/cnt1_FSM_FFd3/CLKINV_3017 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/cnt1_FSM_FFd3_914 )
  );
  X_FF #(
    .LOC ( "SLICE_X49Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt1_FSM_FFd2  (
    .I(\FT245/cnt1_FSM_FFd3/DYMUX_3019 ),
    .CE(\FT245/cnt1_FSM_FFd3/CEINV_3016 ),
    .CLK(\FT245/cnt1_FSM_FFd3/CLKINV_3017 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/cnt1_FSM_FFd2_900 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt1_FSM_FFd4  (
    .I(\FT245/cnt1_FSM_FFd5/DYMUX_3039 ),
    .CE(\FT245/cnt1_FSM_FFd5/CEINV_3036 ),
    .CLK(\FT245/cnt1_FSM_FFd5/CLKINV_3037 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/cnt1_FSM_FFd4_899 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y37" ),
    .INIT ( 1'b0 ))
  \FT245/cnt1_FSM_FFd5  (
    .I(\FT245/cnt1_FSM_FFd5/DXMUX_3045 ),
    .CE(\FT245/cnt1_FSM_FFd5/CEINV_3036 ),
    .CLK(\FT245/cnt1_FSM_FFd5/CLKINV_3037 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/cnt1_FSM_FFd5_915 )
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB_mux0000<1>_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt1_FSM_FFd6_897 ),
    .ADR3(\driver1/M_RPMF1 [1]),
    .O(N8_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ),
    .LOC ( "SLICE_X50Y33" ))
  \FT245/DATA_USB_mux0000<1>  (
    .ADR0(N8),
    .ADR1(\FT245/cnt1_FSM_FFd2_900 ),
    .ADR2(\FT245/N01_0 ),
    .ADR3(\FT245/DATA_USB [1]),
    .O(\FT245/DATA_USB_mux0000 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y33" ),
    .INIT ( 1'b0 ))
  \FT245/DATA_USB_1  (
    .I(\FT245/DATA_USB<1>/DXMUX_3078 ),
    .CE(\FT245/DATA_USB<1>/CEINV_3060 ),
    .CLK(\FT245/DATA_USB<1>/CLKINV_3061 ),
    .SET(GND),
    .RST(GND),
    .O(\FT245/DATA_USB [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X50Y42" ))
  \FT245/cnt_cmp_eq000041  (
    .ADR0(\FT245/cnt [12]),
    .ADR1(\FT245/cnt [15]),
    .ADR2(\FT245/cnt [13]),
    .ADR3(\FT245/cnt [14]),
    .O(\FT245/cnt_cmp_eq000041_3104 )
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X50Y41" ))
  \FT245/cnt_cmp_eq000019  (
    .ADR0(\FT245/cnt [6]),
    .ADR1(\FT245/cnt [7]),
    .ADR2(\FT245/cnt [4]),
    .ADR3(\FT245/cnt [5]),
    .O(\FT245/cnt_cmp_eq000019_3116 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X50Y40" ))
  \FT245/cnt_cmp_eq000054  (
    .ADR0(\FT245/cnt [10]),
    .ADR1(\FT245/cnt [9]),
    .ADR2(\FT245/cnt [11]),
    .ADR3(\FT245/cnt [8]),
    .O(\FT245/cnt_cmp_eq000054_3128 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X50Y39" ))
  \FT245/cnt_cmp_eq000068  (
    .ADR0(\FT245/cnt_cmp_eq000041_0 ),
    .ADR1(\FT245/cnt_cmp_eq000054_0 ),
    .ADR2(\FT245/cnt_cmp_eq000019_0 ),
    .ADR3(\FT245/cnt_cmp_eq00007_0 ),
    .O(\FT245/cnt_cmp_eq0000_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X50Y39" ))
  \FT245/cnt1_not00011  (
    .ADR0(TXE_IBUF_869),
    .ADR1(VCC),
    .ADR2(\FT245/cnt_cmp_eq0000 ),
    .ADR3(VCC),
    .O(\FT245/cnt1_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X45Y28" ))
  \driver1/PWM_1/Cnt_1<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/PWM_1/Cnt_1 [1]),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/PWM_1/Cnt_1 [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X45Y29" ))
  \driver1/PWM_1/Cnt_1<2>/G/X_LUT4  (
    .ADR0(\driver1/PWM_1/Cnt_1 [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/F/X_LUT4  (
    .ADR0(\driver1/PWM_1/Cnt_1 [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X45Y30" ))
  \driver1/PWM_1/Cnt_1<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/PWM_1/Cnt_1 [5]),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/PWM_1/Cnt_1 [6]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X45Y31" ))
  \driver1/PWM_1/Cnt_1<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/PWM_1/Cnt_1 [7]),
    .O(\driver1/PWM_1/Cnt_1<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/PWM_1/Cnt_1 [8]),
    .O(\driver1/PWM_1/Cnt_1<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X45Y32" ))
  \driver1/PWM_1/Cnt_1<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/PWM_1/Cnt_1 [9]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/PWM_1/Cnt_1<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y36" ))
  \FT245/cnt<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\FT245/cnt [2]),
    .O(\FT245/cnt<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y37" ))
  \FT245/cnt<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\FT245/cnt [3]),
    .O(\FT245/cnt<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt [4]),
    .ADR3(VCC),
    .O(\FT245/cnt<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y38" ))
  \FT245/cnt<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\FT245/cnt [6]),
    .O(\FT245/cnt<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y39" ))
  \FT245/cnt<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt [7]),
    .ADR3(VCC),
    .O(\FT245/cnt<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/F/X_LUT4  (
    .ADR0(\FT245/cnt [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X51Y40" ))
  \FT245/cnt<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\FT245/cnt [9]),
    .ADR3(VCC),
    .O(\FT245/cnt<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\FT245/cnt [10]),
    .O(\FT245/cnt<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y41" ))
  \FT245/cnt<10>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt [11]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\FT245/cnt [12]),
    .O(\FT245/cnt<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X51Y42" ))
  \FT245/cnt<12>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\FT245/cnt [13]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X51Y43" ))
  \FT245/cnt<14>/F/X_LUT4  (
    .ADR0(\FT245/cnt [14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\FT245/cnt<14>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X28Y44" ))
  \driver1/TIMER_COUNT<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/TIMER_COUNT [1]),
    .O(\driver1/TIMER_COUNT<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/F/X_LUT4  (
    .ADR0(\driver1/TIMER_COUNT [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X28Y45" ))
  \driver1/TIMER_COUNT<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/TIMER_COUNT [3]),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/F/X_LUT4  (
    .ADR0(\driver1/TIMER_COUNT [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X28Y46" ))
  \driver1/TIMER_COUNT<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/TIMER_COUNT [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/TIMER_COUNT [6]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X28Y47" ))
  \driver1/TIMER_COUNT<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/TIMER_COUNT [7]),
    .O(\driver1/TIMER_COUNT<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/F/X_LUT4  (
    .ADR0(\driver1/TIMER_COUNT [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X28Y48" ))
  \driver1/TIMER_COUNT<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/TIMER_COUNT [9]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/TIMER_COUNT [10]),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X28Y49" ))
  \driver1/TIMER_COUNT<10>/G/X_LUT4  (
    .ADR0(\driver1/TIMER_COUNT [11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\driver1/TIMER_COUNT [12]),
    .O(\driver1/TIMER_COUNT<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X28Y50" ))
  \driver1/TIMER_COUNT<12>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\driver1/TIMER_COUNT [13]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/F/X_LUT4  (
    .ADR0(\driver1/TIMER_COUNT [14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<14>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X28Y51" ))
  \driver1/TIMER_COUNT<14>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\driver1/TIMER_COUNT [15]),
    .ADR3(VCC),
    .O(\driver1/TIMER_COUNT<14>/G )
  );
  X_BUF #(
    .LOC ( "PAD3" ))
  \LED<0>/OUTPUT/OFF/OMUX  (
    .I(\driver1/CLK_TIMER_848 ),
    .O(\LED<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \LED<1>/OUTPUT/OFF/OMUX  (
    .I(HALL11_IBUF_849),
    .O(\LED<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD206" ))
  \LED<2>/OUTPUT/OFF/OMUX  (
    .I(HALL21_IBUF_850),
    .O(\LED<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \LED<3>/OUTPUT/OFF/OMUX  (
    .I(HALL31_IBUF_851),
    .O(\LED<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \USB_WR/OUTPUT/OFF/OMUX  (
    .I(\FT245/USB_WR_857 ),
    .O(\USB_WR/O )
  );
  X_BUF #(
    .LOC ( "PAD118" ))
  \DATA_USB<0>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [0]),
    .O(\DATA_USB<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD115" ))
  \DATA_USB<1>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [1]),
    .O(\DATA_USB<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD133" ))
  \M1n1/OUTPUT/OFF/OMUX  (
    .I(M1n1_OBUF_2833),
    .O(\M1n1/O )
  );
  X_BUF #(
    .LOC ( "PAD116" ))
  \DATA_USB<2>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [2]),
    .O(\DATA_USB<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD101" ))
  \DATA_USB<3>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [3]),
    .O(\DATA_USB<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD124" ))
  \M2n1/OUTPUT/OFF/OMUX  (
    .I(M2n1_OBUF_2926),
    .O(\M2n1/O )
  );
  X_BUF #(
    .LOC ( "PAD134" ))
  \M1p1/OUTPUT/OFF/OMUX  (
    .I(M1p1_OBUF_2825),
    .O(\M1p1/O )
  );
  X_BUF #(
    .LOC ( "PAD117" ))
  \DATA_USB<4>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [4]),
    .O(\DATA_USB<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD103" ))
  \DATA_USB<5>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [5]),
    .O(\DATA_USB<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD122" ))
  \M3n1/OUTPUT/OFF/OMUX  (
    .I(M3n1_OBUF_2950),
    .O(\M3n1/O )
  );
  X_BUF #(
    .LOC ( "PAD125" ))
  \M2p1/OUTPUT/OFF/OMUX  (
    .I(M2p1_OBUF_2918),
    .O(\M2p1/O )
  );
  X_BUF #(
    .LOC ( "PAD102" ))
  \DATA_USB<6>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [6]),
    .O(\DATA_USB<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD104" ))
  \DATA_USB<7>/OUTPUT/OFF/OMUX  (
    .I(\FT245/DATA_USB [7]),
    .O(\DATA_USB<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \M3p1/OUTPUT/OFF/OMUX  (
    .I(M3p1_OBUF_2942),
    .O(\M3p1/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y35" ))
  \FT245/Mshreg_cnt1_FSM_FFd6.CE/WSGAND  (
    .I(\FT245/cnt1_not0001_0 ),
    .O(\FT245/cnt1_FSM_FFd6/WSG )
  );
  X_BUF   \NlwBufferBlock_driver1/Mmult_M_RPMTEMP_mult0000/A<4>  (
    .I(HALL1_COUNT_4_IBUF_858),
    .O(\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [4])
  );
  X_BUF   \NlwBufferBlock_driver1/Mmult_M_RPMTEMP_mult0000/A<3>  (
    .I(HALL1_COUNT_3_IBUF_856),
    .O(\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [3])
  );
  X_BUF   \NlwBufferBlock_driver1/Mmult_M_RPMTEMP_mult0000/A<2>  (
    .I(HALL1_COUNT_2_IBUF_854),
    .O(\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [2])
  );
  X_BUF   \NlwBufferBlock_driver1/Mmult_M_RPMTEMP_mult0000/A<1>  (
    .I(HALL1_COUNT_1_IBUF_853),
    .O(\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [1])
  );
  X_BUF   \NlwBufferBlock_driver1/Mmult_M_RPMTEMP_mult0000/A<0>  (
    .I(HALL1_COUNT_0_IBUF_852),
    .O(\NlwBufferSignal_driver1/Mmult_M_RPMTEMP_mult0000/A [0])
  );
  X_ONE   NlwBlock_m_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_m_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

