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
	variable receive_packet     : temp;
	variable send_packet        : temp;
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
			 
					  if (DATA_IN  = "1010101") and (state = 0) then--
						  state <= 1 ;	
--						  test := not test ;
					  
					  elsif (DATA_IN  = "1010101") and (state = 1) then--
						  state <= 2 ;	
					  
					  elsif ( state > 1 ) and (state < 19) then
					      receive_packet (state) := DATA_IN ;
							state <= state + 1 ;
							
			        elsif (state = 19) then
					      receive_packet (state) := DATA_IN ;
--					      data_out <= test;
					      state <= 0 ;
--=======================================================================generating check_sum
					  memory_high (0):= receive_packet (9) (0) & receive_packet (2) ;
					  memory_high (1):= receive_packet (9) (1) & receive_packet (3) ;
					  memory_high (2):= receive_packet (9) (2) & receive_packet (4) ;
					  memory_high (3):= receive_packet (9) (3) & receive_packet (5) ;
					  memory_high (4):= receive_packet (9) (4) & receive_packet (6) ;
					  memory_high (5):= receive_packet (9) (5) & receive_packet (7) ;
					  memory_high (6):= receive_packet (9) (6) & receive_packet (8) ;
					  memory_high (7):= '0' & receive_packet (10) ;
					  
					  memory_low  (0):= receive_packet (18) (0) & receive_packet (11) ;
					  memory_low  (1):= receive_packet (18) (1) & receive_packet (12) ;
					  memory_low  (2):= receive_packet (18) (2) & receive_packet (13) ;
					  memory_low  (3):= receive_packet (18) (3) & receive_packet (14) ;
					  memory_low  (4):= receive_packet (18) (4) & receive_packet (15) ;
					  memory_low  (5):= receive_packet (18) (5) & receive_packet (16) ;
					  memory_low  (6):= receive_packet (18) (6) & receive_packet (17) ;
					  memory_low  (7):= '0' & receive_packet (19) ;
					  
					  
					  check_sum_in_high :=  memory_high (0) + memory_high (1) + memory_high (2)
											    + memory_high (3) + memory_high (4) + memory_high (5)
											    + memory_high (6);
					  
					  check_sum_in_low :=  memory_low (0) + memory_low (1) + memory_low (2)
											   + memory_low (3) + memory_low (4) + memory_low (5)
											   + memory_low (6);
					  						
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
					  
					  else
					     state <= 0;

					  end if ;
					  
					  
					  
				
			end if;
			
			
	--=========================================================== sending data

			 if (data_clk = '0' and data_clk_flag = '1') then
			 
			 data_clk_flag <= '0' ;
			 
			 
			 if (state = 0) then
			    check_sum_out_high :=   calman_W3 ( 15 downto 8 ) + calman_W2 ( 15 downto 8 )
				  							  + calman_W1 ( 15 downto 8 ) + calman_W0 ( 15 downto 8 )
											  + calman_Wr ( 15 downto 8 ) + calman_Vy ( 15 downto 8 )
											  + calman_Vx ( 15 downto 8 ) ;
											 
				 check_sum_out_low  :=   calman_W3 ( 7  downto 0 ) + calman_W2 ( 7  downto 0 )
				 							  + calman_W1 ( 7  downto 0 ) + calman_W0 ( 7  downto 0 )
											  + calman_Wr ( 7  downto 0 ) + calman_Vy ( 7  downto 0 )
											  + calman_Vx ( 7  downto 0 ) ;
											 
				 send_packet (2)  :=   calman_Vx ( 14 downto 8 ) ; 
				 send_packet (3)  :=   calman_Vy ( 14 downto 8 ) ;
				 send_packet (4)  :=   calman_Wr ( 14 downto 8 ) ;
				 send_packet (5)  :=   calman_W0 ( 14 downto 8 ) ;
				 send_packet (6)  :=   calman_W1 ( 14 downto 8 ) ;
				 send_packet (7)  :=   calman_W2 ( 14 downto 8 ) ;
				 send_packet (8)  :=   calman_W3 ( 14 downto 8 ) ;
				 send_packet (9)  :=   calman_W3 ( 15 ) & calman_W2 ( 15 )
										   & calman_W1 ( 15 ) & calman_W0 ( 15 )
											& calman_Wr ( 15 ) & calman_Vy ( 15 )
										   & calman_Vx ( 15 ) ;
				 send_packet (10)  :=  check_sum_out_high ( 6 downto 0 ) ;
				
				 send_packet  (11)  :=   calman_Vx ( 6  downto 0 ) ; 
				 send_packet  (12)  :=   calman_Vy ( 6  downto 0 ) ;
				 send_packet  (13)  :=   calman_Wr ( 6  downto 0 ) ;
				 send_packet  (14)  :=   calman_W0 ( 6  downto 0 ) ;
				 send_packet  (15)  :=   calman_W1 ( 6  downto 0 ) ;
				 send_packet  (16)  :=   calman_W2 ( 6  downto 0 ) ;
				 send_packet  (17)  :=   calman_W3 ( 6  downto 0 ) ;
				 send_packet  (18)  :=   calman_W3 ( 7  ) & calman_W2 ( 7  )
				 							  & calman_W1 ( 7  ) & calman_W0 ( 7  )
											  & calman_Wr ( 7  ) & calman_Vy ( 7  )
											  & calman_Vx ( 7  ) ;
				 send_packet  (19)  :=   check_sum_out_low  ( 6 downto 0 ) ;
				
				
--						  test := not test ;-- test
						  
						  
			  elsif  (state = 1) then
			  elsif ( state > 1 ) then		
--			  data_out <= test; -- test
			  DATA_OUT <= send_packet (state) ;			  
			  end if;
			
			end if;
		end if;
-------------------------------------------------------------------------------------------
		
	   end process;
	 end Behavioral; 
