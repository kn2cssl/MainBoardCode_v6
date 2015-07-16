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
	DATA_OUT: OUT std_logic_vector(6 downto 0);
	--generated data in FPGA
   calman_Vx : in std_logic_vector(15 downto 0);
	calman_Vy : in std_logic_vector(15 downto 0);
	calman_Wr : in std_logic_vector(15 downto 0);
	calman_W0 : in std_logic_vector(15 downto 0);
	calman_W1 : in std_logic_vector(15 downto 0);
	calman_W2 : in std_logic_vector(15 downto 0);
	calman_W3 : in std_logic_vector(15 downto 0);
	--generated data in camera and gyro
	Vx        : out std_logic_vector(15 downto 0);
	Vy        : out std_logic_vector(15 downto 0);
	Wr        : out std_logic_vector(15 downto 0);
	alpha     : out std_logic_vector(15 downto 0);
	GVx       : out std_logic_vector(15 downto 0);
	GVy       : out std_logic_vector(15 downto 0);
	GWr       : out std_logic_vector(15 downto 0)
	
	);
end micro_com2;

architecture Behavioral of micro_com2 is
   type memory8 is array (0 to 3) of std_logic_vector(7 downto 0);
	type memory is array (0 to 8) of std_logic_vector (7 downto 0);
	type temp is array (0 to 40) of std_logic_vector (6 downto 0);

	type state_machine is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19);
--	signal motor_rpm_high : memory8 :=("00000000","00000000","00000000","00000000");
--	signal motor_rpm_low  : memory8 :=("00000000","00000000","00000000","00000000");
--	signal motor_rpm_tmp  : std_logic_vector(7 downto 0); 
--	signal startbyte_low	 : std_logic_vector(7 downto 0);
	--signal state : state_machine :=s0;
--	signal cnt : std_logic:='0';
	signal data_clk_flag : std_logic:='0';
	signal state  : integer range 0 to 19 := 0;

	begin
	

	process(CLK) 
		--------------new protocol
--	variable state              : state_machine :=s0;
	variable stage              : integer := 0;
	variable low_data_out       : temp;
	variable high_data_out      : temp;
	variable low_data_in        : temp;
	variable high_data_in       : temp;
	variable memory_low         : memory ;
	variable memory_high        : memory ;
	variable check_sum_out_low  : std_logic_vector(7 downto 0);
	variable check_sum_out_high : std_logic_vector(7 downto 0);
	variable check_sum_in_low   : std_logic_vector(7 downto 0);
	variable check_sum_in_high  : std_logic_vector(7 downto 0);
	variable TEST  : std_logic_vector(6 downto 0):=(others=>'0');
	variable nextstate  : integer range 0 to 19 := 0;

	    begin
			
		 if rising_edge (clk) then 

--=========================================================== receiving data
	       if (data_clk = '1' and data_clk_flag = '0') then
			 
			 data_clk_flag <= '1' ;
			 
				 case state is 
				 
				 when 0 =>	--checking first start sign
--					  if (DATA_IN (6 downto 0) = "1010101") then
--						  nextstate := 1 ;	
--					  else
--					     nextstate := 0 ;
--					  end if ;
                 nextstate := 1 ;
						  
				 when 1 => --checking second start sign
--					  if (DATA_IN (6 downto 0) = "1010101") then
--						  nextstate := 2 ;
--					  else
--					     nextstate := 0 ;  
--					  end if ; 
					  nextstate := 2 ;  
					  
				 when 2 =>	--1st high 7 bits
					  high_data_in (0) := DATA_IN;
					  nextstate := 3 ;
	
				 when 3 => --2nd high 7 bits
					  high_data_in (1) := DATA_IN;
					  nextstate := 4 ;
						
				 when 4 => --3rd high 7 bits
					  high_data_in (2) := DATA_IN;
					  nextstate := 5 ;
						
				 when 5 =>	--4th high 7 bits
					  high_data_in (3) := DATA_IN;
					  nextstate := 6 ;
						
				 when 6 => --5th high 7 bits
					  high_data_in (4) := DATA_IN;
					  nextstate := 7 ;
					  
				 when 7 => --6th high 7 bits
					  high_data_in (5) := DATA_IN;
					  nextstate := 8 ;
					  
				 when 8 => --7th high 7 bits
					  high_data_in (6) := DATA_IN;
					  nextstate := 9 ;
					  
				 when 9 => --compound high 7 bits
					  high_data_in (7) := DATA_IN;
					  nextstate := 10 ;
					  
				 when 10 => --check sum high 7 bits
					  high_data_in (8) := DATA_IN;
					  nextstate := 11 ;
						  
						  
				 when 11 => --1st low 7 bits
						low_data_in (0) := DATA_IN;
						nextstate := 12 ;
	
				 when 12 => --2nd low 7 bits
					  low_data_in (1) := DATA_IN;
					  nextstate := 13 ;
						
				 when 13 => --3rd low 7 bits
					  low_data_in (2) := DATA_IN;
					  nextstate := 14 ;
						
				 when 14 => --4th low 7 bits
					  low_data_in (3) := DATA_IN;
					  nextstate := 15 ;
						
				 when 15 => --5th low 7 bits
					  low_data_in (4) := DATA_IN;
					  nextstate := 16 ;
					  
				 when 16 => --6th low 7 bits
					  low_data_in (5) := DATA_IN;
					  nextstate := 17 ;
					  
				 when 17 => --7th low 7 bits
					  low_data_in (6) := DATA_IN;
					  nextstate := 18 ;
					  
				 when 18 => --compound low 7 bits
					  low_data_in (state) := DATA_IN;
					  nextstate := 19 ;
					  TEST := NOT TEST;
					  
				 when 19 => --check sum low 7 bits
				     DATA_OUT <= TEST;
					  low_data_in (8) := DATA_IN;
					  
--=======================================================================generating check_sum
					  memory_low (0):= low_data_in (7) (0) & low_data_in (0) ;
					  memory_low (1):= low_data_in (7) (1) & low_data_in (1) ;
					  memory_low (2):= low_data_in (7) (2) & low_data_in (2) ;
					  memory_low (3):= low_data_in (7) (3) & low_data_in (3) ;
					  memory_low (4):= low_data_in (7) (4) & low_data_in (4) ;
					  memory_low (5):= low_data_in (7) (5) & low_data_in (5) ;
					  memory_low (6):= low_data_in (7) (6) & low_data_in (6) ;
					  memory_low (7):= '0' & low_data_in (8) ;
					  
					  memory_high (0):= high_data_in (7) (0) & high_data_in (0) ;
					  memory_high (1):= high_data_in (7) (1) & high_data_in (1) ;
					  memory_high (2):= high_data_in (7) (2) & high_data_in (2) ;
					  memory_high (3):= high_data_in (7) (3) & high_data_in (3) ;
					  memory_high (4):= high_data_in (7) (4) & high_data_in (4) ;
					  memory_high (5):= high_data_in (7) (5) & high_data_in (5) ;
					  memory_high (6):= high_data_in (7) (6) & high_data_in (6) ;
					  memory_high (7):= '0' & high_data_in (8) ;
					  
					  
					  check_sum_in_low :=  memory_low (0) + memory_low (1) + memory_low (2)
											+ memory_low (3) + memory_low (4) + memory_low (5)
											+ memory_low (6);
					  
					  check_sum_in_high :=  memory_high (0) + memory_high (1) + memory_high (2)
											 + memory_high (3) + memory_high (4) + memory_high (5)
											 + memory_high (6);
											
											
--=========================================================================saving checked data									
					  if (   ( ( check_sum_in_low  and "01111111" ) =  memory_low  (7) ) and
							   ( ( check_sum_in_high and "01111111" ) =  memory_high (7) )     ) then
								
								Vx	   <= memory_high (0) & memory_low (0) ;
								Vy	   <= memory_high (1) & memory_low (1) ;
								Wr	   <= memory_high (2) & memory_low (2) ;
								alpha	<= memory_high (3) & memory_low (3) ;
								GVx	<= memory_high (4) & memory_low (4) ;
								GVy	<= memory_high (5) & memory_low (5) ;
								GWr	<= memory_high (6) & memory_low (6) ;
	
					  end if ;
	
					  nextstate := 0 ;
					  
				end case;
				
				state <= nextstate ;
				
			end if;
			
			
	--=========================================================== sending data

			 if (data_clk = '0' and data_clk_flag = '1') then
			 
			 data_clk_flag <= '0' ;

--				case state is 
--
--				 when 0 =>
--				      --DATA_OUT <= data_in;
--				 when 1 => 
--				      --DATA_OUT <= data_in;
----						check_sum_out_high :=   calman_W3 ( 15 downto 8 ) + calman_W2 ( 15 downto 8 )
----													 + calman_W1 ( 15 downto 8 ) + calman_W0 ( 15 downto 8 )
----													 + calman_Wr ( 15 downto 8 ) + calman_Vy ( 15 downto 8 )
----													 + calman_Vx ( 15 downto 8 ) ;
----													 
----				      check_sum_out_low  :=   calman_W3 ( 7  downto 0 ) + calman_W2 ( 7  downto 0 )
----													 + calman_W1 ( 7  downto 0 ) + calman_W0 ( 7  downto 0 )
----													 + calman_Wr ( 7  downto 0 ) + calman_Vy ( 7  downto 0 )
----													 + calman_Vx ( 7  downto 0 ) ;
----													 
----						high_data_out (0)  :=   calman_Vx ( 14 downto 8 ) ; 
----						high_data_out (1)  :=   calman_Vy ( 14 downto 8 ) ;
----						high_data_out (2)  :=   calman_Wr ( 14 downto 8 ) ;
----						high_data_out (3)  :=   calman_W0 ( 14 downto 8 ) ;
----						high_data_out (4)  :=   calman_W1 ( 14 downto 8 ) ;
----						high_data_out (5)  :=   calman_W2 ( 14 downto 8 ) ;
----						high_data_out (6)  :=   calman_W3 ( 14 downto 8 ) ;
----						high_data_out (7)  :=   calman_W3 ( 15 ) & calman_W2 ( 15 )
----													 & calman_W1 ( 15 ) & calman_W0 ( 15 )
----													 & calman_Wr ( 15 ) & calman_Vy ( 15 )
----													 & calman_Vx ( 15 ) ;
----						high_data_out (8)  :=   check_sum_out_high ( 6 downto 0 ) ;
----						
----						low_data_out  (0)  :=   calman_Vx ( 6  downto 0 ) ; 
----						low_data_out  (1)  :=   calman_Vy ( 6  downto 0 ) ;
----						low_data_out  (2)  :=   calman_Wr ( 6  downto 0 ) ;
----						low_data_out  (3)  :=   calman_W0 ( 6  downto 0 ) ;
----						low_data_out  (4)  :=   calman_W1 ( 6  downto 0 ) ;
----						low_data_out  (5)  :=   calman_W2 ( 6  downto 0 ) ;
----						low_data_out  (6)  :=   calman_W3 ( 6  downto 0 ) ;
----						low_data_out  (7)  :=   calman_W3 ( 7  ) & calman_W2 ( 7  )
----													 & calman_W1 ( 7  ) & calman_W0 ( 7  )
----													 & calman_Wr ( 7  ) & calman_Vy ( 7  )
----													 & calman_Vx ( 7  ) ;
----						low_data_out  (8)  :=   check_sum_out_low  ( 6 downto 0 ) ;
--						
--				 when 2 =>
--						DATA_OUT <= "0001101";--high_data_out (0);
--	
--				 when 3 =>
--					   DATA_OUT <= "0001011";--high_data_out (1);
--						
--				 when 4 =>
--					   DATA_OUT <= "1110101";--high_data_out (2);
--						
--				 when 5 =>
--					   DATA_OUT <= "0000000";--high_data_out (3);
--						
--				 when 6 =>
--					   DATA_OUT <= "0000000";--high_data_out (4);
--					  
--				 when 7 =>
--					   DATA_OUT <= "0000000";--high_data_out (5);
--					  
--				 when 8 =>
--					   DATA_OUT <= "0000000";--high_data_out (6);
--					  
--				 when 9 =>
--					   DATA_OUT <= "0000000";--high_data_out (7);
--					  
--				 when 10 =>
--					   DATA_OUT <= "0001101";--high_data_out (8);
--					    
--						 
--						 
--						 
--				 when 11 =>
--					   DATA_OUT <= "1000111";--low_data_out  (0);
--	
--				 when 12 =>
--					   DATA_OUT <= "1001011";--low_data_out  (1);
--						
--				 when 13 =>
--					   DATA_OUT <= "1010111";--low_data_out  (2);
--						
--				 when 14 =>
--					   DATA_OUT <= "0000000";--low_data_out  (3);
--						
--				 when 15 =>
--					   DATA_OUT <= "0000000";--low_data_out  (4);
--					  
--				 when 16 =>
--					   DATA_OUT <= "0000000";--low_data_out  (5);
--					  
--				 when 17 =>
--					   DATA_OUT <= "0000000";--low_data_out  (6);
--					  
--				 when 18 =>
--					   DATA_OUT <= "0000001";--low_data_out  (7);
--					  
--				 when 19 =>
--					   DATA_OUT <= "1101001";--low_data_out  (8);
--				 when others =>
----				  DATA_OUT <= data_in;
--			end case;
			
			end if;
		end if;
-------------------------------------------------------------------------------------------
		
	   end process;
	 end Behavioral; 
