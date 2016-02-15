--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;


library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_unsigned.ALL;
	use IEEE.STD_LOGIC_arith.ALL;

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
						W0_sp        : out std_logic_vector(15 downto 0);
						W1_sp        : out std_logic_vector(15 downto 0);
						W2_sp        : out std_logic_vector(15 downto 0);
						W3_sp        : out std_logic_vector(15 downto 0);
						SB_sp        : out std_logic_vector(15 downto 0);
--						GVy       : out std_logic_vector(15 downto 0);
--						GWr       : out std_logic_vector(15 downto 0)
	--generated data in camera and gyro
						W0 : in std_logic_vector(15 downto 0);
						W1 : in std_logic_vector(15 downto 0);
						W2 : in std_logic_vector(15 downto 0);
						W3 : in std_logic_vector(15 downto 0);
						SB : in std_logic_vector(15 downto 0)
--						calman_W2 : in std_logic_vector(15 downto 0);
--						calman_W3 : in std_logic_vector(15 downto 0);
	
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
	signal state  : integer range 0 to 17 := 0;
	signal send_packet : temp;

	begin
	

	process(CLK) 
		--------------new protocol
--	variable state              : state_machine :=s0;
	variable stage              : integer := 0;
	variable receive_packet     : temp;
	variable memory_low         : memory ;
	variable memory_high        : memory ;
	variable MAKsumB_out  : std_logic_vector(15 downto 0);
	variable MAKsumA_out : std_logic_vector(15 downto 0);
	variable MAKsumB_in   : std_logic_vector(15 downto 0);
	variable MAKsumA_in  : std_logic_vector(15 downto 0);
	variable TEST  : std_logic_vector(6 downto 0):=(others=>'0');
	variable nextstate  : integer range 0 to 17 := 0;

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
					  
					  elsif ( state > 1 ) and (state < 17) then
					      receive_packet (state) := DATA_IN ;
							state <= state + 1 ;
							
			        elsif (state = 17) then
					      receive_packet (state) := DATA_IN ;
--					      data_out <= test;
					      state <= 0 ;
--=======================================================================generating check_sum
					  memory_high (0):= receive_packet (2) (0) & receive_packet (4)  ;
					  memory_high (1):= receive_packet (2) (1) & receive_packet (5)  ;
					  memory_high (2):= receive_packet (2) (2) & receive_packet (6)  ;
					  memory_high (3):= receive_packet (2) (3) & receive_packet (7)  ;
					  memory_high (4):= receive_packet (2) (4) & receive_packet (8)  ;
					  memory_high (5):= receive_packet (2) (5) & receive_packet (9)  ;
					  memory_high (6):= receive_packet (2) (6) & receive_packet (10) ;
					  
					  memory_low  (0):= receive_packet (3) (0) & receive_packet (11) ;
					  memory_low  (1):= receive_packet (3) (1) & receive_packet (12) ;
					  memory_low  (2):= receive_packet (3) (2) & receive_packet (13) ;
					  memory_low  (3):= receive_packet (3) (3) & receive_packet (14) ;
					  memory_low  (4):= receive_packet (3) (4) & receive_packet (15) ;
					  memory_low  (5):= receive_packet (3) (5) & receive_packet (16) ;
					  memory_low  (6):= receive_packet (3) (6) & receive_packet (17) ;					  
					  
					  MAKsumA_in :=  ("00000000" & memory_high (0)) + ("00000000" & memory_high (1)) + ("00000000" & memory_high (2)) + ("00000000" & memory_high (3)) + ("00000000" & memory_high (4))
									   + ("00000000" & memory_low  (0)) + ("00000000" & memory_low  (1)) + ("00000000" & memory_low  (2)) + ("00000000" & memory_low  (3)) + ("00000000" & memory_low  (4));
					  
					  MAKsumB_in :=  ("00000000" & memory_high (0))*"1010" + ("00000000" & memory_high (1))*"1001" + ("00000000" & memory_high (2))*"1000" + ("00000000" & memory_high (3))*"0111" + ("00000000" & memory_high (4))*"0110"
									   + ("00000000" & memory_low  (0))*"0101" + ("00000000" & memory_low  (1))*"0100" + ("00000000" & memory_low  (2))*"0011" + ("00000000" & memory_low  (3))*"0010" + ("00000000" & memory_low  (4));
					  						
--=========================================================================saving checked data									
						  if (   (  MAKsumB_in   =  memory_high (6) & memory_low (6) ) and
									(  MAKsumA_in   =  memory_high (5) & memory_low (5) ) ) then
									
									W0_sp	   <= memory_high (0) & memory_low (0) ;
									W1_sp	   <= memory_high (1) & memory_low (1) ;
									W2_sp	   <= memory_high (2) & memory_low (2) ;
									W3_sp		<= memory_high (3) & memory_low (3) ;
									SB_sp		<= memory_high (4) & memory_low (4) ;

						  end if ;
					  
					  else
					     state <= 0;

					  end if ;
					  
					  
					  
				
			end if;
			
			
	--=========================================================== sending data

			 if (data_clk = '0' and data_clk_flag = '1') then
			 
			 data_clk_flag <= '0' ;
			 
			 
			 if (state = 0) then
			 DATA_OUT <= "1111111" ;
			    
				 MAKsumA_out := ("00000000" & W0( 15 downto 8 )) + ("00000000" & W1( 15 downto 8 )) + ("00000000" & W2( 15 downto 8 )) + ("00000000" & W3( 15 downto 8 )) + ("00000000" & SB( 15 downto 8 ))
			 					  + ("00000000" & W0( 7 downto 0  )) + ("00000000" & W1( 7 downto 0  )) + ("00000000" & W2( 7 downto 0  )) + ("00000000" & W3( 7 downto 0  )) + ("00000000" & SB( 7 downto 0  )) ;

				 MAKsumB_out := ("00000000" & W0( 15 downto 8 ))*"1010" + ("00000000" & W1( 15 downto 8 ))*"1001" + ("00000000" & W2( 15 downto 8 ))*"1000" + ("00000000" & W3( 15 downto 8 ))*"0111" + ("00000000" & SB( 15 downto 8 ))*"0110"
			 					  + ("00000000" & W0( 7 downto 0  ))*"0101" + ("00000000" & W1( 7 downto 0  ))*"0100" + ("00000000" & W2( 7 downto 0  ))*"0011" + ("00000000" & W3( 7 downto 0  ))*"0010" + ("00000000" & SB( 7 downto 0  )) ;
				 
				
				 send_packet (2)   <=   MAKsumB_out ( 15 )& MAKsumA_out ( 15 ) &
											   SB ( 15 ) & W3 ( 15 ) & W2 ( 15 ) & 
											   W1 ( 15 ) & W0 ( 15 ) ;
				 send_packet (3)   <=   MAKsumB_out ( 7 )& MAKsumA_out ( 7 ) &
										 	   SB ( 7 ) & W3 ( 7 ) & W2 ( 7 ) & 
											   W1 ( 7 ) & W0 ( 7 ) ;
				 send_packet (4)   <=   W0 ( 14 downto 8 ) ; 
				 send_packet (5)   <=   W1 ( 14 downto 8 ) ;
				 send_packet (6)   <=   W2 ( 14 downto 8 ) ;
				 send_packet (7)   <=   W3 ( 14 downto 8 ) ;
				 send_packet (8)   <=   SB ( 14 downto 8 ) ;
				 send_packet (9)   <=   MAKsumA_out ( 14 downto 8 ) ;
				 send_packet (10)  <=   MAKsumB_out ( 14 downto 8 ) ;
			
				 send_packet (11)  <=   W0 ( 6  downto 0 ) ; 
				 send_packet (12)  <=   W1 ( 6  downto 0 ) ;
				 send_packet (13)  <=   W2 ( 6  downto 0 ) ;
				 send_packet (14)  <=   W3 ( 6  downto 0 ) ;
				 send_packet (15)  <=   SB ( 6  downto 0 ) ;
				 send_packet (16)  <=   MAKsumA_out ( 6  downto 0 ) ;
				 send_packet (17)  <=   MAKsumB_out ( 6  downto 0 ) ;
				 
			
				
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
