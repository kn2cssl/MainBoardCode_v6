
	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_unsigned.ALL;
	use IEEE.STD_LOGIC_arith.ALL;
 --  use ieee.numeric_std.ALL;

	entity drivermotor is
	generic (n:integer range 1 to 12:= 12);
	port( clk:in std_logic;
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
			CLK_1MS:out std_logic;
			CHECK_OUT:out std_logic;
			SPEED :in std_logic_vector(15 downto 0);
			M_show:out signed (15 downto 0);
			ERR_M  :out std_logic_vector(15 downto 0);
			kp_M   :in std_logic_vector(19 downto 0);	
		   --HALL_COUNT :in std_logic_vector(4 downto 0);
			LED   :out std_logic_vector(3 downto 0);
			FREE_WHEEL : in std_logic;
			--kp_in      : in std_logic_vector(15 downto 0);
			TEST_KEY   : in std_logic_vector(3 downto 2)
			 );
	end drivermotor;

		
	architecture Behavioral of drivermotor is
   
		
	component PWM is
	generic (n:integer range 1 to 12:= 12);
	port (
		  CLK   : in std_logic;
		  OC_IN : in std_logic_vector (n-1 downto 0);
		  OC_OUT: out std_logic
		  );
   end component;
			
   signal PWM_S       : std_logic;
	signal CLK_TIMER   : std_logic:='0';
	signal RPM_DIR     : std_logic :='0';
	signal hall_out_s  : std_logic:='0';
   signal STATE1      : std_logic_vector(3 downto 0); 
	signal STATE      : std_logic_vector(3 downto 0);
	signal hall_state  : std_logic_vector(2 downto 0); 
   signal hall_state_past  : std_logic_vector(2 downto 0); 
 
  	signal M_RPM_DIR      : signed(15 DOWNTO 0)  :=(others=>'0'); 
   signal M_RPM_DIR_LAST : signed(15 DOWNTO 0)  :=(others=>'0');
	
	constant K_FILTER: signed(10 downto 0) :="00000001111";--0.00595 11 BIT ASHAR
   
	signal TIMER_COUNT : std_logic_vector(16 downto 0):=(others=>'0');
	
	signal HALL_COUNT : std_logic_vector(15 downto 0):=(others=>'0'); 
	
	signal hall1_past  : std_logic;
   --signal hall2_past  : std_logic;
   --signal hall3_past  : std_logic;	
   signal DIR         : std_logic;
	signal M_P_OVERFLOW: std_logic;
	--signal led_S       : std_logic:='0';
	signal CLK_S     : std_logic:='0';
	signal CHECK     : std_logic:='0';
	
	
	signal M_PID       : std_logic_vector(n-1 DOWNTO 0)  :=(others=>'0');	

	signal M_Kp_fp     : signed(19 downto 0):= "00000000011010000000";--(others=>'0'); --10.10 --BIT ALAMAT DARAD!!
	signal M_Kd_fp     : signed(15 downto 0):= "0000000000000000";--12.4  

	
	constant MAX_PWM             : std_logic_vector(10 downto 0):= "11111111111";  
	
	constant MAX_P               : integer range 0 to 2047 := 2047; 
	constant MAX_P_MINUS         : integer range -2047 to 0:= -2047;
	
	
	constant T_1MS     : std_logic_vector(15 downto 0):= "1100001101010000";  
	constant T_500US   : std_logic_vector(15 downto 0):= "0110000110101000";
	
	 constant lim500 : signed(15 DOWNTO 0) := "0000000111110100";--500 
	 constant lim300 : signed(15 DOWNTO 0) := "0000000100101100";--300 
	 constant lim20  : signed(15 DOWNTO 0) := "0000000000010100";--20
	 constant lim200 : signed(15 DOWNTO 0) := "0000000011001000";--200  
	 constant lim50  : signed(15 DOWNTO 0) := "0000000000110010";--50
	 constant lim0   : signed(15 DOWNTO 0) := "0000000000000000";--0   
	 constant lim499 : signed(15 DOWNTO 0) := "0000000111110011";--499 
	 constant lim400 : signed(15 DOWNTO 0) := "0000000110010000";--400  	
	 constant lim10  : signed(15 DOWNTO 0) := "0000000000001010";--10  
	 constant lim15  : signed(15 DOWNTO 0) := "0000000000001111";--15  
	 constant lim100 : signed(15 DOWNTO 0) := "0000000001100100";--100
	 constant lim40  : signed(15 DOWNTO 0) := "0000000000101000";--40
	 constant lim1250: std_logic_vector(15 DOWNTO 0) := "0000010011100010";--1250
	 constant lim150 : signed(15 DOWNTO 0) := "0000000010010110";--150
	 constant lim5   : signed(15 DOWNTO 0) := "0000000000000101";--5
    constant lim1   : signed(15 DOWNTO 0) := "0000000000000001";--1	
	 constant lim_minus15: signed(15 DOWNTO 0) := "1111111111110001";-- -15

	 
		
	 signal  M_ERROR   : signed(15 DOWNTO 0) :=(others=>'0'); --for show
    signal  RPM_DIFF_show   : signed (15 DOWNTO 0)  :=(others=>'0');  --for show
	
	begin
	
	PWM_1:PWM port map (OC_IN =>M_PID ,CLK =>CLK  ,OC_OUT=>PWM_S  );
	
-- help : counting number of hall sensors interupts per 1ms
	read_sensors:process(clk,HALL1,HALL2,HALL3,DIR)

				  begin
				  if rising_edge (clk)then
				  hall_state <= (HALL3 & HALL2 & HALL1);
				  if(hall_state /= hall_state_past) then
				  hall_count <= hall_count+1;
				  hall_out_S<= not hall_out_s;
				  end if;
				  
				  if(clk_timer='1')then
				  hall_count <= (others=>'0');
				  end if;
				  
			 --  help : permits driver to drive motor or leave it to be free
				  if(FREE_WHEEL='1')then
				  STATE1 <= "0111";	
				  elsif(FREE_WHEEL='0')then
				  STATE1 <=(DIR & hall_state) ;
				  end if;
				  
				  LED(3 downto 1) <= hall_state;
				  hall_state_past <= hall_state;
				  end if;	  
				  end process;
					  
	
	HALL_OUT <= HALL_OUT_S;--FOR TEST	

-- help : this process drives 	brushless dc motor			  
	motor_update :process(clk,HALL1,HALL2,HALL3,DIR,SPEED,STATE1,PWM_S)
					  begin
					  
					  case STATE1 is 
					  
					  when "0001" --(1|0x00)
													 =>  M2p<='0'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='1'; M1n<= PWM_S;
					  when "1110" --(6|0x08)
													 =>  M2p<='0'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='1'; M1n<= PWM_S;
					  when "0010" --(2|0x00) 
													 =>  M2p<='1'; M1p<='0'; M2n<='0';	  M3n<=PWM_S; M3p<='0'; M1n<='0';
					  when "1101" --(5|0x08) 
				 									 =>  M2p<='1'; M1p<='0'; M2n<='0';	  M3n<=PWM_S; M3p<='0'; M1n<='0';
					  when "0011" --(3|0x00) 
													 =>  M2p<='1'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='0';  M1n<=PWM_S;
					  when "1100" --(4|0x08) 
													 =>  M2p<='1'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='0';  M1n<=PWM_S;
					  when "0100" --(4|0x00) 
													 =>  M2p<='0'; M1p<='1'; M2n<=PWM_S;  M3n<='0';   M3p<='0';   M1n<= '0';
					  when "1011" --(3|0x08) 
													 =>  M2p<='0'; M1p<='1'; M2n<=PWM_S;  M3n<='0';   M3p<='0';   M1n<= '0';
					  when "0101" --(5|0x00) 
													 =>  M2p<='0'; M1p<='0'; M2n<= PWM_S;	  M3n<='0';   M3p<='1';   M1n<='0' ;
					  when "1010" --(2|0x08) 
													 =>  M2p<='0'; M1p<='0'; M2n<= PWM_S;	  M3n<='0';   M3p<='1';   M1n<= '0';
					  when "0110" --(6|0x00) 
													 =>  M2p<='0'; M1p<='1'; M2n<='0';	  M3n<=PWM_S;   M3p<='0'; M1n<= '0';
					  when "1001" --(1|0x08) 
													 =>  M2p<='0'; M1p<='1'; M2n<='0';	  M3n<=PWM_S;   M3p<='0'; M1n<= '0';
					  when "0111" --(7|0x08) 
													 =>  M2p<='0'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='0';   M1n<='0';
					  when others            =>  M2p<='0'; M1p<='0'; M2n<='0';	  M3n<='0';   M3p<='0';   M1n<='0';							 
					  end case;								 
					  end process;				  

		 

-- help : this process determines direction of rotation of wheel
SPEED_DIRECTION:	process(clk)
					begin
					if rising_edge(clk) then
					if hall1='1'  and hall1_past='0' then
					RPM_DIR <= HALL2;
					end if; 
					
					hall1_past <= hall1;
					end if;
					end process;



					
-- help : timer for 1ms
TIMER:			process(clk)  
					begin	
					if rising_edge (clk) then 
						TIMER_COUNT <=  TIMER_COUNT+'1';
						if(TIMER_COUNT = T_1MS) then
							CLK_TIMER <= '1';
							TIMER_COUNT <= (others=>'0');
						else
							CLK_TIMER <= '0';
						end if;	
					end if;				 
					end process;
			
			

-- help : filtering hall_interupt data and calculating wheel speed (using low pass filter)
CALCULATE_SPEED:process(clk,CLK_TIMER)

	   variable RPM_s     : signed (37 DOWNTO 0) :=(others=>'0');
	   variable RPM_LAST  : signed (26 downto 0) :=(others=>'0');--16.11
	   variable RPM_H     : std_logic_vector (26 downto 0) :=(others=>'0');
		variable RPM_HS    : signed (26 downto 0) :=(others=>'0');
	   variable RPM_F     : signed (26 downto 0) :=(others=>'0');
		
					begin
               if rising_edge (clk) then
                if CLK_TIMER = '1' then
					 
						M_RPM_DIR_LAST  <= RPM_F(26 DOWNTO 11);
						RPM_LAST := RPM_F;
						RPM_H    := ((HALL_COUNT * lim1250)& "00000000000");
						
						if(RPM_DIR='1')then
							RPM_HS   :=signed('0'-RPM_H);
						elsif(RPM_DIR='0')then
							RPM_HS   :=signed(RPM_H);
						end if;
						
						RPM_S    :=(K_FILTER*(RPM_HS - RPM_LAST));--0.11 * 16.11
					   RPM_F    := RPM_LAST + RPM_S(37 downto 11 );-- + lims1;-- signed("0000000000000000100000000000");
					   M_RPM_DIR  <= RPM_F(26 DOWNTO 11) + '1';

					 end if;
				   end if;
					end process;




setpoint_dd:process(clk)	
				begin											 
					if(speed(15)='1')then
					  DIR<='1'; 
					  M_PID <= "0000000000000000" - speed  ;
					  else
					  DIR<='0'; 
					  M_PID <= speed ;
					  end if;
			end process;

					
						     M_SHOW  <= M_RPM_DIR;
--										     M_RPM_DIR                               when TEST_KEY="00" else                              
--										     signed("0000"& M_KD_fp(15 downto 4))     when TEST_KEY="01" else              
--										     signed(speed)                           when TEST_KEY="10" else 
--                 				        signed("000000"& M_KP_fp(19 DOWNTO 10)) when TEST_KEY="11" ;								  -- t     
										

			 end Behavioral;

