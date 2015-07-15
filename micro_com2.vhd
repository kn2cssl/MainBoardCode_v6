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
	type temp is array (0 to 8) of std_logic_vector (6 downto 0);

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
	variable stage          : integer := 0;
	variable low_data_out    : temp;
	variable high_data_out   : temp;
	variable low_data_in    : temp;
	variable high_data_in   : temp;
	variable memory_low     : memory ;
	variable memory_high    : memory ;
	variable check_sum_out_low  : std_logic_vector(7 downto 0);
	variable check_sum_out_high : std_logic_vector(7 downto 0);
	variable check_sum_in_low  : std_logic_vector(7 downto 0);
	variable check_sum_in_high : std_logic_vector(7 downto 0);

	    begin
			
		 if rising_edge (clk) then 

--=========================================================== receiving data
	       if (data_clk = '1' and data_clk_flag = '0') then
			 
			 data_clk_flag <= '1' ;
			 
				 case state is 
				 
				 when s0 =>	--checking first start sign
					  if (DATA_IN (6 downto 0) = "1010101") then
						  state <= s1 ;	
						  end if ;
						  
				 when s1 => --checking second start sign
					  if (DATA_IN (6 downto 0) = "1010101") then
						  state <= s2 ;	
						  end if ; 
						  
				 when s2 =>	--1st low 7 bits
					  low_data_in (0) := DATA_IN;
					  state <= s3 ;
	
				 when s3 => --2nd low 7 bits
					  low_data_in (1) := DATA_IN;
					  state <= s4 ;
						
				 when s4 => --3rd low 7 bits
					  low_data_in (2) := DATA_IN;
					  state <= s5 ;
						
				 when s5 =>	--4th low 7 bits
					  low_data_in (3) := DATA_IN;
					  state <= s6 ;
						
				 when s6 => --5th low 7 bits
					  low_data_in (4) := DATA_IN;
					  state <= s7 ;
					  
				 when s7 => --6th low 7 bits
					  low_data_in (5) := DATA_IN;
					  state <= s8 ;
					  
				 when s8 => --7th low 7 bits
					  low_data_in (6) := DATA_IN;
					  state <= s9 ;
					  
				 when s9 => --compound low 7 bits
					  low_data_in (7) := DATA_IN;
					  state <= s10 ;
					  
				 when s10 => --check sum low 7 bits
					  low_data_in (8) := DATA_IN;
					  state <= s11 ;
						  
						  
				 when s11 => --1st high 7 bits
						high_data_in (0) := DATA_IN;
						state <= s12 ;
	
				 when s12 => --2nd high 7 bits
					  high_data_in (1) := DATA_IN;
					  state <= s13 ;
						
				 when s13 => --3rd high 7 bits
					  high_data_in (2) := DATA_IN;
					  state <= s14 ;
						
				 when s14 => --4th high 7 bits
					  high_data_in (3) := DATA_IN;
					  state <= s15 ;
						
				 when s15 => --5th high 7 bits
					  high_data_in (4) := DATA_IN;
					  state <= s16 ;
					  
				 when s16 => --6th high 7 bits
					  high_data_in (5) := DATA_IN;
					  state <= s17 ;
					  
				 when s17 => --7th high 7 bits
					  high_data_in (6) := DATA_IN;
					  state <= s18 ;
					  
				 when s18 => --compound high 7 bits
					  high_data_in (7) := DATA_IN;
					  state <= s19 ;
					  
				 when s19 => --check sum high 7 bits
					  high_data_in (8) := DATA_IN;
					  
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

					  state <= s0 ;
						
				  when others =>
					  state <= s0;		      
					  
					  
				end case;
	
			end if;
			
			
	--=========================================================== sending data

			 if (data_clk = '0' and data_clk_flag = '1') then
			 
			 data_clk_flag <= '0' ;

				case state is 

				 when s0 =>
				 when s1 => 
--						check_sum_out_high :=   calman_W3 ( 15 downto 8 ) + calman_W2 ( 15 downto 8 )
--													 + calman_W1 ( 15 downto 8 ) + calman_W0 ( 15 downto 8 )
--													 + calman_Wr ( 15 downto 8 ) + calman_Vy ( 15 downto 8 )
--													 + calman_Vx ( 15 downto 8 ) ;
--													 
--				      check_sum_out_low  :=   calman_W3 ( 7  downto 0 ) + calman_W2 ( 7  downto 0 )
--													 + calman_W1 ( 7  downto 0 ) + calman_W0 ( 7  downto 0 )
--													 + calman_Wr ( 7  downto 0 ) + calman_Vy ( 7  downto 0 )
--													 + calman_Vx ( 7  downto 0 ) ;
--													 
--						high_data_out (0)  :=   calman_Vx ( 14 downto 8 ) ; 
--						high_data_out (1)  :=   calman_Vy ( 14 downto 8 ) ;
--						high_data_out (2)  :=   calman_Wr ( 14 downto 8 ) ;
--						high_data_out (3)  :=   calman_W0 ( 14 downto 8 ) ;
--						high_data_out (4)  :=   calman_W1 ( 14 downto 8 ) ;
--						high_data_out (5)  :=   calman_W2 ( 14 downto 8 ) ;
--						high_data_out (6)  :=   calman_W3 ( 14 downto 8 ) ;
--						high_data_out (7)  :=   calman_W3 ( 15 ) & calman_W2 ( 15 )
--													 & calman_W1 ( 15 ) & calman_W0 ( 15 )
--													 & calman_Wr ( 15 ) & calman_Vy ( 15 )
--													 & calman_Vx ( 15 ) ;
--						high_data_out (8)  :=   check_sum_out_high ( 6 downto 0 ) ;
--						
--						low_data_out  (0)  :=   calman_Vx ( 6  downto 0 ) ; 
--						low_data_out  (1)  :=   calman_Vy ( 6  downto 0 ) ;
--						low_data_out  (2)  :=   calman_Wr ( 6  downto 0 ) ;
--						low_data_out  (3)  :=   calman_W0 ( 6  downto 0 ) ;
--						low_data_out  (4)  :=   calman_W1 ( 6  downto 0 ) ;
--						low_data_out  (5)  :=   calman_W2 ( 6  downto 0 ) ;
--						low_data_out  (6)  :=   calman_W3 ( 6  downto 0 ) ;
--						low_data_out  (7)  :=   calman_W3 ( 7  ) & calman_W2 ( 7  )
--													 & calman_W1 ( 7  ) & calman_W0 ( 7  )
--													 & calman_Wr ( 7  ) & calman_Vy ( 7  )
--													 & calman_Vx ( 7  ) ;
--						low_data_out  (8)  :=   check_sum_out_low  ( 6 downto 0 ) ;
--						
--				 when s2 =>
--						DATA_OUT <= high_data_out (0);
--	
--				 when s3 =>
--					   DATA_OUT <= high_data_out (1);
--						
--				 when s4 =>
--					   DATA_OUT <= high_data_out (2);
--						
--				 when s5 =>
--					   DATA_OUT <= high_data_out (3);
--						
--				 when s6 =>
--					   DATA_OUT <= high_data_out (4);
--					  
--				 when s7 =>
--					   DATA_OUT <= high_data_out (5);
--					  
--				 when s8 =>
--					   DATA_OUT <= high_data_out (6);
--					  
--				 when s9 =>
--					   DATA_OUT <= high_data_out (7);
--					  
--				 when s10 =>
--					   DATA_OUT <= high_data_out (8);
--					    
--				 when s11 =>
--					   DATA_OUT <= high_data_out (0);
--	
--				 when s12 =>
--					   DATA_OUT <= high_data_out (1);
--						
--				 when s13 =>
--					   DATA_OUT <= high_data_out (2);
--						
--				 when s14 =>
--					   DATA_OUT <= low_data_out  (3);
--						
--				 when s15 =>
--					   DATA_OUT <= low_data_out  (4);
--					  
--				 when s16 =>
--					   DATA_OUT <= low_data_out  (5);
--					  
--				 when s17 =>
--					   DATA_OUT <= low_data_out  (6);
--					  
--				 when s18 =>
--					   DATA_OUT <= low_data_out  (7);
--					  
--				 when s19 =>
--					   DATA_OUT <= low_data_out  (8);
				 when others =>
				  DATA_OUT <= data_in;
			end case;
			
			end if;
		end if;
-------------------------------------------------------------------------------------------
		
	   end process;
	 end Behavioral; 
