--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: m_timesim.vhd
-- /___/   /\     Timestamp: Sun Dec 07 10:07:42 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf m.pcf -rpw 100 -tpw 0 -ar Structure -tm m -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim m.ncd m_timesim.vhd 
-- Device	: 3s400tq144-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: m.ncd
-- Output file	: F:\GitHub\FPGA\driver1\maincodev6\netgen\par\m_timesim.vhd
-- # of Entities	: 1
-- Design Name	: m
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity m is
  port (
    clk : in STD_LOGIC := 'X'; 
    PARITY_IN : in STD_LOGIC := 'X'; 
    M1n1 : out STD_LOGIC; 
    TXE : in STD_LOGIC := 'X'; 
    M1p1 : out STD_LOGIC; 
    M2n1 : out STD_LOGIC; 
    CLK_PAR : in STD_LOGIC := 'X'; 
    M2p1 : out STD_LOGIC; 
    M3n1 : out STD_LOGIC; 
    M3p1 : out STD_LOGIC; 
    USB_WR : out STD_LOGIC; 
    HALL11 : in STD_LOGIC := 'X'; 
    HALL21 : in STD_LOGIC := 'X'; 
    HALL31 : in STD_LOGIC := 'X'; 
    DATA_USB : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    HALL1_COUNT : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    RPM_IN : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    MOTOR_NUM : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end m;

architecture Structure of m is
  signal clk_BUFGP : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001 : STD_LOGIC; 
  signal FT245_cnt_cmp_eq0000_0 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_1_Q : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_3_Q : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_5_Q : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_7_Q : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_9_Q : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_11_Q : STD_LOGIC; 
  signal CLK_PAR_IBUF_708 : STD_LOGIC; 
  signal driver1_CLK_TIMER_709 : STD_LOGIC; 
  signal HALL11_IBUF_710 : STD_LOGIC; 
  signal HALL21_IBUF_711 : STD_LOGIC; 
  signal HALL31_IBUF_712 : STD_LOGIC; 
  signal PARITY_IN_IBUF_713 : STD_LOGIC; 
  signal FT245_USB_WR_714 : STD_LOGIC; 
  signal FT245_DATA_USB_1_Q : STD_LOGIC; 
  signal MOTOR_NUM_0_IBUF_716 : STD_LOGIC; 
  signal MOTOR_NUM_1_IBUF_718 : STD_LOGIC; 
  signal FT245_DATA_USB_3_Q : STD_LOGIC; 
  signal FT245_DATA_USB_4_Q : STD_LOGIC; 
  signal TXE_IBUF_723 : STD_LOGIC; 
  signal FT245_DATA_USB_6_Q : STD_LOGIC; 
  signal RPM_IN_0_IBUF_727 : STD_LOGIC; 
  signal RPM_IN_1_IBUF_728 : STD_LOGIC; 
  signal RPM_IN_2_IBUF_730 : STD_LOGIC; 
  signal RPM_IN_3_IBUF_731 : STD_LOGIC; 
  signal RPM_IN_4_IBUF_732 : STD_LOGIC; 
  signal RPM_IN_5_IBUF_733 : STD_LOGIC; 
  signal RPM_IN_6_IBUF_734 : STD_LOGIC; 
  signal RPM_IN_7_IBUF_735 : STD_LOGIC; 
  signal FT245_cnt1_not0001110_O : STD_LOGIC; 
  signal FT245_cnt1_not0001121_0 : STD_LOGIC; 
  signal FT245_cnt1_not0001144_0 : STD_LOGIC; 
  signal FT245_cnt1_not0001157_0 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_cmp_ge00002_SW0_O : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd2_743 : STD_LOGIC; 
  signal FT245_cnt1_not0001_0 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_745 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd4_746 : STD_LOGIC; 
  signal FT245_N0 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_748 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd5_749 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd3_750 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_DXMUX_793 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_XORF_791 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_LOGIC_ONE_790 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_CYINIT_789 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_CYSELF_780 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_BXINV_778 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_DYMUX_774 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_XORG_772 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_CYMUXG_771 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_LOGIC_ZERO_769 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_CYSELG_760 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_G : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_0_CLKINV_758 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_DXMUX_841 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_XORF_839 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYINIT_838 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_F : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_DYMUX_825 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_XORG_823 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYSELF_821 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYMUXFAST_820 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYAND_819 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_FASTCARRY_818 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYMUXG2_817 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYMUXF2_816 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CYSELG_806 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_G : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_2_CLKINV_804 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_DXMUX_889 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_XORF_887 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYINIT_886 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_F : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_DYMUX_873 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_XORG_871 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYSELF_869 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYMUXFAST_868 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYAND_867 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_FASTCARRY_866 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYMUXG2_865 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYMUXF2_864 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CYSELG_854 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_G : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_4_CLKINV_852 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_DXMUX_937 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_XORF_935 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYINIT_934 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_F : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_DYMUX_921 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_XORG_919 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYSELF_917 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYMUXFAST_916 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYAND_915 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_FASTCARRY_914 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYMUXG2_913 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYMUXF2_912 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CYSELG_902 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_G : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_6_CLKINV_900 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_DXMUX_985 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_XORF_983 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYINIT_982 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_F : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_DYMUX_969 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_XORG_967 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYSELF_965 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYMUXFAST_964 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYAND_963 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_FASTCARRY_962 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYMUXG2_961 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYMUXF2_960 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CYSELG_950 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_G : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_8_CLKINV_948 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_10_DXMUX_1006 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_10_XORF_1004 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_10_CYINIT_1003 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_10_rt_1001 : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1_10_CLKINV_993 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYINIT_1038 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELF_1029 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_rt_1028 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_BXINV_1027 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYMUXG_1026 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1024 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELG_1018 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELF_1062 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXFAST_1061 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYAND_1060 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_FASTCARRY_1059 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXG2_1058 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXF2_1057 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1056 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELG_1050 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_LOGIC_ZERO_1083 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_CYINIT_1082 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_cmp_eq0000_CYSELF_1076 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_CYINIT_1112 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_CYSELF_1103 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_BXINV_1101 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_CYMUXG_1100 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_LOGIC_ONE_1098 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_1_CYSELG_1092 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYSELF_1136 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXFAST_1135 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYAND_1134 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_FASTCARRY_1133 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXG2_1132 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXF2_1131 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE_1130 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_wg_cy_3_CYSELG_1124 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_LOGIC_ONE_1157 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_CYINIT_1156 : STD_LOGIC; 
  signal driver1_CLK_TIMER_not0001_CYSELF_1150 : STD_LOGIC; 
  signal FT245_cnt_0_DXMUX_1203 : STD_LOGIC; 
  signal FT245_cnt_0_XORF_1201 : STD_LOGIC; 
  signal FT245_cnt_0_LOGIC_ONE_1200 : STD_LOGIC; 
  signal FT245_cnt_0_CYINIT_1199 : STD_LOGIC; 
  signal FT245_cnt_0_CYSELF_1190 : STD_LOGIC; 
  signal FT245_cnt_0_BXINV_1188 : STD_LOGIC; 
  signal FT245_cnt_0_DYMUX_1183 : STD_LOGIC; 
  signal FT245_cnt_0_XORG_1181 : STD_LOGIC; 
  signal FT245_cnt_0_CYMUXG_1180 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_0_Q : STD_LOGIC; 
  signal FT245_cnt_0_LOGIC_ZERO_1178 : STD_LOGIC; 
  signal FT245_cnt_0_CYSELG_1169 : STD_LOGIC; 
  signal FT245_cnt_0_G : STD_LOGIC; 
  signal FT245_cnt_0_SRINV_1167 : STD_LOGIC; 
  signal FT245_cnt_0_CLKINV_1166 : STD_LOGIC; 
  signal FT245_cnt_2_DXMUX_1255 : STD_LOGIC; 
  signal FT245_cnt_2_XORF_1253 : STD_LOGIC; 
  signal FT245_cnt_2_CYINIT_1252 : STD_LOGIC; 
  signal FT245_cnt_2_F : STD_LOGIC; 
  signal FT245_cnt_2_DYMUX_1238 : STD_LOGIC; 
  signal FT245_cnt_2_XORG_1236 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_2_Q : STD_LOGIC; 
  signal FT245_cnt_2_CYSELF_1234 : STD_LOGIC; 
  signal FT245_cnt_2_CYMUXFAST_1233 : STD_LOGIC; 
  signal FT245_cnt_2_CYAND_1232 : STD_LOGIC; 
  signal FT245_cnt_2_FASTCARRY_1231 : STD_LOGIC; 
  signal FT245_cnt_2_CYMUXG2_1230 : STD_LOGIC; 
  signal FT245_cnt_2_CYMUXF2_1229 : STD_LOGIC; 
  signal FT245_cnt_2_LOGIC_ZERO_1228 : STD_LOGIC; 
  signal FT245_cnt_2_CYSELG_1219 : STD_LOGIC; 
  signal FT245_cnt_2_G : STD_LOGIC; 
  signal FT245_cnt_2_SRINV_1217 : STD_LOGIC; 
  signal FT245_cnt_2_CLKINV_1216 : STD_LOGIC; 
  signal FT245_cnt_4_DXMUX_1307 : STD_LOGIC; 
  signal FT245_cnt_4_XORF_1305 : STD_LOGIC; 
  signal FT245_cnt_4_CYINIT_1304 : STD_LOGIC; 
  signal FT245_cnt_4_F : STD_LOGIC; 
  signal FT245_cnt_4_DYMUX_1290 : STD_LOGIC; 
  signal FT245_cnt_4_XORG_1288 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_4_Q : STD_LOGIC; 
  signal FT245_cnt_4_CYSELF_1286 : STD_LOGIC; 
  signal FT245_cnt_4_CYMUXFAST_1285 : STD_LOGIC; 
  signal FT245_cnt_4_CYAND_1284 : STD_LOGIC; 
  signal FT245_cnt_4_FASTCARRY_1283 : STD_LOGIC; 
  signal FT245_cnt_4_CYMUXG2_1282 : STD_LOGIC; 
  signal FT245_cnt_4_CYMUXF2_1281 : STD_LOGIC; 
  signal FT245_cnt_4_LOGIC_ZERO_1280 : STD_LOGIC; 
  signal FT245_cnt_4_CYSELG_1271 : STD_LOGIC; 
  signal FT245_cnt_4_G : STD_LOGIC; 
  signal FT245_cnt_4_SRINV_1269 : STD_LOGIC; 
  signal FT245_cnt_4_CLKINV_1268 : STD_LOGIC; 
  signal FT245_cnt_6_DXMUX_1359 : STD_LOGIC; 
  signal FT245_cnt_6_XORF_1357 : STD_LOGIC; 
  signal FT245_cnt_6_CYINIT_1356 : STD_LOGIC; 
  signal FT245_cnt_6_F : STD_LOGIC; 
  signal FT245_cnt_6_DYMUX_1342 : STD_LOGIC; 
  signal FT245_cnt_6_XORG_1340 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_6_Q : STD_LOGIC; 
  signal FT245_cnt_6_CYSELF_1338 : STD_LOGIC; 
  signal FT245_cnt_6_CYMUXFAST_1337 : STD_LOGIC; 
  signal FT245_cnt_6_CYAND_1336 : STD_LOGIC; 
  signal FT245_cnt_6_FASTCARRY_1335 : STD_LOGIC; 
  signal FT245_cnt_6_CYMUXG2_1334 : STD_LOGIC; 
  signal FT245_cnt_6_CYMUXF2_1333 : STD_LOGIC; 
  signal FT245_cnt_6_LOGIC_ZERO_1332 : STD_LOGIC; 
  signal FT245_cnt_6_CYSELG_1323 : STD_LOGIC; 
  signal FT245_cnt_6_G : STD_LOGIC; 
  signal FT245_cnt_6_SRINV_1321 : STD_LOGIC; 
  signal FT245_cnt_6_CLKINV_1320 : STD_LOGIC; 
  signal FT245_cnt_8_DXMUX_1411 : STD_LOGIC; 
  signal FT245_cnt_8_XORF_1409 : STD_LOGIC; 
  signal FT245_cnt_8_CYINIT_1408 : STD_LOGIC; 
  signal FT245_cnt_8_F : STD_LOGIC; 
  signal FT245_cnt_8_DYMUX_1394 : STD_LOGIC; 
  signal FT245_cnt_8_XORG_1392 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_8_Q : STD_LOGIC; 
  signal FT245_cnt_8_CYSELF_1390 : STD_LOGIC; 
  signal FT245_cnt_8_CYMUXFAST_1389 : STD_LOGIC; 
  signal FT245_cnt_8_CYAND_1388 : STD_LOGIC; 
  signal FT245_cnt_8_FASTCARRY_1387 : STD_LOGIC; 
  signal FT245_cnt_8_CYMUXG2_1386 : STD_LOGIC; 
  signal FT245_cnt_8_CYMUXF2_1385 : STD_LOGIC; 
  signal FT245_cnt_8_LOGIC_ZERO_1384 : STD_LOGIC; 
  signal FT245_cnt_8_CYSELG_1375 : STD_LOGIC; 
  signal FT245_cnt_8_G : STD_LOGIC; 
  signal FT245_cnt_8_SRINV_1373 : STD_LOGIC; 
  signal FT245_cnt_8_CLKINV_1372 : STD_LOGIC; 
  signal FT245_cnt_10_DXMUX_1463 : STD_LOGIC; 
  signal FT245_cnt_10_XORF_1461 : STD_LOGIC; 
  signal FT245_cnt_10_CYINIT_1460 : STD_LOGIC; 
  signal FT245_cnt_10_F : STD_LOGIC; 
  signal FT245_cnt_10_DYMUX_1446 : STD_LOGIC; 
  signal FT245_cnt_10_XORG_1444 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_10_Q : STD_LOGIC; 
  signal FT245_cnt_10_CYSELF_1442 : STD_LOGIC; 
  signal FT245_cnt_10_CYMUXFAST_1441 : STD_LOGIC; 
  signal FT245_cnt_10_CYAND_1440 : STD_LOGIC; 
  signal FT245_cnt_10_FASTCARRY_1439 : STD_LOGIC; 
  signal FT245_cnt_10_CYMUXG2_1438 : STD_LOGIC; 
  signal FT245_cnt_10_CYMUXF2_1437 : STD_LOGIC; 
  signal FT245_cnt_10_LOGIC_ZERO_1436 : STD_LOGIC; 
  signal FT245_cnt_10_CYSELG_1427 : STD_LOGIC; 
  signal FT245_cnt_10_G : STD_LOGIC; 
  signal FT245_cnt_10_SRINV_1425 : STD_LOGIC; 
  signal FT245_cnt_10_CLKINV_1424 : STD_LOGIC; 
  signal FT245_cnt_12_DXMUX_1515 : STD_LOGIC; 
  signal FT245_cnt_12_XORF_1513 : STD_LOGIC; 
  signal FT245_cnt_12_CYINIT_1512 : STD_LOGIC; 
  signal FT245_cnt_12_F : STD_LOGIC; 
  signal FT245_cnt_12_DYMUX_1498 : STD_LOGIC; 
  signal FT245_cnt_12_XORG_1496 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_12_Q : STD_LOGIC; 
  signal FT245_cnt_12_CYSELF_1494 : STD_LOGIC; 
  signal FT245_cnt_12_CYMUXFAST_1493 : STD_LOGIC; 
  signal FT245_cnt_12_CYAND_1492 : STD_LOGIC; 
  signal FT245_cnt_12_FASTCARRY_1491 : STD_LOGIC; 
  signal FT245_cnt_12_CYMUXG2_1490 : STD_LOGIC; 
  signal FT245_cnt_12_CYMUXF2_1489 : STD_LOGIC; 
  signal FT245_cnt_12_LOGIC_ZERO_1488 : STD_LOGIC; 
  signal FT245_cnt_12_CYSELG_1479 : STD_LOGIC; 
  signal FT245_cnt_12_G : STD_LOGIC; 
  signal FT245_cnt_12_SRINV_1477 : STD_LOGIC; 
  signal FT245_cnt_12_CLKINV_1476 : STD_LOGIC; 
  signal FT245_cnt_14_DXMUX_1560 : STD_LOGIC; 
  signal FT245_cnt_14_XORF_1558 : STD_LOGIC; 
  signal FT245_cnt_14_LOGIC_ZERO_1557 : STD_LOGIC; 
  signal FT245_cnt_14_CYINIT_1556 : STD_LOGIC; 
  signal FT245_cnt_14_CYSELF_1547 : STD_LOGIC; 
  signal FT245_cnt_14_F : STD_LOGIC; 
  signal FT245_cnt_14_DYMUX_1541 : STD_LOGIC; 
  signal FT245_cnt_14_XORG_1539 : STD_LOGIC; 
  signal FT245_Mcount_cnt_cy_14_Q : STD_LOGIC; 
  signal FT245_cnt_15_rt_1536 : STD_LOGIC; 
  signal FT245_cnt_14_SRINV_1528 : STD_LOGIC; 
  signal FT245_cnt_14_CLKINV_1527 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_DXMUX_1610 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_XORF_1608 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_LOGIC_ONE_1607 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_CYINIT_1606 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_CYSELF_1597 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_BXINV_1595 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_DYMUX_1590 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_XORG_1588 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_CYMUXG_1587 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_LOGIC_ZERO_1585 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_CYSELG_1576 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_SRINV_1574 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_0_CLKINV_1573 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_DXMUX_1662 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_XORF_1660 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYINIT_1659 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_DYMUX_1645 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_XORG_1643 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYSELF_1641 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYMUXFAST_1640 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYAND_1639 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_FASTCARRY_1638 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYMUXG2_1637 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYMUXF2_1636 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_LOGIC_ZERO_1635 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CYSELG_1626 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_SRINV_1624 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_2_CLKINV_1623 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_DXMUX_1714 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_XORF_1712 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYINIT_1711 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_DYMUX_1697 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_XORG_1695 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYSELF_1693 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYMUXFAST_1692 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYAND_1691 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_FASTCARRY_1690 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYMUXG2_1689 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYMUXF2_1688 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_LOGIC_ZERO_1687 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CYSELG_1678 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_SRINV_1676 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_4_CLKINV_1675 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_DXMUX_1766 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_XORF_1764 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYINIT_1763 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_DYMUX_1749 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_XORG_1747 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYSELF_1745 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYMUXFAST_1744 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYAND_1743 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_FASTCARRY_1742 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYMUXG2_1741 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYMUXF2_1740 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_LOGIC_ZERO_1739 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CYSELG_1730 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_SRINV_1728 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_6_CLKINV_1727 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_DXMUX_1818 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_XORF_1816 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYINIT_1815 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_DYMUX_1801 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_XORG_1799 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYSELF_1797 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYMUXFAST_1796 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYAND_1795 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_FASTCARRY_1794 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYMUXG2_1793 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYMUXF2_1792 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_LOGIC_ZERO_1791 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CYSELG_1782 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_SRINV_1780 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_8_CLKINV_1779 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_DXMUX_1870 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_XORF_1868 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYINIT_1867 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_DYMUX_1853 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_XORG_1851 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYSELF_1849 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYMUXFAST_1848 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYAND_1847 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_FASTCARRY_1846 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYMUXG2_1845 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYMUXF2_1844 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_LOGIC_ZERO_1843 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CYSELG_1834 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_SRINV_1832 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_10_CLKINV_1831 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_DXMUX_1922 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_XORF_1920 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYINIT_1919 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_DYMUX_1905 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_XORG_1903 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYSELF_1901 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYMUXFAST_1900 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYAND_1899 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_FASTCARRY_1898 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYMUXG2_1897 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYMUXF2_1896 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_LOGIC_ZERO_1895 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CYSELG_1886 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_SRINV_1884 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_12_CLKINV_1883 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_DXMUX_1974 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_XORF_1972 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYINIT_1971 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_F : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_DYMUX_1957 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_XORG_1955 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYSELF_1953 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYMUXFAST_1952 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYAND_1951 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_FASTCARRY_1950 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYMUXG2_1949 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYMUXF2_1948 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_LOGIC_ZERO_1947 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CYSELG_1938 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_G : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_SRINV_1936 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_14_CLKINV_1935 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_DXMUX_1998 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_XORF_1996 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_CYINIT_1995 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_rt_1993 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_SRINV_1985 : STD_LOGIC; 
  signal driver1_TIMER_COUNT_16_CLKINV_1984 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal CLK_PAR_INBUF : STD_LOGIC; 
  signal LED_0_O : STD_LOGIC; 
  signal LED_1_O : STD_LOGIC; 
  signal LED_2_O : STD_LOGIC; 
  signal LED_3_O : STD_LOGIC; 
  signal PARITY_IN_INBUF : STD_LOGIC; 
  signal HALL11_INBUF : STD_LOGIC; 
  signal USB_WR_O : STD_LOGIC; 
  signal HALL21_INBUF : STD_LOGIC; 
  signal HALL31_INBUF : STD_LOGIC; 
  signal DATA_USB_0_O : STD_LOGIC; 
  signal DATA_USB_1_O : STD_LOGIC; 
  signal MOTOR_NUM_0_INBUF : STD_LOGIC; 
  signal M1n1_O : STD_LOGIC; 
  signal DATA_USB_2_O : STD_LOGIC; 
  signal MOTOR_NUM_1_INBUF : STD_LOGIC; 
  signal DATA_USB_3_O : STD_LOGIC; 
  signal M2n1_O : STD_LOGIC; 
  signal M1p1_O : STD_LOGIC; 
  signal DATA_USB_4_O : STD_LOGIC; 
  signal TXE_INBUF : STD_LOGIC; 
  signal DATA_USB_5_O : STD_LOGIC; 
  signal M3n1_O : STD_LOGIC; 
  signal M2p1_O : STD_LOGIC; 
  signal DATA_USB_6_O : STD_LOGIC; 
  signal RPM_IN_0_INBUF : STD_LOGIC; 
  signal DATA_USB_7_O : STD_LOGIC; 
  signal RPM_IN_1_INBUF : STD_LOGIC; 
  signal M3p1_O : STD_LOGIC; 
  signal RPM_IN_2_INBUF : STD_LOGIC; 
  signal RPM_IN_3_INBUF : STD_LOGIC; 
  signal RPM_IN_4_INBUF : STD_LOGIC; 
  signal RPM_IN_5_INBUF : STD_LOGIC; 
  signal RPM_IN_6_INBUF : STD_LOGIC; 
  signal RPM_IN_7_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal FT245_cnt_cmp_eq0000 : STD_LOGIC; 
  signal FT245_cnt1_not0001110_O_pack_1 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_cmp_ge0000 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_cmp_ge00002_SW0_O_pack_1 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_DYMUX_2337 : STD_LOGIC; 
  signal FT245_Mshreg_cnt1_FSM_FFd6_2334 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_DIG_MUX_2326 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_CLKINV_2324 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_CEINV_2323 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd6_WSG : STD_LOGIC; 
  signal FT245_USB_WR_DXMUX_2375 : STD_LOGIC; 
  signal FT245_mux0000 : STD_LOGIC; 
  signal FT245_USB_WR_DYMUX_2362 : STD_LOGIC; 
  signal FT245_DATA_USB_mux0000_4_Q : STD_LOGIC; 
  signal FT245_USB_WR_CLKINV_2353 : STD_LOGIC; 
  signal FT245_USB_WR_CEINV_2352 : STD_LOGIC; 
  signal FT245_DATA_USB_6_DXMUX_2413 : STD_LOGIC; 
  signal FT245_DATA_USB_mux0000_1_Q : STD_LOGIC; 
  signal FT245_DATA_USB_6_DYMUX_2400 : STD_LOGIC; 
  signal FT245_DATA_USB_mux0000_3_Q : STD_LOGIC; 
  signal FT245_DATA_USB_6_CLKINV_2391 : STD_LOGIC; 
  signal FT245_DATA_USB_6_CEINV_2390 : STD_LOGIC; 
  signal FT245_cnt1_not0001144_2427 : STD_LOGIC; 
  signal FT245_cnt1_not0001157_2439 : STD_LOGIC; 
  signal FT245_cnt1_not0001 : STD_LOGIC; 
  signal M1n1_OBUF_2475 : STD_LOGIC; 
  signal M1p1_OBUF_2467 : STD_LOGIC; 
  signal driver1_M_PID_5_DYMUX_2485 : STD_LOGIC; 
  signal driver1_M_PID_5_BYINV_2484 : STD_LOGIC; 
  signal driver1_M_PID_5_CLKINV_2483 : STD_LOGIC; 
  signal driver1_M_PID_5_CEINV_2482 : STD_LOGIC; 
  signal driver1_CLK_TIMER_DYMUX_2497 : STD_LOGIC; 
  signal driver1_CLK_TIMER_BYINV_2496 : STD_LOGIC; 
  signal driver1_CLK_TIMER_SRINV_2495 : STD_LOGIC; 
  signal driver1_CLK_TIMER_CLKINV_2494 : STD_LOGIC; 
  signal M2n1_OBUF_2523 : STD_LOGIC; 
  signal M2p1_OBUF_2515 : STD_LOGIC; 
  signal M3n1_OBUF_2547 : STD_LOGIC; 
  signal M3p1_OBUF_2539 : STD_LOGIC; 
  signal FT245_DATA_USB_1_DXMUX_2578 : STD_LOGIC; 
  signal FT245_DATA_USB_mux0000_6_Q : STD_LOGIC; 
  signal FT245_N0_pack_2 : STD_LOGIC; 
  signal FT245_DATA_USB_1_CLKINV_2562 : STD_LOGIC; 
  signal FT245_DATA_USB_1_CEINV_2561 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd3_DXMUX_2598 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd3_DYMUX_2592 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd3_CLKINV_2590 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd3_CEINV_2589 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd5_DXMUX_2618 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd5_DYMUX_2612 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd5_CLKINV_2610 : STD_LOGIC; 
  signal FT245_cnt1_FSM_FFd5_CEINV_2609 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_DYMUX_2630 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_BYINV_2629 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_SRINV_2628 : STD_LOGIC; 
  signal driver1_PWM_1_oc_out_CLKINV_2627 : STD_LOGIC; 
  signal FT245_cnt1_not0001121_2644 : STD_LOGIC; 
  signal DATA_USB_0_OUTPUT_OFF_O1INV_2086 : STD_LOGIC; 
  signal DATA_USB_2_OUTPUT_OFF_O1INV_2116 : STD_LOGIC; 
  signal DATA_USB_5_OUTPUT_OFF_O1INV_2168 : STD_LOGIC; 
  signal DATA_USB_7_OUTPUT_OFF_O1INV_2206 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_FT245_Mshreg_cnt1_FSM_FFd6_Q15_UNCONNECTED : STD_LOGIC; 
  signal driver1_PWM_1_Cnt_1 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal driver1_PWM_1_Mcount_Cnt_1_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal driver1_TIMER_COUNT : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal FT245_cnt : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal driver1_Mcount_TIMER_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal driver1_M_PID : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal driver1_PWM_1_Mcount_Cnt_1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal driver1_TIMER_COUNT_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal driver1_CLK_TIMER_not0001_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal driver1_CLK_TIMER_not0001_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal FT245_Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal driver1_Mcount_TIMER_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  driver1_PWM_1_Cnt_1_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_0_LOGIC_ZERO_769
    );
  driver1_PWM_1_Cnt_1_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_0_LOGIC_ONE_790
    );
  driver1_PWM_1_Cnt_1_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_XORF_791,
      O => driver1_PWM_1_Cnt_1_0_DXMUX_793
    );
  driver1_PWM_1_Cnt_1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_0_CYINIT_789,
      I1 => driver1_PWM_1_Mcount_Cnt_1_lut(0),
      O => driver1_PWM_1_Cnt_1_0_XORF_791
    );
  driver1_PWM_1_Cnt_1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_0_LOGIC_ONE_790,
      IB => driver1_PWM_1_Cnt_1_0_CYINIT_789,
      SEL => driver1_PWM_1_Cnt_1_0_CYSELF_780,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(0)
    );
  driver1_PWM_1_Cnt_1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_BXINV_778,
      O => driver1_PWM_1_Cnt_1_0_CYINIT_789
    );
  driver1_PWM_1_Cnt_1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_lut(0),
      O => driver1_PWM_1_Cnt_1_0_CYSELF_780
    );
  driver1_PWM_1_Cnt_1_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => driver1_PWM_1_Cnt_1_0_BXINV_778
    );
  driver1_PWM_1_Cnt_1_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_XORG_772,
      O => driver1_PWM_1_Cnt_1_0_DYMUX_774
    );
  driver1_PWM_1_Cnt_1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      I0 => driver1_PWM_1_Mcount_Cnt_1_cy(0),
      I1 => driver1_PWM_1_Cnt_1_0_G,
      O => driver1_PWM_1_Cnt_1_0_XORG_772
    );
  driver1_PWM_1_Cnt_1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_CYMUXG_771,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(1)
    );
  driver1_PWM_1_Cnt_1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X35Y38"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_0_LOGIC_ZERO_769,
      IB => driver1_PWM_1_Mcount_Cnt_1_cy(0),
      SEL => driver1_PWM_1_Cnt_1_0_CYSELG_760,
      O => driver1_PWM_1_Cnt_1_0_CYMUXG_771
    );
  driver1_PWM_1_Cnt_1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_G,
      O => driver1_PWM_1_Cnt_1_0_CYSELG_760
    );
  driver1_PWM_1_Cnt_1_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y38",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_0_CLKINV_758
    );
  driver1_PWM_1_Cnt_1_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815
    );
  driver1_PWM_1_Cnt_1_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_XORF_839,
      O => driver1_PWM_1_Cnt_1_2_DXMUX_841
    );
  driver1_PWM_1_Cnt_1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_2_CYINIT_838,
      I1 => driver1_PWM_1_Cnt_1_2_F,
      O => driver1_PWM_1_Cnt_1_2_XORF_839
    );
  driver1_PWM_1_Cnt_1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815,
      IB => driver1_PWM_1_Cnt_1_2_CYINIT_838,
      SEL => driver1_PWM_1_Cnt_1_2_CYSELF_821,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(2)
    );
  driver1_PWM_1_Cnt_1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815,
      IB => driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815,
      SEL => driver1_PWM_1_Cnt_1_2_CYSELF_821,
      O => driver1_PWM_1_Cnt_1_2_CYMUXF2_816
    );
  driver1_PWM_1_Cnt_1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(1),
      O => driver1_PWM_1_Cnt_1_2_CYINIT_838
    );
  driver1_PWM_1_Cnt_1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_F,
      O => driver1_PWM_1_Cnt_1_2_CYSELF_821
    );
  driver1_PWM_1_Cnt_1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_XORG_823,
      O => driver1_PWM_1_Cnt_1_2_DYMUX_825
    );
  driver1_PWM_1_Cnt_1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      I0 => driver1_PWM_1_Mcount_Cnt_1_cy(2),
      I1 => driver1_PWM_1_Cnt_1_2_G,
      O => driver1_PWM_1_Cnt_1_2_XORG_823
    );
  driver1_PWM_1_Cnt_1_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_CYMUXFAST_820,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(3)
    );
  driver1_PWM_1_Cnt_1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(1),
      O => driver1_PWM_1_Cnt_1_2_FASTCARRY_818
    );
  driver1_PWM_1_Cnt_1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_2_CYSELG_806,
      I1 => driver1_PWM_1_Cnt_1_2_CYSELF_821,
      O => driver1_PWM_1_Cnt_1_2_CYAND_819
    );
  driver1_PWM_1_Cnt_1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_2_CYMUXG2_817,
      IB => driver1_PWM_1_Cnt_1_2_FASTCARRY_818,
      SEL => driver1_PWM_1_Cnt_1_2_CYAND_819,
      O => driver1_PWM_1_Cnt_1_2_CYMUXFAST_820
    );
  driver1_PWM_1_Cnt_1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y39"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_2_LOGIC_ZERO_815,
      IB => driver1_PWM_1_Cnt_1_2_CYMUXF2_816,
      SEL => driver1_PWM_1_Cnt_1_2_CYSELG_806,
      O => driver1_PWM_1_Cnt_1_2_CYMUXG2_817
    );
  driver1_PWM_1_Cnt_1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_G,
      O => driver1_PWM_1_Cnt_1_2_CYSELG_806
    );
  driver1_PWM_1_Cnt_1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y39",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_2_CLKINV_804
    );
  driver1_PWM_1_Cnt_1_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863
    );
  driver1_PWM_1_Cnt_1_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_XORF_887,
      O => driver1_PWM_1_Cnt_1_4_DXMUX_889
    );
  driver1_PWM_1_Cnt_1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_4_CYINIT_886,
      I1 => driver1_PWM_1_Cnt_1_4_F,
      O => driver1_PWM_1_Cnt_1_4_XORF_887
    );
  driver1_PWM_1_Cnt_1_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863,
      IB => driver1_PWM_1_Cnt_1_4_CYINIT_886,
      SEL => driver1_PWM_1_Cnt_1_4_CYSELF_869,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(4)
    );
  driver1_PWM_1_Cnt_1_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863,
      IB => driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863,
      SEL => driver1_PWM_1_Cnt_1_4_CYSELF_869,
      O => driver1_PWM_1_Cnt_1_4_CYMUXF2_864
    );
  driver1_PWM_1_Cnt_1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(3),
      O => driver1_PWM_1_Cnt_1_4_CYINIT_886
    );
  driver1_PWM_1_Cnt_1_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_F,
      O => driver1_PWM_1_Cnt_1_4_CYSELF_869
    );
  driver1_PWM_1_Cnt_1_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_XORG_871,
      O => driver1_PWM_1_Cnt_1_4_DYMUX_873
    );
  driver1_PWM_1_Cnt_1_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      I0 => driver1_PWM_1_Mcount_Cnt_1_cy(4),
      I1 => driver1_PWM_1_Cnt_1_4_G,
      O => driver1_PWM_1_Cnt_1_4_XORG_871
    );
  driver1_PWM_1_Cnt_1_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_CYMUXFAST_868,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(5)
    );
  driver1_PWM_1_Cnt_1_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(3),
      O => driver1_PWM_1_Cnt_1_4_FASTCARRY_866
    );
  driver1_PWM_1_Cnt_1_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_4_CYSELG_854,
      I1 => driver1_PWM_1_Cnt_1_4_CYSELF_869,
      O => driver1_PWM_1_Cnt_1_4_CYAND_867
    );
  driver1_PWM_1_Cnt_1_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_4_CYMUXG2_865,
      IB => driver1_PWM_1_Cnt_1_4_FASTCARRY_866,
      SEL => driver1_PWM_1_Cnt_1_4_CYAND_867,
      O => driver1_PWM_1_Cnt_1_4_CYMUXFAST_868
    );
  driver1_PWM_1_Cnt_1_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y40"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_4_LOGIC_ZERO_863,
      IB => driver1_PWM_1_Cnt_1_4_CYMUXF2_864,
      SEL => driver1_PWM_1_Cnt_1_4_CYSELG_854,
      O => driver1_PWM_1_Cnt_1_4_CYMUXG2_865
    );
  driver1_PWM_1_Cnt_1_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_G,
      O => driver1_PWM_1_Cnt_1_4_CYSELG_854
    );
  driver1_PWM_1_Cnt_1_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_4_CLKINV_852
    );
  driver1_PWM_1_Cnt_1_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911
    );
  driver1_PWM_1_Cnt_1_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_XORF_935,
      O => driver1_PWM_1_Cnt_1_6_DXMUX_937
    );
  driver1_PWM_1_Cnt_1_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_6_CYINIT_934,
      I1 => driver1_PWM_1_Cnt_1_6_F,
      O => driver1_PWM_1_Cnt_1_6_XORF_935
    );
  driver1_PWM_1_Cnt_1_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911,
      IB => driver1_PWM_1_Cnt_1_6_CYINIT_934,
      SEL => driver1_PWM_1_Cnt_1_6_CYSELF_917,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(6)
    );
  driver1_PWM_1_Cnt_1_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911,
      IB => driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911,
      SEL => driver1_PWM_1_Cnt_1_6_CYSELF_917,
      O => driver1_PWM_1_Cnt_1_6_CYMUXF2_912
    );
  driver1_PWM_1_Cnt_1_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(5),
      O => driver1_PWM_1_Cnt_1_6_CYINIT_934
    );
  driver1_PWM_1_Cnt_1_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_F,
      O => driver1_PWM_1_Cnt_1_6_CYSELF_917
    );
  driver1_PWM_1_Cnt_1_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_XORG_919,
      O => driver1_PWM_1_Cnt_1_6_DYMUX_921
    );
  driver1_PWM_1_Cnt_1_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      I0 => driver1_PWM_1_Mcount_Cnt_1_cy(6),
      I1 => driver1_PWM_1_Cnt_1_6_G,
      O => driver1_PWM_1_Cnt_1_6_XORG_919
    );
  driver1_PWM_1_Cnt_1_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_CYMUXFAST_916,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(7)
    );
  driver1_PWM_1_Cnt_1_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(5),
      O => driver1_PWM_1_Cnt_1_6_FASTCARRY_914
    );
  driver1_PWM_1_Cnt_1_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_6_CYSELG_902,
      I1 => driver1_PWM_1_Cnt_1_6_CYSELF_917,
      O => driver1_PWM_1_Cnt_1_6_CYAND_915
    );
  driver1_PWM_1_Cnt_1_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_6_CYMUXG2_913,
      IB => driver1_PWM_1_Cnt_1_6_FASTCARRY_914,
      SEL => driver1_PWM_1_Cnt_1_6_CYAND_915,
      O => driver1_PWM_1_Cnt_1_6_CYMUXFAST_916
    );
  driver1_PWM_1_Cnt_1_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y41"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_6_LOGIC_ZERO_911,
      IB => driver1_PWM_1_Cnt_1_6_CYMUXF2_912,
      SEL => driver1_PWM_1_Cnt_1_6_CYSELG_902,
      O => driver1_PWM_1_Cnt_1_6_CYMUXG2_913
    );
  driver1_PWM_1_Cnt_1_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_G,
      O => driver1_PWM_1_Cnt_1_6_CYSELG_902
    );
  driver1_PWM_1_Cnt_1_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y41",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_6_CLKINV_900
    );
  driver1_PWM_1_Cnt_1_8 : X_FF
    generic map(
      LOC => "SLICE_X35Y42",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_DXMUX_985,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_8_CLKINV_948,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(8)
    );
  driver1_PWM_1_Cnt_1_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      O => driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959
    );
  driver1_PWM_1_Cnt_1_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_XORF_983,
      O => driver1_PWM_1_Cnt_1_8_DXMUX_985
    );
  driver1_PWM_1_Cnt_1_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_8_CYINIT_982,
      I1 => driver1_PWM_1_Cnt_1_8_F,
      O => driver1_PWM_1_Cnt_1_8_XORF_983
    );
  driver1_PWM_1_Cnt_1_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959,
      IB => driver1_PWM_1_Cnt_1_8_CYINIT_982,
      SEL => driver1_PWM_1_Cnt_1_8_CYSELF_965,
      O => driver1_PWM_1_Mcount_Cnt_1_cy(8)
    );
  driver1_PWM_1_Cnt_1_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959,
      IB => driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959,
      SEL => driver1_PWM_1_Cnt_1_8_CYSELF_965,
      O => driver1_PWM_1_Cnt_1_8_CYMUXF2_960
    );
  driver1_PWM_1_Cnt_1_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(7),
      O => driver1_PWM_1_Cnt_1_8_CYINIT_982
    );
  driver1_PWM_1_Cnt_1_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_F,
      O => driver1_PWM_1_Cnt_1_8_CYSELF_965
    );
  driver1_PWM_1_Cnt_1_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_XORG_967,
      O => driver1_PWM_1_Cnt_1_8_DYMUX_969
    );
  driver1_PWM_1_Cnt_1_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      I0 => driver1_PWM_1_Mcount_Cnt_1_cy(8),
      I1 => driver1_PWM_1_Cnt_1_8_G,
      O => driver1_PWM_1_Cnt_1_8_XORG_967
    );
  driver1_PWM_1_Cnt_1_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Mcount_Cnt_1_cy(7),
      O => driver1_PWM_1_Cnt_1_8_FASTCARRY_962
    );
  driver1_PWM_1_Cnt_1_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_8_CYSELG_950,
      I1 => driver1_PWM_1_Cnt_1_8_CYSELF_965,
      O => driver1_PWM_1_Cnt_1_8_CYAND_963
    );
  driver1_PWM_1_Cnt_1_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_8_CYMUXG2_961,
      IB => driver1_PWM_1_Cnt_1_8_FASTCARRY_962,
      SEL => driver1_PWM_1_Cnt_1_8_CYAND_963,
      O => driver1_PWM_1_Cnt_1_8_CYMUXFAST_964
    );
  driver1_PWM_1_Cnt_1_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y42"
    )
    port map (
      IA => driver1_PWM_1_Cnt_1_8_LOGIC_ZERO_959,
      IB => driver1_PWM_1_Cnt_1_8_CYMUXF2_960,
      SEL => driver1_PWM_1_Cnt_1_8_CYSELG_950,
      O => driver1_PWM_1_Cnt_1_8_CYMUXG2_961
    );
  driver1_PWM_1_Cnt_1_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_G,
      O => driver1_PWM_1_Cnt_1_8_CYSELG_950
    );
  driver1_PWM_1_Cnt_1_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y42",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_8_CLKINV_948
    );
  driver1_PWM_1_Cnt_1_10_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X35Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_PWM_1_Cnt_1(10),
      O => driver1_PWM_1_Cnt_1_10_rt_1001
    );
  driver1_PWM_1_Cnt_1_10 : X_FF
    generic map(
      LOC => "SLICE_X35Y43",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_10_DXMUX_1006,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_10_CLKINV_993,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(10)
    );
  driver1_PWM_1_Cnt_1_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y43",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_10_XORF_1004,
      O => driver1_PWM_1_Cnt_1_10_DXMUX_1006
    );
  driver1_PWM_1_Cnt_1_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X35Y43"
    )
    port map (
      I0 => driver1_PWM_1_Cnt_1_10_CYINIT_1003,
      I1 => driver1_PWM_1_Cnt_1_10_rt_1001,
      O => driver1_PWM_1_Cnt_1_10_XORF_1004
    );
  driver1_PWM_1_Cnt_1_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y43",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_CYMUXFAST_964,
      O => driver1_PWM_1_Cnt_1_10_CYINIT_1003
    );
  driver1_PWM_1_Cnt_1_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y43",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_Cnt_1_10_CLKINV_993
    );
  driver1_TIMER_COUNT_4_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X19Y56"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_4_rt_1028
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y56"
    )
    port map (
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1024
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1024,
      IB => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYINIT_1038,
      SEL => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELF_1029,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy(0)
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_BXINV_1027,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYINIT_1038
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_rt_1028,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELF_1029
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_BXINV_1027
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X19Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1024,
      IB => driver1_TIMER_COUNT_cmp_eq0000_wg_cy(0),
      SEL => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELG_1018,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYMUXG_1026
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(1),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYSELG_1018
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X19Y56"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(6),
      ADR1 => driver1_TIMER_COUNT(5),
      ADR2 => driver1_TIMER_COUNT(3),
      ADR3 => driver1_TIMER_COUNT(7),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(1)
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1056
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1056,
      IB => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1056,
      SEL => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELF_1062,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXF2_1057
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(2),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELF_1062
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_1_CYMUXG_1026,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_FASTCARRY_1059
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      I0 => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELG_1050,
      I1 => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELF_1062,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYAND_1060
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXG2_1058,
      IB => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_FASTCARRY_1059,
      SEL => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYAND_1060,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXFAST_1061
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1056,
      IB => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXF2_1057,
      SEL => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELG_1050,
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXG2_1058
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(3),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYSELG_1050
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X19Y58"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(2),
      ADR1 => driver1_TIMER_COUNT(16),
      ADR2 => driver1_TIMER_COUNT(15),
      ADR3 => driver1_TIMER_COUNT(14),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(4)
    );
  driver1_TIMER_COUNT_cmp_eq0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y58"
    )
    port map (
      O => driver1_TIMER_COUNT_cmp_eq0000_LOGIC_ZERO_1083
    );
  driver1_TIMER_COUNT_cmp_eq0000_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y58"
    )
    port map (
      IA => driver1_TIMER_COUNT_cmp_eq0000_LOGIC_ZERO_1083,
      IB => driver1_TIMER_COUNT_cmp_eq0000_CYINIT_1082,
      SEL => driver1_TIMER_COUNT_cmp_eq0000_CYSELF_1076,
      O => driver1_TIMER_COUNT_cmp_eq0000
    );
  driver1_TIMER_COUNT_cmp_eq0000_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_cy_3_CYMUXFAST_1061,
      O => driver1_TIMER_COUNT_cmp_eq0000_CYINIT_1082
    );
  driver1_TIMER_COUNT_cmp_eq0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(4),
      O => driver1_TIMER_COUNT_cmp_eq0000_CYSELF_1076
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y56"
    )
    port map (
      O => driver1_CLK_TIMER_not0001_wg_cy_1_LOGIC_ONE_1098
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y56"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_wg_cy_1_LOGIC_ONE_1098,
      IB => driver1_CLK_TIMER_not0001_wg_cy_1_CYINIT_1112,
      SEL => driver1_CLK_TIMER_not0001_wg_cy_1_CYSELF_1103,
      O => driver1_CLK_TIMER_not0001_wg_cy(0)
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_cy_1_BXINV_1101,
      O => driver1_CLK_TIMER_not0001_wg_cy_1_CYINIT_1112
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_lut(0),
      O => driver1_CLK_TIMER_not0001_wg_cy_1_CYSELF_1103
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => driver1_CLK_TIMER_not0001_wg_cy_1_BXINV_1101
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X16Y56"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_wg_cy_1_LOGIC_ONE_1098,
      IB => driver1_CLK_TIMER_not0001_wg_cy(0),
      SEL => driver1_CLK_TIMER_not0001_wg_cy_1_CYSELG_1092,
      O => driver1_CLK_TIMER_not0001_wg_cy_1_CYMUXG_1100
    );
  driver1_CLK_TIMER_not0001_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_lut(1),
      O => driver1_CLK_TIMER_not0001_wg_cy_1_CYSELG_1092
    );
  driver1_CLK_TIMER_not0001_wg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X16Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_TIMER_COUNT(5),
      ADR3 => VCC,
      O => driver1_CLK_TIMER_not0001_wg_lut(0)
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y57"
    )
    port map (
      O => driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE_1130
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y57"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE_1130,
      IB => driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE_1130,
      SEL => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELF_1136,
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXF2_1131
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_lut(2),
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELF_1136
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X16Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_cy_1_CYMUXG_1100,
      O => driver1_CLK_TIMER_not0001_wg_cy_3_FASTCARRY_1133
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X16Y57"
    )
    port map (
      I0 => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELG_1124,
      I1 => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELF_1136,
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYAND_1134
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X16Y57"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXG2_1132,
      IB => driver1_CLK_TIMER_not0001_wg_cy_3_FASTCARRY_1133,
      SEL => driver1_CLK_TIMER_not0001_wg_cy_3_CYAND_1134,
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXFAST_1135
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y57"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_wg_cy_3_LOGIC_ONE_1130,
      IB => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXF2_1131,
      SEL => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELG_1124,
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXG2_1132
    );
  driver1_CLK_TIMER_not0001_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X16Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_lut(3),
      O => driver1_CLK_TIMER_not0001_wg_cy_3_CYSELG_1124
    );
  driver1_CLK_TIMER_not0001_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X16Y58"
    )
    port map (
      O => driver1_CLK_TIMER_not0001_LOGIC_ONE_1157
    );
  driver1_CLK_TIMER_not0001_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X16Y58"
    )
    port map (
      IA => driver1_CLK_TIMER_not0001_LOGIC_ONE_1157,
      IB => driver1_CLK_TIMER_not0001_CYINIT_1156,
      SEL => driver1_CLK_TIMER_not0001_CYSELF_1150,
      O => driver1_CLK_TIMER_not0001
    );
  driver1_CLK_TIMER_not0001_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X16Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_cy_3_CYMUXFAST_1135,
      O => driver1_CLK_TIMER_not0001_CYINIT_1156
    );
  driver1_CLK_TIMER_not0001_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X16Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001_wg_lut(4),
      O => driver1_CLK_TIMER_not0001_CYSELF_1150
    );
  FT245_cnt_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      O => FT245_cnt_0_LOGIC_ZERO_1178
    );
  FT245_cnt_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      O => FT245_cnt_0_LOGIC_ONE_1200
    );
  FT245_cnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_0_XORF_1201,
      O => FT245_cnt_0_DXMUX_1203
    );
  FT245_cnt_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      I0 => FT245_cnt_0_CYINIT_1199,
      I1 => FT245_Mcount_cnt_lut(0),
      O => FT245_cnt_0_XORF_1201
    );
  FT245_cnt_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      IA => FT245_cnt_0_LOGIC_ONE_1200,
      IB => FT245_cnt_0_CYINIT_1199,
      SEL => FT245_cnt_0_CYSELF_1190,
      O => FT245_Mcount_cnt_cy_0_Q
    );
  FT245_cnt_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_0_BXINV_1188,
      O => FT245_cnt_0_CYINIT_1199
    );
  FT245_cnt_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_lut(0),
      O => FT245_cnt_0_CYSELF_1190
    );
  FT245_cnt_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => FT245_cnt_0_BXINV_1188
    );
  FT245_cnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_0_XORG_1181,
      O => FT245_cnt_0_DYMUX_1183
    );
  FT245_cnt_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_0_Q,
      I1 => FT245_cnt_0_G,
      O => FT245_cnt_0_XORG_1181
    );
  FT245_cnt_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_0_CYMUXG_1180,
      O => FT245_Mcount_cnt_cy_1_Q
    );
  FT245_cnt_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X34Y54"
    )
    port map (
      IA => FT245_cnt_0_LOGIC_ZERO_1178,
      IB => FT245_Mcount_cnt_cy_0_Q,
      SEL => FT245_cnt_0_CYSELG_1169,
      O => FT245_cnt_0_CYMUXG_1180
    );
  FT245_cnt_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_0_G,
      O => FT245_cnt_0_CYSELG_1169
    );
  FT245_cnt_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_0_SRINV_1167
    );
  FT245_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_0_CLKINV_1166
    );
  FT245_cnt_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      O => FT245_cnt_2_LOGIC_ZERO_1228
    );
  FT245_cnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_2_XORF_1253,
      O => FT245_cnt_2_DXMUX_1255
    );
  FT245_cnt_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      I0 => FT245_cnt_2_CYINIT_1252,
      I1 => FT245_cnt_2_F,
      O => FT245_cnt_2_XORF_1253
    );
  FT245_cnt_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      IA => FT245_cnt_2_LOGIC_ZERO_1228,
      IB => FT245_cnt_2_CYINIT_1252,
      SEL => FT245_cnt_2_CYSELF_1234,
      O => FT245_Mcount_cnt_cy_2_Q
    );
  FT245_cnt_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      IA => FT245_cnt_2_LOGIC_ZERO_1228,
      IB => FT245_cnt_2_LOGIC_ZERO_1228,
      SEL => FT245_cnt_2_CYSELF_1234,
      O => FT245_cnt_2_CYMUXF2_1229
    );
  FT245_cnt_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_1_Q,
      O => FT245_cnt_2_CYINIT_1252
    );
  FT245_cnt_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_2_F,
      O => FT245_cnt_2_CYSELF_1234
    );
  FT245_cnt_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_2_XORG_1236,
      O => FT245_cnt_2_DYMUX_1238
    );
  FT245_cnt_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_2_Q,
      I1 => FT245_cnt_2_G,
      O => FT245_cnt_2_XORG_1236
    );
  FT245_cnt_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_2_CYMUXFAST_1233,
      O => FT245_Mcount_cnt_cy_3_Q
    );
  FT245_cnt_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_1_Q,
      O => FT245_cnt_2_FASTCARRY_1231
    );
  FT245_cnt_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      I0 => FT245_cnt_2_CYSELG_1219,
      I1 => FT245_cnt_2_CYSELF_1234,
      O => FT245_cnt_2_CYAND_1232
    );
  FT245_cnt_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      IA => FT245_cnt_2_CYMUXG2_1230,
      IB => FT245_cnt_2_FASTCARRY_1231,
      SEL => FT245_cnt_2_CYAND_1232,
      O => FT245_cnt_2_CYMUXFAST_1233
    );
  FT245_cnt_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y55"
    )
    port map (
      IA => FT245_cnt_2_LOGIC_ZERO_1228,
      IB => FT245_cnt_2_CYMUXF2_1229,
      SEL => FT245_cnt_2_CYSELG_1219,
      O => FT245_cnt_2_CYMUXG2_1230
    );
  FT245_cnt_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_2_G,
      O => FT245_cnt_2_CYSELG_1219
    );
  FT245_cnt_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_2_SRINV_1217
    );
  FT245_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_2_CLKINV_1216
    );
  FT245_cnt_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      O => FT245_cnt_4_LOGIC_ZERO_1280
    );
  FT245_cnt_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_4_XORF_1305,
      O => FT245_cnt_4_DXMUX_1307
    );
  FT245_cnt_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      I0 => FT245_cnt_4_CYINIT_1304,
      I1 => FT245_cnt_4_F,
      O => FT245_cnt_4_XORF_1305
    );
  FT245_cnt_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      IA => FT245_cnt_4_LOGIC_ZERO_1280,
      IB => FT245_cnt_4_CYINIT_1304,
      SEL => FT245_cnt_4_CYSELF_1286,
      O => FT245_Mcount_cnt_cy_4_Q
    );
  FT245_cnt_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      IA => FT245_cnt_4_LOGIC_ZERO_1280,
      IB => FT245_cnt_4_LOGIC_ZERO_1280,
      SEL => FT245_cnt_4_CYSELF_1286,
      O => FT245_cnt_4_CYMUXF2_1281
    );
  FT245_cnt_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_3_Q,
      O => FT245_cnt_4_CYINIT_1304
    );
  FT245_cnt_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_4_F,
      O => FT245_cnt_4_CYSELF_1286
    );
  FT245_cnt_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_4_XORG_1288,
      O => FT245_cnt_4_DYMUX_1290
    );
  FT245_cnt_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_4_Q,
      I1 => FT245_cnt_4_G,
      O => FT245_cnt_4_XORG_1288
    );
  FT245_cnt_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_4_CYMUXFAST_1285,
      O => FT245_Mcount_cnt_cy_5_Q
    );
  FT245_cnt_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_3_Q,
      O => FT245_cnt_4_FASTCARRY_1283
    );
  FT245_cnt_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      I0 => FT245_cnt_4_CYSELG_1271,
      I1 => FT245_cnt_4_CYSELF_1286,
      O => FT245_cnt_4_CYAND_1284
    );
  FT245_cnt_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      IA => FT245_cnt_4_CYMUXG2_1282,
      IB => FT245_cnt_4_FASTCARRY_1283,
      SEL => FT245_cnt_4_CYAND_1284,
      O => FT245_cnt_4_CYMUXFAST_1285
    );
  FT245_cnt_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y56"
    )
    port map (
      IA => FT245_cnt_4_LOGIC_ZERO_1280,
      IB => FT245_cnt_4_CYMUXF2_1281,
      SEL => FT245_cnt_4_CYSELG_1271,
      O => FT245_cnt_4_CYMUXG2_1282
    );
  FT245_cnt_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_4_G,
      O => FT245_cnt_4_CYSELG_1271
    );
  FT245_cnt_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_4_SRINV_1269
    );
  FT245_cnt_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_4_CLKINV_1268
    );
  FT245_cnt_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      O => FT245_cnt_6_LOGIC_ZERO_1332
    );
  FT245_cnt_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_6_XORF_1357,
      O => FT245_cnt_6_DXMUX_1359
    );
  FT245_cnt_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      I0 => FT245_cnt_6_CYINIT_1356,
      I1 => FT245_cnt_6_F,
      O => FT245_cnt_6_XORF_1357
    );
  FT245_cnt_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      IA => FT245_cnt_6_LOGIC_ZERO_1332,
      IB => FT245_cnt_6_CYINIT_1356,
      SEL => FT245_cnt_6_CYSELF_1338,
      O => FT245_Mcount_cnt_cy_6_Q
    );
  FT245_cnt_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      IA => FT245_cnt_6_LOGIC_ZERO_1332,
      IB => FT245_cnt_6_LOGIC_ZERO_1332,
      SEL => FT245_cnt_6_CYSELF_1338,
      O => FT245_cnt_6_CYMUXF2_1333
    );
  FT245_cnt_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_5_Q,
      O => FT245_cnt_6_CYINIT_1356
    );
  FT245_cnt_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_6_F,
      O => FT245_cnt_6_CYSELF_1338
    );
  FT245_cnt_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_6_XORG_1340,
      O => FT245_cnt_6_DYMUX_1342
    );
  FT245_cnt_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_6_Q,
      I1 => FT245_cnt_6_G,
      O => FT245_cnt_6_XORG_1340
    );
  FT245_cnt_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_6_CYMUXFAST_1337,
      O => FT245_Mcount_cnt_cy_7_Q
    );
  FT245_cnt_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_5_Q,
      O => FT245_cnt_6_FASTCARRY_1335
    );
  FT245_cnt_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      I0 => FT245_cnt_6_CYSELG_1323,
      I1 => FT245_cnt_6_CYSELF_1338,
      O => FT245_cnt_6_CYAND_1336
    );
  FT245_cnt_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      IA => FT245_cnt_6_CYMUXG2_1334,
      IB => FT245_cnt_6_FASTCARRY_1335,
      SEL => FT245_cnt_6_CYAND_1336,
      O => FT245_cnt_6_CYMUXFAST_1337
    );
  FT245_cnt_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y57"
    )
    port map (
      IA => FT245_cnt_6_LOGIC_ZERO_1332,
      IB => FT245_cnt_6_CYMUXF2_1333,
      SEL => FT245_cnt_6_CYSELG_1323,
      O => FT245_cnt_6_CYMUXG2_1334
    );
  FT245_cnt_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_6_G,
      O => FT245_cnt_6_CYSELG_1323
    );
  FT245_cnt_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_6_SRINV_1321
    );
  FT245_cnt_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_6_CLKINV_1320
    );
  FT245_cnt_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      O => FT245_cnt_8_LOGIC_ZERO_1384
    );
  FT245_cnt_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_8_XORF_1409,
      O => FT245_cnt_8_DXMUX_1411
    );
  FT245_cnt_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      I0 => FT245_cnt_8_CYINIT_1408,
      I1 => FT245_cnt_8_F,
      O => FT245_cnt_8_XORF_1409
    );
  FT245_cnt_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      IA => FT245_cnt_8_LOGIC_ZERO_1384,
      IB => FT245_cnt_8_CYINIT_1408,
      SEL => FT245_cnt_8_CYSELF_1390,
      O => FT245_Mcount_cnt_cy_8_Q
    );
  FT245_cnt_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      IA => FT245_cnt_8_LOGIC_ZERO_1384,
      IB => FT245_cnt_8_LOGIC_ZERO_1384,
      SEL => FT245_cnt_8_CYSELF_1390,
      O => FT245_cnt_8_CYMUXF2_1385
    );
  FT245_cnt_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_7_Q,
      O => FT245_cnt_8_CYINIT_1408
    );
  FT245_cnt_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_8_F,
      O => FT245_cnt_8_CYSELF_1390
    );
  FT245_cnt_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_8_XORG_1392,
      O => FT245_cnt_8_DYMUX_1394
    );
  FT245_cnt_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_8_Q,
      I1 => FT245_cnt_8_G,
      O => FT245_cnt_8_XORG_1392
    );
  FT245_cnt_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_8_CYMUXFAST_1389,
      O => FT245_Mcount_cnt_cy_9_Q
    );
  FT245_cnt_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_7_Q,
      O => FT245_cnt_8_FASTCARRY_1387
    );
  FT245_cnt_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      I0 => FT245_cnt_8_CYSELG_1375,
      I1 => FT245_cnt_8_CYSELF_1390,
      O => FT245_cnt_8_CYAND_1388
    );
  FT245_cnt_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      IA => FT245_cnt_8_CYMUXG2_1386,
      IB => FT245_cnt_8_FASTCARRY_1387,
      SEL => FT245_cnt_8_CYAND_1388,
      O => FT245_cnt_8_CYMUXFAST_1389
    );
  FT245_cnt_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y58"
    )
    port map (
      IA => FT245_cnt_8_LOGIC_ZERO_1384,
      IB => FT245_cnt_8_CYMUXF2_1385,
      SEL => FT245_cnt_8_CYSELG_1375,
      O => FT245_cnt_8_CYMUXG2_1386
    );
  FT245_cnt_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_8_G,
      O => FT245_cnt_8_CYSELG_1375
    );
  FT245_cnt_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_8_SRINV_1373
    );
  FT245_cnt_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_8_CLKINV_1372
    );
  FT245_cnt_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      O => FT245_cnt_10_LOGIC_ZERO_1436
    );
  FT245_cnt_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_10_XORF_1461,
      O => FT245_cnt_10_DXMUX_1463
    );
  FT245_cnt_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      I0 => FT245_cnt_10_CYINIT_1460,
      I1 => FT245_cnt_10_F,
      O => FT245_cnt_10_XORF_1461
    );
  FT245_cnt_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      IA => FT245_cnt_10_LOGIC_ZERO_1436,
      IB => FT245_cnt_10_CYINIT_1460,
      SEL => FT245_cnt_10_CYSELF_1442,
      O => FT245_Mcount_cnt_cy_10_Q
    );
  FT245_cnt_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      IA => FT245_cnt_10_LOGIC_ZERO_1436,
      IB => FT245_cnt_10_LOGIC_ZERO_1436,
      SEL => FT245_cnt_10_CYSELF_1442,
      O => FT245_cnt_10_CYMUXF2_1437
    );
  FT245_cnt_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_9_Q,
      O => FT245_cnt_10_CYINIT_1460
    );
  FT245_cnt_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_10_F,
      O => FT245_cnt_10_CYSELF_1442
    );
  FT245_cnt_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_10_XORG_1444,
      O => FT245_cnt_10_DYMUX_1446
    );
  FT245_cnt_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_10_Q,
      I1 => FT245_cnt_10_G,
      O => FT245_cnt_10_XORG_1444
    );
  FT245_cnt_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_10_CYMUXFAST_1441,
      O => FT245_Mcount_cnt_cy_11_Q
    );
  FT245_cnt_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_9_Q,
      O => FT245_cnt_10_FASTCARRY_1439
    );
  FT245_cnt_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      I0 => FT245_cnt_10_CYSELG_1427,
      I1 => FT245_cnt_10_CYSELF_1442,
      O => FT245_cnt_10_CYAND_1440
    );
  FT245_cnt_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      IA => FT245_cnt_10_CYMUXG2_1438,
      IB => FT245_cnt_10_FASTCARRY_1439,
      SEL => FT245_cnt_10_CYAND_1440,
      O => FT245_cnt_10_CYMUXFAST_1441
    );
  FT245_cnt_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y59"
    )
    port map (
      IA => FT245_cnt_10_LOGIC_ZERO_1436,
      IB => FT245_cnt_10_CYMUXF2_1437,
      SEL => FT245_cnt_10_CYSELG_1427,
      O => FT245_cnt_10_CYMUXG2_1438
    );
  FT245_cnt_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_10_G,
      O => FT245_cnt_10_CYSELG_1427
    );
  FT245_cnt_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_10_SRINV_1425
    );
  FT245_cnt_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_10_CLKINV_1424
    );
  FT245_cnt_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      O => FT245_cnt_12_LOGIC_ZERO_1488
    );
  FT245_cnt_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_12_XORF_1513,
      O => FT245_cnt_12_DXMUX_1515
    );
  FT245_cnt_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      I0 => FT245_cnt_12_CYINIT_1512,
      I1 => FT245_cnt_12_F,
      O => FT245_cnt_12_XORF_1513
    );
  FT245_cnt_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      IA => FT245_cnt_12_LOGIC_ZERO_1488,
      IB => FT245_cnt_12_CYINIT_1512,
      SEL => FT245_cnt_12_CYSELF_1494,
      O => FT245_Mcount_cnt_cy_12_Q
    );
  FT245_cnt_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      IA => FT245_cnt_12_LOGIC_ZERO_1488,
      IB => FT245_cnt_12_LOGIC_ZERO_1488,
      SEL => FT245_cnt_12_CYSELF_1494,
      O => FT245_cnt_12_CYMUXF2_1489
    );
  FT245_cnt_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_11_Q,
      O => FT245_cnt_12_CYINIT_1512
    );
  FT245_cnt_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_12_F,
      O => FT245_cnt_12_CYSELF_1494
    );
  FT245_cnt_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_12_XORG_1496,
      O => FT245_cnt_12_DYMUX_1498
    );
  FT245_cnt_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_12_Q,
      I1 => FT245_cnt_12_G,
      O => FT245_cnt_12_XORG_1496
    );
  FT245_cnt_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mcount_cnt_cy_11_Q,
      O => FT245_cnt_12_FASTCARRY_1491
    );
  FT245_cnt_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      I0 => FT245_cnt_12_CYSELG_1479,
      I1 => FT245_cnt_12_CYSELF_1494,
      O => FT245_cnt_12_CYAND_1492
    );
  FT245_cnt_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      IA => FT245_cnt_12_CYMUXG2_1490,
      IB => FT245_cnt_12_FASTCARRY_1491,
      SEL => FT245_cnt_12_CYAND_1492,
      O => FT245_cnt_12_CYMUXFAST_1493
    );
  FT245_cnt_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y60"
    )
    port map (
      IA => FT245_cnt_12_LOGIC_ZERO_1488,
      IB => FT245_cnt_12_CYMUXF2_1489,
      SEL => FT245_cnt_12_CYSELG_1479,
      O => FT245_cnt_12_CYMUXG2_1490
    );
  FT245_cnt_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_12_G,
      O => FT245_cnt_12_CYSELG_1479
    );
  FT245_cnt_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_12_SRINV_1477
    );
  FT245_cnt_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_12_CLKINV_1476
    );
  FT245_cnt_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X34Y61"
    )
    port map (
      O => FT245_cnt_14_LOGIC_ZERO_1557
    );
  FT245_cnt_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_14_XORF_1558,
      O => FT245_cnt_14_DXMUX_1560
    );
  FT245_cnt_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X34Y61"
    )
    port map (
      I0 => FT245_cnt_14_CYINIT_1556,
      I1 => FT245_cnt_14_F,
      O => FT245_cnt_14_XORF_1558
    );
  FT245_cnt_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X34Y61"
    )
    port map (
      IA => FT245_cnt_14_LOGIC_ZERO_1557,
      IB => FT245_cnt_14_CYINIT_1556,
      SEL => FT245_cnt_14_CYSELF_1547,
      O => FT245_Mcount_cnt_cy_14_Q
    );
  FT245_cnt_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_12_CYMUXFAST_1493,
      O => FT245_cnt_14_CYINIT_1556
    );
  FT245_cnt_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_14_F,
      O => FT245_cnt_14_CYSELF_1547
    );
  FT245_cnt_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_14_XORG_1539,
      O => FT245_cnt_14_DYMUX_1541
    );
  FT245_cnt_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X34Y61"
    )
    port map (
      I0 => FT245_Mcount_cnt_cy_14_Q,
      I1 => FT245_cnt_15_rt_1536,
      O => FT245_cnt_14_XORG_1539
    );
  FT245_cnt_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt_14_SRINV_1528
    );
  FT245_cnt_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt_14_CLKINV_1527
    );
  driver1_TIMER_COUNT_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      O => driver1_TIMER_COUNT_0_LOGIC_ZERO_1585
    );
  driver1_TIMER_COUNT_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      O => driver1_TIMER_COUNT_0_LOGIC_ONE_1607
    );
  driver1_TIMER_COUNT_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_0_XORF_1608,
      O => driver1_TIMER_COUNT_0_DXMUX_1610
    );
  driver1_TIMER_COUNT_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      I0 => driver1_TIMER_COUNT_0_CYINIT_1606,
      I1 => driver1_Mcount_TIMER_COUNT_lut(0),
      O => driver1_TIMER_COUNT_0_XORF_1608
    );
  driver1_TIMER_COUNT_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      IA => driver1_TIMER_COUNT_0_LOGIC_ONE_1607,
      IB => driver1_TIMER_COUNT_0_CYINIT_1606,
      SEL => driver1_TIMER_COUNT_0_CYSELF_1597,
      O => driver1_Mcount_TIMER_COUNT_cy(0)
    );
  driver1_TIMER_COUNT_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_0_BXINV_1595,
      O => driver1_TIMER_COUNT_0_CYINIT_1606
    );
  driver1_TIMER_COUNT_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_lut(0),
      O => driver1_TIMER_COUNT_0_CYSELF_1597
    );
  driver1_TIMER_COUNT_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => driver1_TIMER_COUNT_0_BXINV_1595
    );
  driver1_TIMER_COUNT_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_0_XORG_1588,
      O => driver1_TIMER_COUNT_0_DYMUX_1590
    );
  driver1_TIMER_COUNT_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(0),
      I1 => driver1_TIMER_COUNT_0_G,
      O => driver1_TIMER_COUNT_0_XORG_1588
    );
  driver1_TIMER_COUNT_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_0_CYMUXG_1587,
      O => driver1_Mcount_TIMER_COUNT_cy(1)
    );
  driver1_TIMER_COUNT_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X18Y54"
    )
    port map (
      IA => driver1_TIMER_COUNT_0_LOGIC_ZERO_1585,
      IB => driver1_Mcount_TIMER_COUNT_cy(0),
      SEL => driver1_TIMER_COUNT_0_CYSELG_1576,
      O => driver1_TIMER_COUNT_0_CYMUXG_1587
    );
  driver1_TIMER_COUNT_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_0_G,
      O => driver1_TIMER_COUNT_0_CYSELG_1576
    );
  driver1_TIMER_COUNT_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_0_SRINV_1574
    );
  driver1_TIMER_COUNT_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_0_CLKINV_1573
    );
  driver1_TIMER_COUNT_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      O => driver1_TIMER_COUNT_2_LOGIC_ZERO_1635
    );
  driver1_TIMER_COUNT_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_2_XORF_1660,
      O => driver1_TIMER_COUNT_2_DXMUX_1662
    );
  driver1_TIMER_COUNT_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      I0 => driver1_TIMER_COUNT_2_CYINIT_1659,
      I1 => driver1_TIMER_COUNT_2_F,
      O => driver1_TIMER_COUNT_2_XORF_1660
    );
  driver1_TIMER_COUNT_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      IA => driver1_TIMER_COUNT_2_LOGIC_ZERO_1635,
      IB => driver1_TIMER_COUNT_2_CYINIT_1659,
      SEL => driver1_TIMER_COUNT_2_CYSELF_1641,
      O => driver1_Mcount_TIMER_COUNT_cy(2)
    );
  driver1_TIMER_COUNT_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      IA => driver1_TIMER_COUNT_2_LOGIC_ZERO_1635,
      IB => driver1_TIMER_COUNT_2_LOGIC_ZERO_1635,
      SEL => driver1_TIMER_COUNT_2_CYSELF_1641,
      O => driver1_TIMER_COUNT_2_CYMUXF2_1636
    );
  driver1_TIMER_COUNT_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(1),
      O => driver1_TIMER_COUNT_2_CYINIT_1659
    );
  driver1_TIMER_COUNT_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_2_F,
      O => driver1_TIMER_COUNT_2_CYSELF_1641
    );
  driver1_TIMER_COUNT_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_2_XORG_1643,
      O => driver1_TIMER_COUNT_2_DYMUX_1645
    );
  driver1_TIMER_COUNT_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(2),
      I1 => driver1_TIMER_COUNT_2_G,
      O => driver1_TIMER_COUNT_2_XORG_1643
    );
  driver1_TIMER_COUNT_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_2_CYMUXFAST_1640,
      O => driver1_Mcount_TIMER_COUNT_cy(3)
    );
  driver1_TIMER_COUNT_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(1),
      O => driver1_TIMER_COUNT_2_FASTCARRY_1638
    );
  driver1_TIMER_COUNT_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      I0 => driver1_TIMER_COUNT_2_CYSELG_1626,
      I1 => driver1_TIMER_COUNT_2_CYSELF_1641,
      O => driver1_TIMER_COUNT_2_CYAND_1639
    );
  driver1_TIMER_COUNT_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      IA => driver1_TIMER_COUNT_2_CYMUXG2_1637,
      IB => driver1_TIMER_COUNT_2_FASTCARRY_1638,
      SEL => driver1_TIMER_COUNT_2_CYAND_1639,
      O => driver1_TIMER_COUNT_2_CYMUXFAST_1640
    );
  driver1_TIMER_COUNT_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y55"
    )
    port map (
      IA => driver1_TIMER_COUNT_2_LOGIC_ZERO_1635,
      IB => driver1_TIMER_COUNT_2_CYMUXF2_1636,
      SEL => driver1_TIMER_COUNT_2_CYSELG_1626,
      O => driver1_TIMER_COUNT_2_CYMUXG2_1637
    );
  driver1_TIMER_COUNT_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_2_G,
      O => driver1_TIMER_COUNT_2_CYSELG_1626
    );
  driver1_TIMER_COUNT_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_2_SRINV_1624
    );
  driver1_TIMER_COUNT_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_2_CLKINV_1623
    );
  driver1_TIMER_COUNT_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      O => driver1_TIMER_COUNT_4_LOGIC_ZERO_1687
    );
  driver1_TIMER_COUNT_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_XORF_1712,
      O => driver1_TIMER_COUNT_4_DXMUX_1714
    );
  driver1_TIMER_COUNT_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      I0 => driver1_TIMER_COUNT_4_CYINIT_1711,
      I1 => driver1_TIMER_COUNT_4_F,
      O => driver1_TIMER_COUNT_4_XORF_1712
    );
  driver1_TIMER_COUNT_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_4_LOGIC_ZERO_1687,
      IB => driver1_TIMER_COUNT_4_CYINIT_1711,
      SEL => driver1_TIMER_COUNT_4_CYSELF_1693,
      O => driver1_Mcount_TIMER_COUNT_cy(4)
    );
  driver1_TIMER_COUNT_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_4_LOGIC_ZERO_1687,
      IB => driver1_TIMER_COUNT_4_LOGIC_ZERO_1687,
      SEL => driver1_TIMER_COUNT_4_CYSELF_1693,
      O => driver1_TIMER_COUNT_4_CYMUXF2_1688
    );
  driver1_TIMER_COUNT_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(3),
      O => driver1_TIMER_COUNT_4_CYINIT_1711
    );
  driver1_TIMER_COUNT_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_F,
      O => driver1_TIMER_COUNT_4_CYSELF_1693
    );
  driver1_TIMER_COUNT_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_XORG_1695,
      O => driver1_TIMER_COUNT_4_DYMUX_1697
    );
  driver1_TIMER_COUNT_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(4),
      I1 => driver1_TIMER_COUNT_4_G,
      O => driver1_TIMER_COUNT_4_XORG_1695
    );
  driver1_TIMER_COUNT_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_CYMUXFAST_1692,
      O => driver1_Mcount_TIMER_COUNT_cy(5)
    );
  driver1_TIMER_COUNT_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(3),
      O => driver1_TIMER_COUNT_4_FASTCARRY_1690
    );
  driver1_TIMER_COUNT_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      I0 => driver1_TIMER_COUNT_4_CYSELG_1678,
      I1 => driver1_TIMER_COUNT_4_CYSELF_1693,
      O => driver1_TIMER_COUNT_4_CYAND_1691
    );
  driver1_TIMER_COUNT_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_4_CYMUXG2_1689,
      IB => driver1_TIMER_COUNT_4_FASTCARRY_1690,
      SEL => driver1_TIMER_COUNT_4_CYAND_1691,
      O => driver1_TIMER_COUNT_4_CYMUXFAST_1692
    );
  driver1_TIMER_COUNT_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y56"
    )
    port map (
      IA => driver1_TIMER_COUNT_4_LOGIC_ZERO_1687,
      IB => driver1_TIMER_COUNT_4_CYMUXF2_1688,
      SEL => driver1_TIMER_COUNT_4_CYSELG_1678,
      O => driver1_TIMER_COUNT_4_CYMUXG2_1689
    );
  driver1_TIMER_COUNT_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_4_G,
      O => driver1_TIMER_COUNT_4_CYSELG_1678
    );
  driver1_TIMER_COUNT_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_4_SRINV_1676
    );
  driver1_TIMER_COUNT_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_4_CLKINV_1675
    );
  driver1_TIMER_COUNT_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      O => driver1_TIMER_COUNT_6_LOGIC_ZERO_1739
    );
  driver1_TIMER_COUNT_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_6_XORF_1764,
      O => driver1_TIMER_COUNT_6_DXMUX_1766
    );
  driver1_TIMER_COUNT_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      I0 => driver1_TIMER_COUNT_6_CYINIT_1763,
      I1 => driver1_TIMER_COUNT_6_F,
      O => driver1_TIMER_COUNT_6_XORF_1764
    );
  driver1_TIMER_COUNT_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_6_LOGIC_ZERO_1739,
      IB => driver1_TIMER_COUNT_6_CYINIT_1763,
      SEL => driver1_TIMER_COUNT_6_CYSELF_1745,
      O => driver1_Mcount_TIMER_COUNT_cy(6)
    );
  driver1_TIMER_COUNT_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_6_LOGIC_ZERO_1739,
      IB => driver1_TIMER_COUNT_6_LOGIC_ZERO_1739,
      SEL => driver1_TIMER_COUNT_6_CYSELF_1745,
      O => driver1_TIMER_COUNT_6_CYMUXF2_1740
    );
  driver1_TIMER_COUNT_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(5),
      O => driver1_TIMER_COUNT_6_CYINIT_1763
    );
  driver1_TIMER_COUNT_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_6_F,
      O => driver1_TIMER_COUNT_6_CYSELF_1745
    );
  driver1_TIMER_COUNT_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_6_XORG_1747,
      O => driver1_TIMER_COUNT_6_DYMUX_1749
    );
  driver1_TIMER_COUNT_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(6),
      I1 => driver1_TIMER_COUNT_6_G,
      O => driver1_TIMER_COUNT_6_XORG_1747
    );
  driver1_TIMER_COUNT_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_6_CYMUXFAST_1744,
      O => driver1_Mcount_TIMER_COUNT_cy(7)
    );
  driver1_TIMER_COUNT_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(5),
      O => driver1_TIMER_COUNT_6_FASTCARRY_1742
    );
  driver1_TIMER_COUNT_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      I0 => driver1_TIMER_COUNT_6_CYSELG_1730,
      I1 => driver1_TIMER_COUNT_6_CYSELF_1745,
      O => driver1_TIMER_COUNT_6_CYAND_1743
    );
  driver1_TIMER_COUNT_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_6_CYMUXG2_1741,
      IB => driver1_TIMER_COUNT_6_FASTCARRY_1742,
      SEL => driver1_TIMER_COUNT_6_CYAND_1743,
      O => driver1_TIMER_COUNT_6_CYMUXFAST_1744
    );
  driver1_TIMER_COUNT_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => driver1_TIMER_COUNT_6_LOGIC_ZERO_1739,
      IB => driver1_TIMER_COUNT_6_CYMUXF2_1740,
      SEL => driver1_TIMER_COUNT_6_CYSELG_1730,
      O => driver1_TIMER_COUNT_6_CYMUXG2_1741
    );
  driver1_TIMER_COUNT_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_6_G,
      O => driver1_TIMER_COUNT_6_CYSELG_1730
    );
  driver1_TIMER_COUNT_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_6_SRINV_1728
    );
  driver1_TIMER_COUNT_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_6_CLKINV_1727
    );
  driver1_TIMER_COUNT_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      O => driver1_TIMER_COUNT_8_LOGIC_ZERO_1791
    );
  driver1_TIMER_COUNT_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_8_XORF_1816,
      O => driver1_TIMER_COUNT_8_DXMUX_1818
    );
  driver1_TIMER_COUNT_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      I0 => driver1_TIMER_COUNT_8_CYINIT_1815,
      I1 => driver1_TIMER_COUNT_8_F,
      O => driver1_TIMER_COUNT_8_XORF_1816
    );
  driver1_TIMER_COUNT_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => driver1_TIMER_COUNT_8_LOGIC_ZERO_1791,
      IB => driver1_TIMER_COUNT_8_CYINIT_1815,
      SEL => driver1_TIMER_COUNT_8_CYSELF_1797,
      O => driver1_Mcount_TIMER_COUNT_cy(8)
    );
  driver1_TIMER_COUNT_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => driver1_TIMER_COUNT_8_LOGIC_ZERO_1791,
      IB => driver1_TIMER_COUNT_8_LOGIC_ZERO_1791,
      SEL => driver1_TIMER_COUNT_8_CYSELF_1797,
      O => driver1_TIMER_COUNT_8_CYMUXF2_1792
    );
  driver1_TIMER_COUNT_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(7),
      O => driver1_TIMER_COUNT_8_CYINIT_1815
    );
  driver1_TIMER_COUNT_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_8_F,
      O => driver1_TIMER_COUNT_8_CYSELF_1797
    );
  driver1_TIMER_COUNT_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_8_XORG_1799,
      O => driver1_TIMER_COUNT_8_DYMUX_1801
    );
  driver1_TIMER_COUNT_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(8),
      I1 => driver1_TIMER_COUNT_8_G,
      O => driver1_TIMER_COUNT_8_XORG_1799
    );
  driver1_TIMER_COUNT_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_8_CYMUXFAST_1796,
      O => driver1_Mcount_TIMER_COUNT_cy(9)
    );
  driver1_TIMER_COUNT_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(7),
      O => driver1_TIMER_COUNT_8_FASTCARRY_1794
    );
  driver1_TIMER_COUNT_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      I0 => driver1_TIMER_COUNT_8_CYSELG_1782,
      I1 => driver1_TIMER_COUNT_8_CYSELF_1797,
      O => driver1_TIMER_COUNT_8_CYAND_1795
    );
  driver1_TIMER_COUNT_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => driver1_TIMER_COUNT_8_CYMUXG2_1793,
      IB => driver1_TIMER_COUNT_8_FASTCARRY_1794,
      SEL => driver1_TIMER_COUNT_8_CYAND_1795,
      O => driver1_TIMER_COUNT_8_CYMUXFAST_1796
    );
  driver1_TIMER_COUNT_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => driver1_TIMER_COUNT_8_LOGIC_ZERO_1791,
      IB => driver1_TIMER_COUNT_8_CYMUXF2_1792,
      SEL => driver1_TIMER_COUNT_8_CYSELG_1782,
      O => driver1_TIMER_COUNT_8_CYMUXG2_1793
    );
  driver1_TIMER_COUNT_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_8_G,
      O => driver1_TIMER_COUNT_8_CYSELG_1782
    );
  driver1_TIMER_COUNT_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_8_SRINV_1780
    );
  driver1_TIMER_COUNT_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_8_CLKINV_1779
    );
  driver1_TIMER_COUNT_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      O => driver1_TIMER_COUNT_10_LOGIC_ZERO_1843
    );
  driver1_TIMER_COUNT_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_10_XORF_1868,
      O => driver1_TIMER_COUNT_10_DXMUX_1870
    );
  driver1_TIMER_COUNT_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      I0 => driver1_TIMER_COUNT_10_CYINIT_1867,
      I1 => driver1_TIMER_COUNT_10_F,
      O => driver1_TIMER_COUNT_10_XORF_1868
    );
  driver1_TIMER_COUNT_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => driver1_TIMER_COUNT_10_LOGIC_ZERO_1843,
      IB => driver1_TIMER_COUNT_10_CYINIT_1867,
      SEL => driver1_TIMER_COUNT_10_CYSELF_1849,
      O => driver1_Mcount_TIMER_COUNT_cy(10)
    );
  driver1_TIMER_COUNT_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => driver1_TIMER_COUNT_10_LOGIC_ZERO_1843,
      IB => driver1_TIMER_COUNT_10_LOGIC_ZERO_1843,
      SEL => driver1_TIMER_COUNT_10_CYSELF_1849,
      O => driver1_TIMER_COUNT_10_CYMUXF2_1844
    );
  driver1_TIMER_COUNT_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(9),
      O => driver1_TIMER_COUNT_10_CYINIT_1867
    );
  driver1_TIMER_COUNT_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_10_F,
      O => driver1_TIMER_COUNT_10_CYSELF_1849
    );
  driver1_TIMER_COUNT_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_10_XORG_1851,
      O => driver1_TIMER_COUNT_10_DYMUX_1853
    );
  driver1_TIMER_COUNT_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(10),
      I1 => driver1_TIMER_COUNT_10_G,
      O => driver1_TIMER_COUNT_10_XORG_1851
    );
  driver1_TIMER_COUNT_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_10_CYMUXFAST_1848,
      O => driver1_Mcount_TIMER_COUNT_cy(11)
    );
  driver1_TIMER_COUNT_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(9),
      O => driver1_TIMER_COUNT_10_FASTCARRY_1846
    );
  driver1_TIMER_COUNT_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      I0 => driver1_TIMER_COUNT_10_CYSELG_1834,
      I1 => driver1_TIMER_COUNT_10_CYSELF_1849,
      O => driver1_TIMER_COUNT_10_CYAND_1847
    );
  driver1_TIMER_COUNT_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => driver1_TIMER_COUNT_10_CYMUXG2_1845,
      IB => driver1_TIMER_COUNT_10_FASTCARRY_1846,
      SEL => driver1_TIMER_COUNT_10_CYAND_1847,
      O => driver1_TIMER_COUNT_10_CYMUXFAST_1848
    );
  driver1_TIMER_COUNT_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => driver1_TIMER_COUNT_10_LOGIC_ZERO_1843,
      IB => driver1_TIMER_COUNT_10_CYMUXF2_1844,
      SEL => driver1_TIMER_COUNT_10_CYSELG_1834,
      O => driver1_TIMER_COUNT_10_CYMUXG2_1845
    );
  driver1_TIMER_COUNT_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_10_G,
      O => driver1_TIMER_COUNT_10_CYSELG_1834
    );
  driver1_TIMER_COUNT_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_10_SRINV_1832
    );
  driver1_TIMER_COUNT_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_10_CLKINV_1831
    );
  driver1_TIMER_COUNT_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      O => driver1_TIMER_COUNT_12_LOGIC_ZERO_1895
    );
  driver1_TIMER_COUNT_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_12_XORF_1920,
      O => driver1_TIMER_COUNT_12_DXMUX_1922
    );
  driver1_TIMER_COUNT_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      I0 => driver1_TIMER_COUNT_12_CYINIT_1919,
      I1 => driver1_TIMER_COUNT_12_F,
      O => driver1_TIMER_COUNT_12_XORF_1920
    );
  driver1_TIMER_COUNT_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      IA => driver1_TIMER_COUNT_12_LOGIC_ZERO_1895,
      IB => driver1_TIMER_COUNT_12_CYINIT_1919,
      SEL => driver1_TIMER_COUNT_12_CYSELF_1901,
      O => driver1_Mcount_TIMER_COUNT_cy(12)
    );
  driver1_TIMER_COUNT_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      IA => driver1_TIMER_COUNT_12_LOGIC_ZERO_1895,
      IB => driver1_TIMER_COUNT_12_LOGIC_ZERO_1895,
      SEL => driver1_TIMER_COUNT_12_CYSELF_1901,
      O => driver1_TIMER_COUNT_12_CYMUXF2_1896
    );
  driver1_TIMER_COUNT_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(11),
      O => driver1_TIMER_COUNT_12_CYINIT_1919
    );
  driver1_TIMER_COUNT_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_12_F,
      O => driver1_TIMER_COUNT_12_CYSELF_1901
    );
  driver1_TIMER_COUNT_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_12_XORG_1903,
      O => driver1_TIMER_COUNT_12_DYMUX_1905
    );
  driver1_TIMER_COUNT_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(12),
      I1 => driver1_TIMER_COUNT_12_G,
      O => driver1_TIMER_COUNT_12_XORG_1903
    );
  driver1_TIMER_COUNT_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_12_CYMUXFAST_1900,
      O => driver1_Mcount_TIMER_COUNT_cy(13)
    );
  driver1_TIMER_COUNT_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(11),
      O => driver1_TIMER_COUNT_12_FASTCARRY_1898
    );
  driver1_TIMER_COUNT_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      I0 => driver1_TIMER_COUNT_12_CYSELG_1886,
      I1 => driver1_TIMER_COUNT_12_CYSELF_1901,
      O => driver1_TIMER_COUNT_12_CYAND_1899
    );
  driver1_TIMER_COUNT_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      IA => driver1_TIMER_COUNT_12_CYMUXG2_1897,
      IB => driver1_TIMER_COUNT_12_FASTCARRY_1898,
      SEL => driver1_TIMER_COUNT_12_CYAND_1899,
      O => driver1_TIMER_COUNT_12_CYMUXFAST_1900
    );
  driver1_TIMER_COUNT_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      IA => driver1_TIMER_COUNT_12_LOGIC_ZERO_1895,
      IB => driver1_TIMER_COUNT_12_CYMUXF2_1896,
      SEL => driver1_TIMER_COUNT_12_CYSELG_1886,
      O => driver1_TIMER_COUNT_12_CYMUXG2_1897
    );
  driver1_TIMER_COUNT_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_12_G,
      O => driver1_TIMER_COUNT_12_CYSELG_1886
    );
  driver1_TIMER_COUNT_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_12_SRINV_1884
    );
  driver1_TIMER_COUNT_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_12_CLKINV_1883
    );
  driver1_TIMER_COUNT_12 : X_SFF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_12_DXMUX_1922,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_12_CLKINV_1883,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_12_SRINV_1884,
      O => driver1_TIMER_COUNT(12)
    );
  driver1_TIMER_COUNT_15 : X_SFF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_14_DYMUX_1957,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_14_CLKINV_1935,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_14_SRINV_1936,
      O => driver1_TIMER_COUNT(15)
    );
  driver1_TIMER_COUNT_14 : X_SFF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_14_DXMUX_1974,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_14_CLKINV_1935,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_14_SRINV_1936,
      O => driver1_TIMER_COUNT(14)
    );
  driver1_TIMER_COUNT_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      O => driver1_TIMER_COUNT_14_LOGIC_ZERO_1947
    );
  driver1_TIMER_COUNT_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_14_XORF_1972,
      O => driver1_TIMER_COUNT_14_DXMUX_1974
    );
  driver1_TIMER_COUNT_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      I0 => driver1_TIMER_COUNT_14_CYINIT_1971,
      I1 => driver1_TIMER_COUNT_14_F,
      O => driver1_TIMER_COUNT_14_XORF_1972
    );
  driver1_TIMER_COUNT_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      IA => driver1_TIMER_COUNT_14_LOGIC_ZERO_1947,
      IB => driver1_TIMER_COUNT_14_CYINIT_1971,
      SEL => driver1_TIMER_COUNT_14_CYSELF_1953,
      O => driver1_Mcount_TIMER_COUNT_cy(14)
    );
  driver1_TIMER_COUNT_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      IA => driver1_TIMER_COUNT_14_LOGIC_ZERO_1947,
      IB => driver1_TIMER_COUNT_14_LOGIC_ZERO_1947,
      SEL => driver1_TIMER_COUNT_14_CYSELF_1953,
      O => driver1_TIMER_COUNT_14_CYMUXF2_1948
    );
  driver1_TIMER_COUNT_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(13),
      O => driver1_TIMER_COUNT_14_CYINIT_1971
    );
  driver1_TIMER_COUNT_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_14_F,
      O => driver1_TIMER_COUNT_14_CYSELF_1953
    );
  driver1_TIMER_COUNT_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_14_XORG_1955,
      O => driver1_TIMER_COUNT_14_DYMUX_1957
    );
  driver1_TIMER_COUNT_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      I0 => driver1_Mcount_TIMER_COUNT_cy(14),
      I1 => driver1_TIMER_COUNT_14_G,
      O => driver1_TIMER_COUNT_14_XORG_1955
    );
  driver1_TIMER_COUNT_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_Mcount_TIMER_COUNT_cy(13),
      O => driver1_TIMER_COUNT_14_FASTCARRY_1950
    );
  driver1_TIMER_COUNT_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      I0 => driver1_TIMER_COUNT_14_CYSELG_1938,
      I1 => driver1_TIMER_COUNT_14_CYSELF_1953,
      O => driver1_TIMER_COUNT_14_CYAND_1951
    );
  driver1_TIMER_COUNT_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      IA => driver1_TIMER_COUNT_14_CYMUXG2_1949,
      IB => driver1_TIMER_COUNT_14_FASTCARRY_1950,
      SEL => driver1_TIMER_COUNT_14_CYAND_1951,
      O => driver1_TIMER_COUNT_14_CYMUXFAST_1952
    );
  driver1_TIMER_COUNT_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      IA => driver1_TIMER_COUNT_14_LOGIC_ZERO_1947,
      IB => driver1_TIMER_COUNT_14_CYMUXF2_1948,
      SEL => driver1_TIMER_COUNT_14_CYSELG_1938,
      O => driver1_TIMER_COUNT_14_CYMUXG2_1949
    );
  driver1_TIMER_COUNT_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_14_G,
      O => driver1_TIMER_COUNT_14_CYSELG_1938
    );
  driver1_TIMER_COUNT_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_14_SRINV_1936
    );
  driver1_TIMER_COUNT_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y61",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_14_CLKINV_1935
    );
  driver1_TIMER_COUNT_16_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(16),
      O => driver1_TIMER_COUNT_16_rt_1993
    );
  driver1_TIMER_COUNT_16 : X_SFF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_16_DXMUX_1998,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_16_CLKINV_1984,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_16_SRINV_1985,
      O => driver1_TIMER_COUNT(16)
    );
  driver1_TIMER_COUNT_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_16_XORF_1996,
      O => driver1_TIMER_COUNT_16_DXMUX_1998
    );
  driver1_TIMER_COUNT_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X18Y62"
    )
    port map (
      I0 => driver1_TIMER_COUNT_16_CYINIT_1995,
      I1 => driver1_TIMER_COUNT_16_rt_1993,
      O => driver1_TIMER_COUNT_16_XORF_1996
    );
  driver1_TIMER_COUNT_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_14_CYMUXFAST_1952,
      O => driver1_TIMER_COUNT_16_CYINIT_1995
    );
  driver1_TIMER_COUNT_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_TIMER_COUNT_cmp_eq0000,
      O => driver1_TIMER_COUNT_16_SRINV_1985
    );
  driver1_TIMER_COUNT_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_TIMER_COUNT_16_CLKINV_1984
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  CLK_PAR_IBUF : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_PAR,
      O => CLK_PAR_INBUF
    );
  CLK_PAR_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD182",
      PATHPULSE => 605 ps
    )
    port map (
      I => CLK_PAR_INBUF,
      O => CLK_PAR_IBUF_708
    );
  LED_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => LED_0_O,
      O => LED(0)
    );
  LED_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => LED_1_O,
      O => LED(1)
    );
  LED_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => LED_2_O,
      O => LED(2)
    );
  LED_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => LED_3_O,
      O => LED(3)
    );
  PARITY_IN_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 605 ps
    )
    port map (
      I => PARITY_IN,
      O => PARITY_IN_INBUF
    );
  PARITY_IN_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 605 ps
    )
    port map (
      I => PARITY_IN_INBUF,
      O => PARITY_IN_IBUF_713
    );
  HALL11_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL11,
      O => HALL11_INBUF
    );
  HALL11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL11_INBUF,
      O => HALL11_IBUF_710
    );
  USB_WR_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => USB_WR_O,
      O => USB_WR
    );
  HALL21_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL21,
      O => HALL21_INBUF
    );
  HALL21_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL21_INBUF,
      O => HALL21_IBUF_711
    );
  HALL31_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL31,
      O => HALL31_INBUF
    );
  HALL31_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL31_INBUF,
      O => HALL31_IBUF_712
    );
  DATA_USB_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => DATA_USB_0_O,
      O => DATA_USB(0)
    );
  DATA_USB_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => DATA_USB_1_O,
      O => DATA_USB(1)
    );
  MOTOR_NUM_0_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 605 ps
    )
    port map (
      I => MOTOR_NUM(0),
      O => MOTOR_NUM_0_INBUF
    );
  MOTOR_NUM_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 605 ps
    )
    port map (
      I => MOTOR_NUM_0_INBUF,
      O => MOTOR_NUM_0_IBUF_716
    );
  M1n1_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => M1n1_O,
      O => M1n1
    );
  DATA_USB_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => DATA_USB_2_O,
      O => DATA_USB(2)
    );
  MOTOR_NUM_1_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 605 ps
    )
    port map (
      I => MOTOR_NUM(1),
      O => MOTOR_NUM_1_INBUF
    );
  MOTOR_NUM_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 605 ps
    )
    port map (
      I => MOTOR_NUM_1_INBUF,
      O => MOTOR_NUM_1_IBUF_718
    );
  DATA_USB_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => DATA_USB_3_O,
      O => DATA_USB(3)
    );
  M2n1_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => M2n1_O,
      O => M2n1
    );
  M1p1_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => M1p1_O,
      O => M1p1
    );
  DATA_USB_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => DATA_USB_4_O,
      O => DATA_USB(4)
    );
  TXE_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 605 ps
    )
    port map (
      I => TXE,
      O => TXE_INBUF
    );
  DATA_USB_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => DATA_USB_5_O,
      O => DATA_USB(5)
    );
  M3n1_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => M3n1_O,
      O => M3n1
    );
  M2p1_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => M2p1_O,
      O => M2p1
    );
  DATA_USB_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => DATA_USB_6_O,
      O => DATA_USB(6)
    );
  RPM_IN_0_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(0),
      O => RPM_IN_0_INBUF
    );
  DATA_USB_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => DATA_USB_7_O,
      O => DATA_USB(7)
    );
  RPM_IN_1_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(1),
      O => RPM_IN_1_INBUF
    );
  M3p1_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => M3p1_O,
      O => M3p1
    );
  RPM_IN_2_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(2),
      O => RPM_IN_2_INBUF
    );
  RPM_IN_3_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(3),
      O => RPM_IN_3_INBUF
    );
  RPM_IN_4_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(4),
      O => RPM_IN_4_INBUF
    );
  RPM_IN_5_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(5),
      O => RPM_IN_5_INBUF
    );
  RPM_IN_6_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(6),
      O => RPM_IN_6_INBUF
    );
  RPM_IN_7_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN(7),
      O => RPM_IN_7_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX6"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX6",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX6",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  FT245_cnt_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt_cmp_eq0000,
      O => FT245_cnt_cmp_eq0000_0
    );
  FT245_cnt_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001110_O_pack_1,
      O => FT245_cnt1_not0001110_O
    );
  driver1_PWM_1_oc_out_cmp_ge0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X34Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_oc_out_cmp_ge00002_SW0_O_pack_1,
      O => driver1_PWM_1_oc_out_cmp_ge00002_SW0_O
    );
  FT245_cnt1_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_Mshreg_cnt1_FSM_FFd6_2334,
      O => FT245_cnt1_FSM_FFd6_DYMUX_2337
    );
  FT245_cnt1_FSM_FFd6_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_FSM_FFd2_743,
      O => FT245_cnt1_FSM_FFd6_DIG_MUX_2326
    );
  FT245_cnt1_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt1_FSM_FFd6_CLKINV_2324
    );
  FT245_cnt1_FSM_FFd6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_cnt1_FSM_FFd6_CEINV_2323
    );
  FT245_USB_WR_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_mux0000,
      O => FT245_USB_WR_DXMUX_2375
    );
  FT245_USB_WR_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_mux0000_4_Q,
      O => FT245_USB_WR_DYMUX_2362
    );
  FT245_USB_WR_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_USB_WR_CLKINV_2353
    );
  FT245_USB_WR_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_USB_WR_CEINV_2352
    );
  FT245_DATA_USB_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_mux0000_1_Q,
      O => FT245_DATA_USB_6_DXMUX_2413
    );
  FT245_DATA_USB_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_mux0000_3_Q,
      O => FT245_DATA_USB_6_DYMUX_2400
    );
  FT245_DATA_USB_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_DATA_USB_6_CLKINV_2391
    );
  FT245_DATA_USB_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_DATA_USB_6_CEINV_2390
    );
  FT245_cnt1_not0001144_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y60",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001144_2427,
      O => FT245_cnt1_not0001144_0
    );
  FT245_cnt1_not0001157_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y58",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001157_2439,
      O => FT245_cnt1_not0001157_0
    );
  FT245_cnt1_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001,
      O => FT245_cnt1_not0001_0
    );
  driver1_M_PID_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_M_PID_5_BYINV_2484,
      O => driver1_M_PID_5_DYMUX_2485
    );
  driver1_M_PID_5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => driver1_M_PID_5_BYINV_2484
    );
  driver1_M_PID_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_M_PID_5_CLKINV_2483
    );
  driver1_M_PID_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_709,
      O => driver1_M_PID_5_CEINV_2482
    );
  driver1_CLK_TIMER_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_BYINV_2496,
      O => driver1_CLK_TIMER_DYMUX_2497
    );
  driver1_CLK_TIMER_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => driver1_CLK_TIMER_BYINV_2496
    );
  driver1_CLK_TIMER_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_not0001,
      O => driver1_CLK_TIMER_SRINV_2495
    );
  driver1_CLK_TIMER_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y59",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_CLK_TIMER_CLKINV_2494
    );
  FT245_DATA_USB_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_mux0000_6_Q,
      O => FT245_DATA_USB_1_DXMUX_2578
    );
  FT245_DATA_USB_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_N0_pack_2,
      O => FT245_N0
    );
  FT245_DATA_USB_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_DATA_USB_1_CLKINV_2562
    );
  FT245_DATA_USB_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y55",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_DATA_USB_1_CEINV_2561
    );
  FT245_cnt1_FSM_FFd3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_FSM_FFd4_746,
      O => FT245_cnt1_FSM_FFd3_DXMUX_2598
    );
  FT245_cnt1_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_FSM_FFd3_750,
      O => FT245_cnt1_FSM_FFd3_DYMUX_2592
    );
  FT245_cnt1_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt1_FSM_FFd3_CLKINV_2590
    );
  FT245_cnt1_FSM_FFd3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_cnt1_FSM_FFd3_CEINV_2589
    );
  FT245_cnt1_FSM_FFd5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_FSM_FFd6_745,
      O => FT245_cnt1_FSM_FFd5_DXMUX_2618
    );
  FT245_cnt1_FSM_FFd5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_FSM_FFd5_749,
      O => FT245_cnt1_FSM_FFd5_DYMUX_2612
    );
  FT245_cnt1_FSM_FFd5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => FT245_cnt1_FSM_FFd5_CLKINV_2610
    );
  FT245_cnt1_FSM_FFd5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y57",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_cnt1_FSM_FFd5_CEINV_2609
    );
  driver1_PWM_1_oc_out_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_oc_out_BYINV_2629,
      O => driver1_PWM_1_oc_out_DYMUX_2630
    );
  driver1_PWM_1_oc_out_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => driver1_PWM_1_oc_out_BYINV_2629
    );
  driver1_PWM_1_oc_out_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_PWM_1_oc_out_cmp_ge0000,
      O => driver1_PWM_1_oc_out_SRINV_2628
    );
  driver1_PWM_1_oc_out_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y23",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => driver1_PWM_1_oc_out_CLKINV_2627
    );
  FT245_cnt1_not0001121_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X35Y56",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001121_2644,
      O => FT245_cnt1_not0001121_0
    );
  driver1_PWM_1_Cnt_1_9 : X_FF
    generic map(
      LOC => "SLICE_X35Y42",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_8_DYMUX_969,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_8_CLKINV_948,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(9)
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X19Y57"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(10),
      ADR1 => driver1_TIMER_COUNT(1),
      ADR2 => driver1_TIMER_COUNT(8),
      ADR3 => driver1_TIMER_COUNT(9),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(2)
    );
  driver1_CLK_TIMER_not0001_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X16Y56"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(7),
      ADR1 => driver1_TIMER_COUNT(8),
      ADR2 => driver1_TIMER_COUNT(4),
      ADR3 => driver1_TIMER_COUNT(6),
      O => driver1_CLK_TIMER_not0001_wg_lut(1)
    );
  driver1_CLK_TIMER_not0001_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X16Y57"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(1),
      ADR1 => driver1_TIMER_COUNT(13),
      ADR2 => driver1_TIMER_COUNT(14),
      ADR3 => driver1_TIMER_COUNT(12),
      O => driver1_CLK_TIMER_not0001_wg_lut(3)
    );
  driver1_TIMER_COUNT_13 : X_SFF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_12_DYMUX_1905,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_12_CLKINV_1883,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_12_SRINV_1884,
      O => driver1_TIMER_COUNT(13)
    );
  driver1_TIMER_COUNT_10 : X_SFF
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_10_DXMUX_1870,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_10_CLKINV_1831,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_10_SRINV_1832,
      O => driver1_TIMER_COUNT(10)
    );
  driver1_TIMER_COUNT_11 : X_SFF
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_10_DYMUX_1853,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_10_CLKINV_1831,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_10_SRINV_1832,
      O => driver1_TIMER_COUNT(11)
    );
  driver1_TIMER_COUNT_8 : X_SFF
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_8_DXMUX_1818,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_8_CLKINV_1779,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_8_SRINV_1780,
      O => driver1_TIMER_COUNT(8)
    );
  driver1_PWM_1_Cnt_1_1 : X_FF
    generic map(
      LOC => "SLICE_X35Y38",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_DYMUX_774,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_0_CLKINV_758,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(1)
    );
  driver1_PWM_1_Mcount_Cnt_1_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X35Y38"
    )
    port map (
      ADR0 => driver1_PWM_1_Cnt_1(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Mcount_Cnt_1_lut(0)
    );
  driver1_PWM_1_Cnt_1_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y38",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_0_DXMUX_793,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_0_CLKINV_758,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(0)
    );
  driver1_PWM_1_Cnt_1_3 : X_FF
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_DYMUX_825,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_2_CLKINV_804,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(3)
    );
  driver1_PWM_1_Cnt_1_2 : X_FF
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_2_DXMUX_841,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_2_CLKINV_804,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(2)
    );
  driver1_PWM_1_Cnt_1_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y40",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_DYMUX_873,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_4_CLKINV_852,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(5)
    );
  driver1_PWM_1_Cnt_1_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y40",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_4_DXMUX_889,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_4_CLKINV_852,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(4)
    );
  driver1_PWM_1_Cnt_1_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_DYMUX_921,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_6_CLKINV_900,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(7)
    );
  driver1_PWM_1_Cnt_1_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_Cnt_1_6_DXMUX_937,
      CE => VCC,
      CLK => driver1_PWM_1_Cnt_1_6_CLKINV_900,
      SET => GND,
      RST => GND,
      O => driver1_PWM_1_Cnt_1(6)
    );
  driver1_TIMER_COUNT_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y57"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(12),
      ADR1 => driver1_TIMER_COUNT(13),
      ADR2 => driver1_TIMER_COUNT(0),
      ADR3 => driver1_TIMER_COUNT(11),
      O => driver1_TIMER_COUNT_cmp_eq0000_wg_lut(3)
    );
  driver1_CLK_TIMER_not0001_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X16Y57"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(9),
      ADR1 => driver1_TIMER_COUNT(2),
      ADR2 => driver1_TIMER_COUNT(11),
      ADR3 => driver1_TIMER_COUNT(10),
      O => driver1_CLK_TIMER_not0001_wg_lut(2)
    );
  driver1_CLK_TIMER_not0001_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X16Y58"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(15),
      ADR1 => driver1_TIMER_COUNT(0),
      ADR2 => driver1_TIMER_COUNT(16),
      ADR3 => driver1_TIMER_COUNT(3),
      O => driver1_CLK_TIMER_not0001_wg_lut(4)
    );
  FT245_cnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X34Y54",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_0_DYMUX_1183,
      CE => VCC,
      CLK => FT245_cnt_0_CLKINV_1166,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_0_SRINV_1167,
      O => FT245_cnt(1)
    );
  FT245_Mcount_cnt_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X34Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FT245_cnt(0),
      O => FT245_Mcount_cnt_lut(0)
    );
  FT245_cnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X34Y54",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_0_DXMUX_1203,
      CE => VCC,
      CLK => FT245_cnt_0_CLKINV_1166,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_0_SRINV_1167,
      O => FT245_cnt(0)
    );
  FT245_cnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X34Y55",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_2_DYMUX_1238,
      CE => VCC,
      CLK => FT245_cnt_2_CLKINV_1216,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_2_SRINV_1217,
      O => FT245_cnt(3)
    );
  FT245_cnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X34Y55",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_2_DXMUX_1255,
      CE => VCC,
      CLK => FT245_cnt_2_CLKINV_1216,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_2_SRINV_1217,
      O => FT245_cnt(2)
    );
  FT245_cnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X34Y56",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_4_DYMUX_1290,
      CE => VCC,
      CLK => FT245_cnt_4_CLKINV_1268,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_4_SRINV_1269,
      O => FT245_cnt(5)
    );
  FT245_cnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X34Y56",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_4_DXMUX_1307,
      CE => VCC,
      CLK => FT245_cnt_4_CLKINV_1268,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_4_SRINV_1269,
      O => FT245_cnt(4)
    );
  FT245_cnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X34Y57",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_6_DYMUX_1342,
      CE => VCC,
      CLK => FT245_cnt_6_CLKINV_1320,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_6_SRINV_1321,
      O => FT245_cnt(7)
    );
  FT245_cnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X34Y57",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_6_DXMUX_1359,
      CE => VCC,
      CLK => FT245_cnt_6_CLKINV_1320,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_6_SRINV_1321,
      O => FT245_cnt(6)
    );
  FT245_cnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X34Y58",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_8_DYMUX_1394,
      CE => VCC,
      CLK => FT245_cnt_8_CLKINV_1372,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_8_SRINV_1373,
      O => FT245_cnt(9)
    );
  FT245_cnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X34Y58",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_8_DXMUX_1411,
      CE => VCC,
      CLK => FT245_cnt_8_CLKINV_1372,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_8_SRINV_1373,
      O => FT245_cnt(8)
    );
  FT245_cnt_11 : X_SFF
    generic map(
      LOC => "SLICE_X34Y59",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_10_DYMUX_1446,
      CE => VCC,
      CLK => FT245_cnt_10_CLKINV_1424,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_10_SRINV_1425,
      O => FT245_cnt(11)
    );
  FT245_cnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X34Y59",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_10_DXMUX_1463,
      CE => VCC,
      CLK => FT245_cnt_10_CLKINV_1424,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_10_SRINV_1425,
      O => FT245_cnt(10)
    );
  FT245_cnt_13 : X_SFF
    generic map(
      LOC => "SLICE_X34Y60",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_12_DYMUX_1498,
      CE => VCC,
      CLK => FT245_cnt_12_CLKINV_1476,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_12_SRINV_1477,
      O => FT245_cnt(13)
    );
  FT245_cnt_12 : X_SFF
    generic map(
      LOC => "SLICE_X34Y60",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_12_DXMUX_1515,
      CE => VCC,
      CLK => FT245_cnt_12_CLKINV_1476,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_12_SRINV_1477,
      O => FT245_cnt(12)
    );
  FT245_cnt_15_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X34Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FT245_cnt(15),
      ADR3 => VCC,
      O => FT245_cnt_15_rt_1536
    );
  FT245_cnt_15 : X_SFF
    generic map(
      LOC => "SLICE_X34Y61",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_14_DYMUX_1541,
      CE => VCC,
      CLK => FT245_cnt_14_CLKINV_1527,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_14_SRINV_1528,
      O => FT245_cnt(15)
    );
  FT245_cnt_14 : X_SFF
    generic map(
      LOC => "SLICE_X34Y61",
      INIT => '0'
    )
    port map (
      I => FT245_cnt_14_DXMUX_1560,
      CE => VCC,
      CLK => FT245_cnt_14_CLKINV_1527,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FT245_cnt_14_SRINV_1528,
      O => FT245_cnt(14)
    );
  driver1_TIMER_COUNT_1 : X_SFF
    generic map(
      LOC => "SLICE_X18Y54",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_0_DYMUX_1590,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_0_CLKINV_1573,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_0_SRINV_1574,
      O => driver1_TIMER_COUNT(1)
    );
  driver1_Mcount_TIMER_COUNT_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X18Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_TIMER_COUNT(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_Mcount_TIMER_COUNT_lut(0)
    );
  driver1_TIMER_COUNT_0 : X_SFF
    generic map(
      LOC => "SLICE_X18Y54",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_0_DXMUX_1610,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_0_CLKINV_1573,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_0_SRINV_1574,
      O => driver1_TIMER_COUNT(0)
    );
  driver1_TIMER_COUNT_3 : X_SFF
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_2_DYMUX_1645,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_2_CLKINV_1623,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_2_SRINV_1624,
      O => driver1_TIMER_COUNT(3)
    );
  driver1_TIMER_COUNT_2 : X_SFF
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_2_DXMUX_1662,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_2_CLKINV_1623,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_2_SRINV_1624,
      O => driver1_TIMER_COUNT(2)
    );
  driver1_TIMER_COUNT_5 : X_SFF
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_4_DYMUX_1697,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_4_CLKINV_1675,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_4_SRINV_1676,
      O => driver1_TIMER_COUNT(5)
    );
  driver1_TIMER_COUNT_4 : X_SFF
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_4_DXMUX_1714,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_4_CLKINV_1675,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_4_SRINV_1676,
      O => driver1_TIMER_COUNT(4)
    );
  driver1_TIMER_COUNT_7 : X_SFF
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_6_DYMUX_1749,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_6_CLKINV_1727,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_6_SRINV_1728,
      O => driver1_TIMER_COUNT(7)
    );
  driver1_TIMER_COUNT_6 : X_SFF
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_6_DXMUX_1766,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_6_CLKINV_1727,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_6_SRINV_1728,
      O => driver1_TIMER_COUNT(6)
    );
  driver1_TIMER_COUNT_9 : X_SFF
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => '0'
    )
    port map (
      I => driver1_TIMER_COUNT_8_DYMUX_1801,
      CE => VCC,
      CLK => driver1_TIMER_COUNT_8_CLKINV_1779,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_TIMER_COUNT_8_SRINV_1780,
      O => driver1_TIMER_COUNT(9)
    );
  TXE_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 605 ps
    )
    port map (
      I => TXE_INBUF,
      O => TXE_IBUF_723
    );
  RPM_IN_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_0_INBUF,
      O => RPM_IN_0_IBUF_727
    );
  RPM_IN_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_1_INBUF,
      O => RPM_IN_1_IBUF_728
    );
  RPM_IN_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_2_INBUF,
      O => RPM_IN_2_IBUF_730
    );
  RPM_IN_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_3_INBUF,
      O => RPM_IN_3_IBUF_731
    );
  RPM_IN_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_4_INBUF,
      O => RPM_IN_4_IBUF_732
    );
  RPM_IN_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_5_INBUF,
      O => RPM_IN_5_IBUF_733
    );
  RPM_IN_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_6_INBUF,
      O => RPM_IN_6_IBUF_734
    );
  RPM_IN_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 605 ps
    )
    port map (
      I => RPM_IN_7_INBUF,
      O => RPM_IN_7_IBUF_735
    );
  FT245_cnt1_not0001110 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X35Y57"
    )
    port map (
      ADR0 => FT245_cnt(4),
      ADR1 => FT245_cnt(7),
      ADR2 => FT245_cnt(3),
      ADR3 => FT245_cnt(5),
      O => FT245_cnt1_not0001110_O_pack_1
    );
  FT245_cnt1_not0001171 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X35Y57"
    )
    port map (
      ADR0 => FT245_cnt1_not0001157_0,
      ADR1 => FT245_cnt1_not0001121_0,
      ADR2 => FT245_cnt1_not0001110_O,
      ADR3 => FT245_cnt1_not0001144_0,
      O => FT245_cnt_cmp_eq0000
    );
  driver1_PWM_1_oc_out_cmp_ge00002_SW0 : X_LUT4
    generic map(
      INIT => X"8880",
      LOC => "SLICE_X34Y40"
    )
    port map (
      ADR0 => driver1_PWM_1_Cnt_1(7),
      ADR1 => driver1_PWM_1_Cnt_1(8),
      ADR2 => driver1_PWM_1_Cnt_1(5),
      ADR3 => driver1_PWM_1_Cnt_1(6),
      O => driver1_PWM_1_oc_out_cmp_ge00002_SW0_O_pack_1
    );
  driver1_PWM_1_oc_out_cmp_ge00002 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X34Y40"
    )
    port map (
      ADR0 => driver1_M_PID(5),
      ADR1 => driver1_PWM_1_Cnt_1(10),
      ADR2 => driver1_PWM_1_Cnt_1(9),
      ADR3 => driver1_PWM_1_oc_out_cmp_ge00002_SW0_O,
      O => driver1_PWM_1_oc_out_cmp_ge0000
    );
  FT245_Mshreg_cnt1_FSM_FFd6 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X32Y54"
    )
    port map (
      A0 => GND,
      A1 => GND,
      A2 => GND,
      A3 => GND,
      D => FT245_cnt1_FSM_FFd6_DIG_MUX_2326,
      CE => FT245_cnt1_FSM_FFd6_WSG,
      CLK => FT245_cnt1_FSM_FFd6_CLKINV_2324,
      Q => FT245_Mshreg_cnt1_FSM_FFd6_2334,
      Q15 => NLW_FT245_Mshreg_cnt1_FSM_FFd6_Q15_UNCONNECTED
    );
  FT245_cnt1_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '1'
    )
    port map (
      I => FT245_cnt1_FSM_FFd6_DYMUX_2337,
      CE => FT245_cnt1_FSM_FFd6_CEINV_2323,
      CLK => FT245_cnt1_FSM_FFd6_CLKINV_2324,
      SET => GND,
      RST => GND,
      O => FT245_cnt1_FSM_FFd6_745
    );
  FT245_DATA_USB_mux0000_4_1 : X_LUT4
    generic map(
      INIT => X"FCCC",
      LOC => "SLICE_X33Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt1_FSM_FFd2_743,
      ADR2 => FT245_N0,
      ADR3 => FT245_DATA_USB_3_Q,
      O => FT245_DATA_USB_mux0000_4_Q
    );
  FT245_DATA_USB_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => '0'
    )
    port map (
      I => FT245_USB_WR_DYMUX_2362,
      CE => FT245_USB_WR_CEINV_2352,
      CLK => FT245_USB_WR_CLKINV_2353,
      SET => GND,
      RST => GND,
      O => FT245_DATA_USB_3_Q
    );
  FT245_cnt1_FSM_Out51 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X33Y57"
    )
    port map (
      ADR0 => FT245_cnt1_FSM_FFd4_746,
      ADR1 => FT245_cnt1_FSM_FFd2_743,
      ADR2 => VCC,
      ADR3 => FT245_cnt1_FSM_FFd6_745,
      O => FT245_mux0000
    );
  FT245_USB_WR : X_FF
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => '0'
    )
    port map (
      I => FT245_USB_WR_DXMUX_2375,
      CE => FT245_USB_WR_CEINV_2352,
      CLK => FT245_USB_WR_CLKINV_2353,
      SET => GND,
      RST => GND,
      O => FT245_USB_WR_714
    );
  FT245_DATA_USB_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X33Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_N0,
      ADR2 => FT245_cnt1_FSM_FFd2_743,
      ADR3 => FT245_DATA_USB_4_Q,
      O => FT245_DATA_USB_mux0000_3_Q
    );
  FT245_DATA_USB_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      I => FT245_DATA_USB_6_DYMUX_2400,
      CE => FT245_DATA_USB_6_CEINV_2390,
      CLK => FT245_DATA_USB_6_CLKINV_2391,
      SET => GND,
      RST => GND,
      O => FT245_DATA_USB_4_Q
    );
  FT245_DATA_USB_mux0000_1_2 : X_LUT4
    generic map(
      INIT => X"FCF0",
      LOC => "SLICE_X33Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_N0,
      ADR2 => FT245_cnt1_FSM_FFd2_743,
      ADR3 => FT245_DATA_USB_6_Q,
      O => FT245_DATA_USB_mux0000_1_Q
    );
  FT245_DATA_USB_6 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      I => FT245_DATA_USB_6_DXMUX_2413,
      CE => FT245_DATA_USB_6_CEINV_2390,
      CLK => FT245_DATA_USB_6_CLKINV_2391,
      SET => GND,
      RST => GND,
      O => FT245_DATA_USB_6_Q
    );
  FT245_cnt1_not0001144 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X35Y60"
    )
    port map (
      ADR0 => FT245_cnt(14),
      ADR1 => FT245_cnt(11),
      ADR2 => FT245_cnt(13),
      ADR3 => FT245_cnt(12),
      O => FT245_cnt1_not0001144_2427
    );
  FT245_cnt1_not0001157 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X35Y58"
    )
    port map (
      ADR0 => FT245_cnt(6),
      ADR1 => FT245_cnt(10),
      ADR2 => FT245_cnt(8),
      ADR3 => FT245_cnt(9),
      O => FT245_cnt1_not0001157_2439
    );
  FT245_cnt1_not00012 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X33Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => TXE_IBUF_723,
      ADR2 => VCC,
      ADR3 => FT245_cnt_cmp_eq0000_0,
      O => FT245_cnt1_not0001
    );
  driver1_M1p_or00001 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X54Y11"
    )
    port map (
      ADR0 => HALL31_IBUF_712,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => HALL11_IBUF_710,
      O => M1p1_OBUF_2467
    );
  driver1_M1n1 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X54Y11"
    )
    port map (
      ADR0 => HALL31_IBUF_712,
      ADR1 => driver1_PWM_1_oc_out_748,
      ADR2 => VCC,
      ADR3 => HALL11_IBUF_710,
      O => M1n1_OBUF_2475
    );
  driver1_M_PID_5 : X_FF
    generic map(
      LOC => "SLICE_X29Y47",
      INIT => '0'
    )
    port map (
      I => driver1_M_PID_5_DYMUX_2485,
      CE => driver1_M_PID_5_CEINV_2482,
      CLK => driver1_M_PID_5_CLKINV_2483,
      SET => GND,
      RST => GND,
      O => driver1_M_PID(5)
    );
  driver1_CLK_TIMER : X_SFF
    generic map(
      LOC => "SLICE_X16Y59",
      INIT => '0'
    )
    port map (
      I => driver1_CLK_TIMER_DYMUX_2497,
      CE => VCC,
      CLK => driver1_CLK_TIMER_CLKINV_2494,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_CLK_TIMER_SRINV_2495,
      O => driver1_CLK_TIMER_709
    );
  driver1_M2p_or00001 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X55Y11"
    )
    port map (
      ADR0 => HALL21_IBUF_711,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => HALL31_IBUF_712,
      O => M2p1_OBUF_2515
    );
  driver1_M2n1 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X55Y11"
    )
    port map (
      ADR0 => HALL21_IBUF_711,
      ADR1 => VCC,
      ADR2 => driver1_PWM_1_oc_out_748,
      ADR3 => HALL31_IBUF_712,
      O => M2n1_OBUF_2523
    );
  driver1_M3p_or00001 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X55Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => HALL11_IBUF_710,
      ADR2 => VCC,
      ADR3 => HALL21_IBUF_711,
      O => M3p1_OBUF_2539
    );
  driver1_M3n1 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X55Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => HALL11_IBUF_710,
      ADR2 => driver1_PWM_1_oc_out_748,
      ADR3 => HALL21_IBUF_711,
      O => M3n1_OBUF_2547
    );
  FT245_DATA_USB_mux0000_1_11 : X_LUT4
    generic map(
      INIT => X"FFCD",
      LOC => "SLICE_X32Y55"
    )
    port map (
      ADR0 => FT245_cnt1_FSM_FFd4_746,
      ADR1 => FT245_cnt1_FSM_FFd3_750,
      ADR2 => FT245_cnt1_FSM_FFd6_745,
      ADR3 => FT245_cnt1_FSM_FFd5_749,
      O => FT245_N0_pack_2
    );
  FT245_DATA_USB_mux0000_6_1 : X_LUT4
    generic map(
      INIT => X"FCCC",
      LOC => "SLICE_X32Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt1_FSM_FFd2_743,
      ADR2 => FT245_N0,
      ADR3 => FT245_DATA_USB_1_Q,
      O => FT245_DATA_USB_mux0000_6_Q
    );
  FT245_DATA_USB_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => '0'
    )
    port map (
      I => FT245_DATA_USB_1_DXMUX_2578,
      CE => FT245_DATA_USB_1_CEINV_2561,
      CLK => FT245_DATA_USB_1_CLKINV_2562,
      SET => GND,
      RST => GND,
      O => FT245_DATA_USB_1_Q
    );
  FT245_cnt1_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      I => FT245_cnt1_FSM_FFd3_DYMUX_2592,
      CE => FT245_cnt1_FSM_FFd3_CEINV_2589,
      CLK => FT245_cnt1_FSM_FFd3_CLKINV_2590,
      SET => GND,
      RST => GND,
      O => FT245_cnt1_FSM_FFd2_743
    );
  FT245_cnt1_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      I => FT245_cnt1_FSM_FFd3_DXMUX_2598,
      CE => FT245_cnt1_FSM_FFd3_CEINV_2589,
      CLK => FT245_cnt1_FSM_FFd3_CLKINV_2590,
      SET => GND,
      RST => GND,
      O => FT245_cnt1_FSM_FFd3_750
    );
  FT245_cnt1_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => '0'
    )
    port map (
      I => FT245_cnt1_FSM_FFd5_DYMUX_2612,
      CE => FT245_cnt1_FSM_FFd5_CEINV_2609,
      CLK => FT245_cnt1_FSM_FFd5_CLKINV_2610,
      SET => GND,
      RST => GND,
      O => FT245_cnt1_FSM_FFd4_746
    );
  FT245_cnt1_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => '0'
    )
    port map (
      I => FT245_cnt1_FSM_FFd5_DXMUX_2618,
      CE => FT245_cnt1_FSM_FFd5_CEINV_2609,
      CLK => FT245_cnt1_FSM_FFd5_CLKINV_2610,
      SET => GND,
      RST => GND,
      O => FT245_cnt1_FSM_FFd5_749
    );
  driver1_PWM_1_oc_out : X_SFF
    generic map(
      LOC => "SLICE_X47Y23",
      INIT => '0'
    )
    port map (
      I => driver1_PWM_1_oc_out_DYMUX_2630,
      CE => VCC,
      CLK => driver1_PWM_1_oc_out_CLKINV_2627,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => driver1_PWM_1_oc_out_SRINV_2628,
      O => driver1_PWM_1_oc_out_748
    );
  FT245_cnt1_not0001121 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X35Y56"
    )
    port map (
      ADR0 => FT245_cnt(0),
      ADR1 => FT245_cnt(1),
      ADR2 => FT245_cnt(15),
      ADR3 => FT245_cnt(2),
      O => FT245_cnt1_not0001121_2644
    );
  driver1_PWM_1_Cnt_1_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X35Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_PWM_1_Cnt_1(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_0_G
    );
  driver1_PWM_1_Cnt_1_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_PWM_1_Cnt_1(2),
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_2_F
    );
  driver1_PWM_1_Cnt_1_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X35Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_PWM_1_Cnt_1(3),
      O => driver1_PWM_1_Cnt_1_2_G
    );
  driver1_PWM_1_Cnt_1_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X35Y40"
    )
    port map (
      ADR0 => driver1_PWM_1_Cnt_1(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_4_F
    );
  driver1_PWM_1_Cnt_1_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X35Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_PWM_1_Cnt_1(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_4_G
    );
  driver1_PWM_1_Cnt_1_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X35Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_PWM_1_Cnt_1(6),
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_6_F
    );
  driver1_PWM_1_Cnt_1_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X35Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_PWM_1_Cnt_1(7),
      O => driver1_PWM_1_Cnt_1_6_G
    );
  driver1_PWM_1_Cnt_1_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X35Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_PWM_1_Cnt_1(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_8_F
    );
  driver1_PWM_1_Cnt_1_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X35Y42"
    )
    port map (
      ADR0 => driver1_PWM_1_Cnt_1(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_PWM_1_Cnt_1_8_G
    );
  FT245_cnt_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X34Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_0_G
    );
  FT245_cnt_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => FT245_cnt(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_2_F
    );
  FT245_cnt_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X34Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FT245_cnt(3),
      ADR3 => VCC,
      O => FT245_cnt_2_G
    );
  FT245_cnt_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FT245_cnt(4),
      O => FT245_cnt_4_F
    );
  FT245_cnt_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X34Y56"
    )
    port map (
      ADR0 => FT245_cnt(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_4_G
    );
  FT245_cnt_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_6_F
    );
  FT245_cnt_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X34Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FT245_cnt(7),
      ADR3 => VCC,
      O => FT245_cnt_6_G
    );
  FT245_cnt_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X34Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_8_F
    );
  FT245_cnt_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X34Y58"
    )
    port map (
      ADR0 => FT245_cnt(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_8_G
    );
  FT245_cnt_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X34Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FT245_cnt(10),
      ADR3 => VCC,
      O => FT245_cnt_10_F
    );
  FT245_cnt_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X34Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FT245_cnt(11),
      O => FT245_cnt_10_G
    );
  FT245_cnt_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X34Y60"
    )
    port map (
      ADR0 => FT245_cnt(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_12_F
    );
  FT245_cnt_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X34Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FT245_cnt(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => FT245_cnt_12_G
    );
  FT245_cnt_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X34Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => FT245_cnt(14),
      O => FT245_cnt_14_F
    );
  driver1_TIMER_COUNT_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(1),
      O => driver1_TIMER_COUNT_0_G
    );
  driver1_TIMER_COUNT_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X18Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_TIMER_COUNT(2),
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_2_F
    );
  driver1_TIMER_COUNT_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X18Y55"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_2_G
    );
  driver1_TIMER_COUNT_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(4),
      O => driver1_TIMER_COUNT_4_F
    );
  driver1_TIMER_COUNT_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X18Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_TIMER_COUNT(5),
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_4_G
    );
  driver1_TIMER_COUNT_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(6),
      O => driver1_TIMER_COUNT_6_F
    );
  driver1_TIMER_COUNT_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X18Y57"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_6_G
    );
  driver1_TIMER_COUNT_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X18Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_TIMER_COUNT(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_8_F
    );
  driver1_TIMER_COUNT_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(9),
      O => driver1_TIMER_COUNT_8_G
    );
  driver1_TIMER_COUNT_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(10),
      O => driver1_TIMER_COUNT_10_F
    );
  driver1_TIMER_COUNT_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X18Y59"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_10_G
    );
  driver1_TIMER_COUNT_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X18Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => driver1_TIMER_COUNT(12),
      O => driver1_TIMER_COUNT_12_F
    );
  driver1_TIMER_COUNT_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X18Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => driver1_TIMER_COUNT(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_12_G
    );
  driver1_TIMER_COUNT_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X18Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => driver1_TIMER_COUNT(14),
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_14_F
    );
  driver1_TIMER_COUNT_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X18Y61"
    )
    port map (
      ADR0 => driver1_TIMER_COUNT(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => driver1_TIMER_COUNT_14_G
    );
  LED_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 605 ps
    )
    port map (
      I => driver1_CLK_TIMER_709,
      O => LED_0_O
    );
  LED_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL11_IBUF_710,
      O => LED_1_O
    );
  LED_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL21_IBUF_711,
      O => LED_2_O
    );
  LED_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 605 ps
    )
    port map (
      I => HALL31_IBUF_712,
      O => LED_3_O
    );
  USB_WR_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_USB_WR_714,
      O => USB_WR_O
    );
  DATA_USB_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATA_USB_0_OUTPUT_OFF_O1INV_2086,
      O => DATA_USB_0_O
    );
  DATA_USB_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => DATA_USB_0_OUTPUT_OFF_O1INV_2086
    );
  DATA_USB_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_1_Q,
      O => DATA_USB_1_O
    );
  M1n1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 605 ps
    )
    port map (
      I => M1n1_OBUF_2475,
      O => M1n1_O
    );
  DATA_USB_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATA_USB_2_OUTPUT_OFF_O1INV_2116,
      O => DATA_USB_2_O
    );
  DATA_USB_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => DATA_USB_2_OUTPUT_OFF_O1INV_2116
    );
  DATA_USB_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_3_Q,
      O => DATA_USB_3_O
    );
  M2n1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 605 ps
    )
    port map (
      I => M2n1_OBUF_2523,
      O => M2n1_O
    );
  M1p1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 605 ps
    )
    port map (
      I => M1p1_OBUF_2467,
      O => M1p1_O
    );
  DATA_USB_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_4_Q,
      O => DATA_USB_4_O
    );
  DATA_USB_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATA_USB_5_OUTPUT_OFF_O1INV_2168,
      O => DATA_USB_5_O
    );
  DATA_USB_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => DATA_USB_5_OUTPUT_OFF_O1INV_2168
    );
  M3n1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 605 ps
    )
    port map (
      I => M3n1_OBUF_2547,
      O => M3n1_O
    );
  M2p1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 605 ps
    )
    port map (
      I => M2p1_OBUF_2515,
      O => M2p1_O
    );
  DATA_USB_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_DATA_USB_6_Q,
      O => DATA_USB_6_O
    );
  DATA_USB_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 605 ps
    )
    port map (
      I => DATA_USB_7_OUTPUT_OFF_O1INV_2206,
      O => DATA_USB_7_O
    );
  DATA_USB_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => DATA_USB_7_OUTPUT_OFF_O1INV_2206
    );
  M3p1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 605 ps
    )
    port map (
      I => M3p1_OBUF_2539,
      O => M3p1_O
    );
  FT245_Mshreg_cnt1_FSM_FFd6_CE_WSGAND : X_BUF
    generic map(
      LOC => "SLICE_X32Y54",
      PATHPULSE => 605 ps
    )
    port map (
      I => FT245_cnt1_not0001_0,
      O => FT245_cnt1_FSM_FFd6_WSG
    );
  NlwBlock_m_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_m_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

