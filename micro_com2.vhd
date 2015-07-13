library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity micro_com2 is
port (
--   CLK : in std_logic;
--	RPM_IN : in std_logic_vector(7 downto 0);
--	CLK_PAR : in std_logic;
--	PARITY_IN : in std_logic;
--	MOTOR_NUM : in std_logic_vector(1 downto 0);
--	RPM1 : out std_logic_vector(15 downto 0);
--	RPM2 : out std_logic_vector(15 downto 0);
--	RPM3 : out std_logic_vector(15 downto 0);
--	RPM4 : out std_logic_vector(15 downto 0);
--	STARTBIT_FLG : in std_logic;
--	FREE_WHEELS : out std_logic 
	data_clk : in std_logic;
	CLK : in std_logic;
	DATA_IN : in std_logic_vector(6 downto 0);
	DATA_OUT: OUT std_logic_vector(6 downto 0)
   --LED  : out std_logic_vector(3 downto 0)
	);
end micro_com2;

architecture Behavioral of micro_com2 is
   type memory8 is array (0 to 3) of std_logic_vector(7 downto 0);
	type memory is array (0 to 8) of std_logic_vector (7 downto 0);

	type state_machine is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19);
	signal motor_rpm_high : memory8 :=("00000000","00000000","00000000","00000000");
	signal motor_rpm_low  : memory8 :=("00000000","00000000","00000000","00000000");
	signal motor_rpm_tmp  : std_logic_vector(7 downto 0); 
	signal startbyte_low	 : std_logic_vector(7 downto 0);
	signal state : state_machine :=s0;
	signal cnt : std_logic:='0';
	signal data_clk_flag : std_logic:='0';

	begin
	

	process(CLK) 
		--------------new protocol
	variable stage : integer := 0;
	variable temp_data_in0 : std_logic_vector(62 downto 0);
	variable temp_data_in1 : std_logic_vector(62 downto 0);
	variable memory_in0 : memory ;
	variable memory_in1 : memory ;
	variable check_sum_in0 : std_logic_vector(7 downto 0);
	variable check_sum_in1 : std_logic_vector(7 downto 0);

	    begin
			
		 if rising_edge (clk) then 

	--====================================================== receiving data
	       if (data_clk = '1' and data_clk_flag = '0') then
			 
			 data_clk_flag <= '1' ;
			 	DATA_OUT(6 downto 0) <= "1010101";
	--		 
	--			 case state is 
	--			 
	--			 when s0 =>
	--				  if (DATA_IN (6 downto 0) = "1010101") then
	--					  state <= s1 ;	
	--					  end if ;
	--					  
	--			 when s1 =>
	--				  if (DATA_IN (6 downto 0) = "1010101") then
	--					  state <= s2 ;	
	--					  end if ; 
	--					  
	--			 when s2 =>
	--					temp_data_in0 (6 downto 0) := DATA_IN(6 downto 0);
	--					state <= s3 ;
	--
	--			 when s3 =>
	--				  temp_data_in0 (13 downto 7) := DATA_IN(6 downto 0);
	--				  state <= s4 ;
	--					
	--			 when s4 =>
	--				  temp_data_in0 (20 downto 14) := DATA_IN(6 downto 0);
	--				  state <= s5 ;
	--					
	--			 when s5 =>
	--				  temp_data_in0 (27 downto 21) := DATA_IN(6 downto 0);
	--				  state <= s6 ;
	--					
	--			 when s6 =>
	--				  temp_data_in0 (34 downto 28) := DATA_IN(6 downto 0);
	--				  state <= s7 ;
	--				  
	--			 when s7 =>
	--				  temp_data_in0 (41 downto 35) := DATA_IN(6 downto 0);
	--				  state <= s8 ;
	--				  
	--			 when s8 =>
	--				  temp_data_in0 (48 downto 42) := DATA_IN(6 downto 0);
	--				  state <= s9 ;
	--				  
	--			 when s9 =>
	--				  temp_data_in0 (55 downto 49) := DATA_IN(6 downto 0);
	--				  state <= s10 ;
	--				  
	--			 when s10 =>
	--				  temp_data_in0 (62 downto 56) := DATA_IN(6 downto 0);
	--				  state <= s11 ;
	--					  
	--			 when s11 =>
	--					temp_data_in1 (6 downto 0) := DATA_IN(6 downto 0);
	--					state <= s12 ;
	--
	--			 when s12 =>
	--				  temp_data_in1 (13 downto 7) := DATA_IN(6 downto 0);
	--				  state <= s13 ;
	--					
	--			 when s13 =>
	--				  temp_data_in1 (20 downto 14) := DATA_IN(6 downto 0);
	--				  state <= s14 ;
	--					
	--			 when s14 =>
	--				  temp_data_in1 (27 downto 21) := DATA_IN(6 downto 0);
	--				  state <= s15 ;
	--					
	--			 when s15 =>
	--				  temp_data_in1 (34 downto 28) := DATA_IN(6 downto 0);
	--				  state <= s16 ;
	--				  
	--			 when s16 =>
	--				  temp_data_in1 (41 downto 35) := DATA_IN(6 downto 0);
	--				  state <= s17 ;
	--				  
	--			 when s17 =>
	--				  temp_data_in1 (48 downto 42) := DATA_IN(6 downto 0);
	--				  state <= s18 ;
	--				  
	--			 when s18 =>
	--				  temp_data_in1 (55 downto 49) := DATA_IN(6 downto 0);
	--				  state <= s19 ;
	--				  
	--			 when s19 =>
	--				  temp_data_in1 (62 downto 56) := DATA_IN(6 downto 0);
	--				  
	--	--==============================================================generating check_sum
	--				  memory_in0 (0):= temp_data_in0 (7 downto 0) ;
	--				  memory_in0 (1):= temp_data_in0 (15 downto 8) ;
	--				  memory_in0 (2):= temp_data_in0 (23 downto 16) ;
	--				  memory_in0 (3):= temp_data_in0 (31 downto 24) ;
	--				  memory_in0 (4):= temp_data_in0 (39 downto 32) ;
	--				  memory_in0 (5):= temp_data_in0 (47 downto 40) ;
	--				  memory_in0 (6):= temp_data_in0 (55 downto 48) ;
	--				  memory_in0 (7)(6 downto 0):= temp_data_in0 (62 downto 56)  ;
	--				  
	--				  memory_in1 (0):= temp_data_in1 (7 downto 0) ;
	--				  memory_in1 (1):= temp_data_in1 (15 downto 8) ;
	--				  memory_in1 (2):= temp_data_in1 (23 downto 16) ;
	--				  memory_in1 (3):= temp_data_in1 (31 downto 24) ;
	--				  memory_in1 (4):= temp_data_in1 (39 downto 32) ;
	--				  memory_in1 (5):= temp_data_in1 (47 downto 40) ;
	--				  memory_in1 (6):= temp_data_in1 (55 downto 48) ;
	--				  memory_in1 (7)(6 downto 0):= temp_data_in1 (62 downto 56) ;
	--				  
	--				  
	--				  check_sum_in0 :=  memory_in0 (0) + memory_in0 (1) + memory_in0 (2)
	--										+ memory_in0 (3) + memory_in0 (4) + memory_in0 (5)
	--										+ memory_in0 (6);
	--				  
	--				  check_sum_in1 :=  memory_in1 (0) + memory_in1 (1) + memory_in1 (2)
	--										+ memory_in1 (3) + memory_in1 (4) + memory_in1 (5)
	--										+ memory_in1 (6);
	--										
	--										
	--	--============================================================saving checked data									
	--				  if ( ( check_sum_in0 (6 downto 0) =  temp_data_in0 (62 downto 56) ) and
	--						 ( check_sum_in1 (6 downto 0) =  temp_data_in1 (62 downto 56) )) then
	--
	--				  end if;
	--				  
	--
	--
	--				  
	--				  state <= s0 ;
	--					
	--			  when others =>
	--						state <= s0;		      
	--			end case;
	--
			end if;
	--=========================================================== sending data

			 if (data_clk = '0' and data_clk_flag = '1') then
			 
			 data_clk_flag <= '0' ;
			 	DATA_OUT(6 downto 0) <= "0101010";
--				case state is 
--	--				
--	--
--				 when s0 =>
--						DATA_OUT(6 downto 0) <= "0101010";--DATA_IN(6 downto 0);
--				 when s1 => 
	--			 when s2 =>
	--					DATA_OUT(6 downto 0) <= DATA_IN(6 downto 0);
	--
	--			 when s3 =>
	--				  DATA_OUT(6 downto 0) := DATA_IN(6 downto 0);
	--					
	--			 when s4 =>
	--				  temp_data_in0 (20 downto 14) := DATA_IN(6 downto 0);
	--					
	--			 when s5 =>
	--				  temp_data_in0 (27 downto 21) := DATA_IN(6 downto 0);
	--					
	--			 when s6 =>
	--				  temp_data_in0 (34 downto 28) := DATA_IN(6 downto 0);
	--				  
	--			 when s7 =>
	--				  temp_data_in0 (41 downto 35) := DATA_IN(6 downto 0);
	--				  
	--			 when s8 =>
	--				  temp_data_in0 (48 downto 42) := DATA_IN(6 downto 0);
	--				  
	--			 when s9 =>
	--				  temp_data_in0 (55 downto 49) := DATA_IN(6 downto 0);
	--				  
	--			 when s10 =>
	--				  temp_data_in0 (62 downto 56) := DATA_IN(6 downto 0);
	--				  
	--					  
	--			 when s11 =>
	--					temp_data_in1 (6 downto 0) := DATA_IN(6 downto 0);
	--
	--			 when s12 =>
	--				  temp_data_in1 (13 downto 7) := DATA_IN(6 downto 0);
	--					
	--			 when s13 =>
	--				  temp_data_in1 (20 downto 14) := DATA_IN(6 downto 0);
	--					
	--			 when s14 =>
	--				  temp_data_in1 (27 downto 21) := DATA_IN(6 downto 0);
	--					
	--			 when s15 =>
	--				  temp_data_in1 (34 downto 28) := DATA_IN(6 downto 0);
	--				  
	--			 when s16 =>
	--				  temp_data_in1 (41 downto 35) := DATA_IN(6 downto 0);
	--				  
	--			 when s17 =>
	--				  temp_data_in1 (48 downto 42) := DATA_IN(6 downto 0);
	--				  
	--			 when s18 =>
	--				  temp_data_in1 (55 downto 49) := DATA_IN(6 downto 0);
	--				  
	--			 when s19 =>
	--				  temp_data_in1 (62 downto 56) := DATA_IN(6 downto 0);
--				 when others =>
--				 DATA_OUT(6 downto 0) <= "0101010";--DATA_IN(6 downto 0);
--			end case;
			
			end if;
		end if;
-------------------------------------------------------------------------------------------
		
	   end process;
	 end Behavioral; 
