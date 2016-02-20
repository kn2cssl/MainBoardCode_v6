			library IEEE;
			use IEEE.STD_LOGIC_1164.ALL;
			use IEEE.STD_LOGIC_unsigned.ALL;
			use IEEE.STD_LOGIC_arith.ALL;



		entity m is

		  port(  clk:in std_logic;
				 --MOTOR1
					HALL11:in std_logic;
					HALL21:in std_logic;
					HALL31:in std_logic;
					
					M1p1:out std_logic;
					M1n1:out std_logic;
					M2p1:out std_logic;
					M2n1:out std_logic;
					M3p1:out std_logic;
					M3n1:out std_logic;
				
				 --MOTOR2	
					HALL12:in std_logic;
					HALL22:in std_logic;
					HALL32:in std_logic;
					
					M1p2:out std_logic;
					M1n2:out std_logic;
					M2p2:out std_logic;
					M2n2:out std_logic;
					M3p2:out std_logic;
					M3n2:out std_logic;
					
			  	 --MOTOR3	
					HALL13:in std_logic;
					HALL23:in std_logic;
					HALL33:in std_logic;
				
					M1p3:out std_logic;
					M1n3:out std_logic;
					M2p3:out std_logic;
					M2n3:out std_logic;
					M3p3:out std_logic;
					M3n3:out std_logic;
				
				 --MOTOR4	
					HALL14:in std_logic;
					HALL24:in std_logic;
					HALL34:in std_logic;
					
					M1p4:out std_logic;
					M1n4:out std_logic;
					M2p4:out std_logic;
					M2n4:out std_logic;
					M3p4:out std_logic;
					M3n4:out std_logic;	
					
			    --All motors
					HALL_OUT:out std_logic;
					
					HALL1_COUNT :in std_logic_vector(4 downto 0);
					HALL2_COUNT :in std_logic_vector(4 downto 0);
					HALL3_COUNT :in std_logic_vector(4 downto 0);
					HALL4_COUNT :in std_logic_vector(4 downto 0);
			 
				 --FT245  	
					DATA_USB	 :	out std_logic_vector(7 downto 0);
					USB_WR 	 : out std_logic;	
					TXE		 : in  std_logic;
					
		       --micro_com
					DATA_IN   : in std_logic_vector(6 downto 0);
					DATA_CLK	 : in std_logic ;
					DATA_OUT	 : out std_logic_vector(6 downto 0);
					

					STARTBIT_FLG : in std_logic;
				 --LED
					LED:out std_logic_vector(3 downto 0);
				--MEUNE
					TEST_KEY   : in std_logic_vector(3 downto 0)
					
					 );
		end m;

		architecture Behavioral of m is

		component drivermotor is
				port( 
					CLK:in std_logic;
					HALL1:in std_logic;
					HALL2:in std_logic;
					HALL3:in std_logic;
					M1p:out std_logic;
					M1n:out std_logic;
					M2p:out std_logic;
					M2n:out std_logic;
					M3p:out std_logic;
					M3n:out std_logic;
					HALL_OUT:out std_logic;

					SPEED:in std_logic_vector(15 downto 0);
					ocr_length:in std_logic_vector (7 downto 0 );
					M_show:out std_logic_vector(15 downto 0);
					--HALL_COUNT :in std_logic_vector(4 downto 0);
					LED:out std_logic_vector(3 downto 0);
					FREE_WHEEL : in std_logic ;
					--CLK_200    :in std_logic;
					--kp_in      : in std_logic_vector(15 downto 0);
					TEST_KEY   : in std_logic_vector(3 downto 2)
					 );
			
			end component;
			
			component  Write_to_USB is
				port (
						DATA1_IN   : in std_logic_vector(15 downto 0);
						--DATA2_IN   : in std_logic_vector(7 downto 0);
						DATA_USB	 :	out std_logic_vector(7 downto 0);
						USB_WR 	 : out std_logic;
						TXE		 : in  std_logic;
						CLK_USB   :	in  std_logic
						);
			 end component;
			 
			 component micro_com2 is
				port (
						data_clk : in std_logic;
						CLK : in std_logic;
						DATA_IN : in std_logic_vector(6 downto 0);
						DATA_OUT: OUT std_logic_vector(6 downto 0);
						--generated data in FPGA
						W0 : in std_logic_vector(15 downto 0);
						W1 : in std_logic_vector(15 downto 0);
						W2 : in std_logic_vector(15 downto 0);
						W3 : in std_logic_vector(15 downto 0);
						SB : in std_logic_vector(15 downto 0);

						W0_sp        : out std_logic_vector(15 downto 0);
						W1_sp        : out std_logic_vector(15 downto 0);
						W2_sp        : out std_logic_vector(15 downto 0);
						W3_sp        : out std_logic_vector(15 downto 0);
						SB_sp        : out std_logic_vector(7  downto 0);
						ocr_length   : out std_logic_vector(7  downto 0)
						);
				end component;
				
			
					component ila IS
		  PORT (
			 CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
			 CLK : IN STD_LOGIC;
			 TRIG0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0));

		end component;

		component ICON
		  PORT (
			 CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));

		end component;


			

			signal SPEED1 : std_logic_vector(15 downto 0):=(others=>'0'); --"1111111000001100";--;--"1111011000111100";--"0000111110100000";--(others=>'0'); 
			signal SPEED2 : std_logic_vector(15 downto 0):=(others=>'0'); --"0000111110100000";--
			signal SPEED3 : std_logic_vector(15 downto 0):=(others=>'0'); --"0001000110010100";----"0000001111100100"; 
			signal SPEED4 : std_logic_vector(15 downto 0):=(others=>'0'); --"1111110000011000";--
			
--       new controller & connection
						--generated data in FPGA
			signal W0 : std_logic_vector(15 downto 0);
			signal W1 : std_logic_vector(15 downto 0);
			signal W2 : std_logic_vector(15 downto 0);
			signal W3 : std_logic_vector(15 downto 0);
			signal SB : std_logic_vector(15 downto 0);
--			signal calman_W2 : std_logic_vector(15 downto 0);
--			signal calman_W3 : std_logic_vector(15 downto 0);
						--generated data in camera and gyro
			signal W0_sp        : std_logic_vector(15 downto 0);
			signal W1_sp        : std_logic_vector(15 downto 0);
			signal W2_sp        : std_logic_vector(15 downto 0);
			signal W3_sp        : std_logic_vector(15 downto 0);
			signal SB_sp        : std_logic_vector(7  downto 0);
			signal ocr_length   : std_logic_vector(7  downto 0);
			
			signal MS1_show: std_logic_vector(15 downto 0):="1010101010101010";
			signal MS_show: std_logic_vector(15 downto 0):=(others=>'0');
			signal M1_show: std_logic_vector(15 downto 0):=(others=>'0'); 
		   signal M2_show: std_logic_vector(15 downto 0):=(others=>'0'); 
			signal M3_show: std_logic_vector(15 downto 0):=(others=>'0'); 
			signal M4_show: std_logic_vector(15 downto 0):=(others=>'0'); 
			signal FREE_WHEELS_S: std_logic := '0'; 
			
			signal LED1: std_logic_vector(3 downto 0);
			signal LED2: std_logic_vector(3 downto 0);
			signal LED3: std_logic_vector(3 downto 0);
			signal LED4: std_logic_vector(3 downto 0);
			
			signal CLK_280        : std_logic;
			signal RST_IN         : std_logic:='0';
			signal CLKFX_OUT      : std_logic:='0';
			signal CLK0_OUT       : std_logic:='0';
		
			
			 signal dividend1   : std_logic_vector(31 downto 0):= "00000000001000010011110000000000";--(others=>'0');
			 signal divisor1    : std_logic_vector(15 downto 0):=(others=>'0');
			 signal quotient1   : std_logic_vector(31 downto 0):=(others=>'0');	 
			 signal fractional1 : std_logic_vector(15 downto 0):=(others=>'0');
			 signal rfd1        : std_logic:='0';
			 
			 signal time_count:  std_logic_vector(15 downto 0):="0000000000000000";
	
			constant T_20ns :  std_logic_vector(15 downto 0):="0000000000000001";
			constant T_200ns:  std_logic_vector(15 downto 0):="0000000000001010";
			constant T_400ns:  std_logic_vector(15 downto 0):="0000000000010100";
			constant T_600ns:  std_logic_vector(15 downto 0):="0000000000011110";
			constant T_800ns:  std_logic_vector(15 downto 0):="0000000000101000";
  
         signal  CONTROL1 : STD_LOGIC_VECTOR(35 DOWNTO 0);
--			signal DATA_INs :  std_logic_vector(15 downto 0);
			SIGNAL DATA_TEST: std_logic_vector(6 downto 0) ;
		begin
		
		
--	DATA_INs <= DATA_IN & "000000000";
		 
			--M1		
				driver1:drivermotor port map(HALL1=>HALL11,HALL2=>HALL21,HALL3=>HALL31,CLK=>CLK,hall_OUT=>hall_OUT,
				M1P=>M1P1,M1N=>M1N1,M2P=>M2P1,M2N=>M2N1,M3P=>M3P1,M3N=>M3N1,SPEED=>SPEED1,FREE_WHEEL => FREE_WHEELS_S,TEST_KEY => TEST_KEY(3 DOWNTO 2),M_show=>M1_show, LED=>LED1 , ocr_length=>ocr_length);--, kp_in => speed2);
			--M2	
				driver2:drivermotor port map(HALL1=>HALL12,HALL2=>HALL22,HALL3=>HALL32,CLK=>CLK,TEST_KEY => TEST_KEY(3 DOWNTO 2),M_show=>M2_show, LED=>LED2,-- kp_in => speed2,
				M1P=>M1P2,M1N=>M1N2,M2P=>M2P2,M2N=>M2N2,M3P=>M3P2,M3N=>M3N2,SPEED=>SPEED2,FREE_WHEEL => FREE_WHEELS_S , ocr_length=>ocr_length);	
			--M3	
				driver3:drivermotor port map(HALL1=>HALL13,HALL2=>HALL23,HALL3=>HALL33,CLK=>CLK,TEST_KEY => TEST_KEY(3 DOWNTO 2),M_show=>M3_show, LED=>LED3,-- kp_in => speed2,
				M1P=>M1P3,M1N=>M1N3,M2P=>M2P3,M2N=>M2N3,M3P=>M3P3,M3N=>M3N3,SPEED=>SPEED3,FREE_WHEEL => FREE_WHEELS_S , ocr_length=>ocr_length);
			--M4	
				driver4:drivermotor port map(HALL1=>HALL14,HALL2=>HALL24,HALL3=>HALL34,CLK=>CLK,TEST_KEY => TEST_KEY(3 DOWNTO 2),M_show=>M4_show, LED=>LED4, --kp_in => speed2,
				M1P=>M1P4,M1N=>M1N4,M2P=>M2P4,M2N=>M2N4,M3P=>M3P4,M3N=>M3N4,SPEED=>SPEED4,FREE_WHEEL => FREE_WHEELS_S , ocr_length=>ocr_length);

		--	--FT245
			  FT245:Write_to_USB port map(DATA1_IN=>ms1_show,DATA_USB=>DATA_USB,USB_WR=>USB_WR,TXE=>TXE,CLK_USB=>CLK);		 

			--micro_com2
			  prl_com:micro_com2 port map( DATA_CLK=>DATA_CLK , CLK=>clk , DATA_IN=>DATA_IN , DATA_OUT=>data_out ,
			  W0=>W0 , W1=>W1 , W2=>W2 , W3=>W3 , 
			  SB=>SB , W0_sp=>W0_sp , W1_sp=>W1_sp , W2_sp=>W2_sp , 
			  W3_sp=>W3_sp , SB_sp=>SB_sp , ocr_length=>ocr_length);
			  
			  
--			  ILA1 : ila port map ( CONTROL => CONTROL1, CLK => CLK,  TRIG0 => DATA_INs );
				
--         ICON1: ICON  port map (  CONTROL0 => CONTROL1);
	

			   process(clk)  
					begin
               if rising_edge (clk) then 
--					data_ins <= data_in & DATA_TEST & "00";
						
						SPEED1 <= W0_sp  ;
						SPEED2 <= W1_sp  ;
						SPEED3 <= W2_sp ;
						SPEED4 <= W3_sp ;
						
						
						SB <= W0_sp  ;
						
						W0 <= M1_SHOW ;
						W1 <= M2_SHOW ;
						W2 <= M3_SHOW ;
						W3 <= M4_SHOW ;
						
--						if ( SPEED1 = "1"   ) and ( SPEED2 = "10") and( SPEED3 = "11") and ( SPEED4 = "100") then
						if ( SPEED1 = "100000010"   ) and ( SPEED2 = "1100000100") then
							FREE_WHEELS_S <= '1' ;
						else
							FREE_WHEELS_S <= '0' ;
						end if ;
					end if;
					
					end process;
						
		  
			--test hall for each motor
			
			LED <= 
			       LED1  when TEST_KEY(1 DOWNTO 0) ="00" else
					 LED2  when TEST_KEY(1 DOWNTO 0) ="01" else
					 LED3  when TEST_KEY(1 DOWNTO 0) ="10" else
					 LED4  when TEST_KEY(1 DOWNTO 0) ="11" ;
					 
		  MS_SHOW <= 
					  M1_SHOW  when TEST_KEY(1 DOWNTO 0) ="00" else
					  M2_SHOW  when TEST_KEY(1 DOWNTO 0) ="01" else
					  M3_SHOW  when TEST_KEY(1 DOWNTO 0) ="10" else
					  M4_SHOW  when TEST_KEY(1 DOWNTO 0) ="11" ;
			
		  end Behavioral;

