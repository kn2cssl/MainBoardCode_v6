
	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_unsigned.ALL;
	use IEEE.STD_LOGIC_arith.ALL;
 --  use ieee.numeric_std.ALL;

	entity drivermotor is
	generic (n:integer range 1 to 11 := 11);
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
			SPEED :in std_logic_vector(15 downto 0);
			M_show:out signed (15 downto 0);
		   --HALL_COUNT :in std_logic_vector(4 downto 0);
			LED   :out std_logic_vector(3 downto 0);
			FREE_WHEEL : in std_logic;
			TEST_KEY   : in std_logic_vector(3 downto 0)
			 );
	end drivermotor;

		
	architecture Behavioral of drivermotor is
   
		
      component PWM is
		generic (n:integer range 1 to 11 := 11);
   	port (
      	  CLK   : in std_logic;
		     OC_IN : in std_logic_vector (n-1 downto 0);
			  OC_OUT: out std_logic
			 );
   end component;
	
		
  
	signal PWM_S       : std_logic;
	signal STATE1      : std_logic_vector(3 downto 0); 
   signal CLK_TIMER   : std_logic:='0';
 
  	signal M_RPM_DIR      : signed(15 DOWNTO 0)  :=(others=>'0'); 
   signal M_RPM_DIR_LAST : signed(15 DOWNTO 0)  :=(others=>'0'); 
	
 	
	signal  M_RPMF    : std_logic_vector(15 DOWNTO 0) :=(others=>'0'); 
   signal  RPM_DIR   : std_logic :='0';	  --meghdar avalie pak beshe faghat vase shabih sazi
   signal  M_ERR_LAST: signed(15 downto 0);

-- signal  RPM_DIFF        : signed (15 DOWNTO 0)  :=(others=>'0');
--	signal  RPM_DIFF_LAST   : signed (15 DOWNTO 0)  :=(others=>'0');
	
	constant K_FILTER: signed(7 downto 0) :="00000010";--0.8
   
	signal TIMER_COUNT : std_logic_vector(16 downto 0):=(others=>'0');
	
	signal HALL1_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
	signal HALL2_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
	signal HALL3_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
 
	
	signal hall1_past  : std_logic;
   signal hall2_past  : std_logic;
   signal hall3_past  : std_logic;	
   signal DIR         : std_logic;
	signal M_P_OVERFLOW: std_logic;
	
	
	
	
	signal M_PID       : std_logic_vector(n-1 DOWNTO 0)  :=(others=>'0');	

	signal M_Kp_fp     : signed(16 downto 0):= "00000011010000000";--(others=>'0'); --7.10 --BIT ALAMAT DARAD!!
	signal M_Kd_fp     : signed(15 downto 0):= "0000000000000000";--12.4  
	

	
	constant MAX_PWM             : std_logic_vector(10 downto 0):= "11111111111";  
	
	constant MAX_P               : integer range 0 to 2047 := 2047; 
	constant MAX_P_MINUS         : integer range -2047 to 0:= -2047;
	
	constant MAX_D               : integer range 0 to 2400 := 2400;
	constant MAX_D_MINUS         : integer range -2400 to 0:= -2400;
	
	constant MAX_PD               : integer range 0 to 2047 := 2047;
	constant MAX_PD_MINUS         : integer range -2047 to 0:= -2047;
	
	constant T_1MS     : std_logic_vector(15 downto 0):= "1100001101010000";  
	constant T_2MS     : std_logic_vector(16 downto 0):= "11000011010100000";
	constant T_20MS    : std_logic_vector(16 downto 0):= "11000011010100000";
	constant T_1S      : std_logic_vector(26 downto 0):= "001111101011110000100000000";--1.3
	
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
	 constant lim80  : signed(15 DOWNTO 0) := "0000000001010000";--80
	 
	 constant KP1_fp         : signed(16 DOWNTO 0):= "00000011010000000";--7.10 --1.625
	 constant KP2_fp         : signed(16 DOWNTO 0):= "00010000000000000";--7.10 --8
	 constant KP3_fp         : signed(16 DOWNTO 0):= "00000000001010000";--7.10 --0.078
	  
	 constant lim_KP1_fp     : signed(16 DOWNTO 0):= "00101001100000000";--7.10 --20.75
	 constant lim_KP2_fp     : signed(16 DOWNTO 0):= "00110011010000000";--7.10 --25.625
	
  	 constant KP1_PLUS_fp    : signed(16 DOWNTO 0):= "00000000000001000";--7.10 --0.0078
    constant KP2_PLUS_fp    : signed(16 DOWNTO 0):= "00000000100000000";--7.10 --0.025
    constant KP1_MINUS_fp   : signed(16 DOWNTO 0):= "00000000000111000";--7.10 --0.054
    constant KP2_MINUS_fp   : signed(16 DOWNTO 0):= "00000000000000001";--7.10 --.00097

    constant KD_0   : signed(15 DOWNTO 0) := "0000000000000000";--0   --12.4 --BIT ALAMAT DARAD!!
	 constant KD_400 : signed(15 DOWNTO 0) := "0001100100000000";--400 --12.4 
	 constant KD_16  : signed(15 DOWNTO 0) := "0000000100000000";--16  --12.4 
	 constant KD_8   : signed(15 DOWNTO 0) := "0000000010000000";--8   --12.4 
	 	
		signal  M_ERROR   : signed(15 DOWNTO 0) :=(others=>'0'); --for show
	   signal  LIM   : signed(15 DOWNTO 0) :=(others=>'0'); --for show
	 


	 
	 			 

	
	begin
	
	PWM_1:PWM port map (OC_IN =>M_PID ,CLK =>CLK  ,OC_OUT=>PWM_S  );
	
	
	
free_read_sensors:process(clk,HALL1,HALL2,HALL3,DIR)
					  begin
					  
					  if(FREE_WHEEL='1')then
                 STATE1 <= "0111";	
					  elsif(FREE_WHEEL='0')then
					  STATE1 <=(DIR & HALL3 & HALL2 & HALL1) ;
					  end if;
					  
					 -- LED(3 downto 1) <=  (HALL3 & HALL2 & HALL1);
					  end process;
					  
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

		 
  count_hall1:	process(clk)
					begin
					if rising_edge(clk) then
					if hall1='1'  and hall1_past='0' then
					HALL1_COUNT <= HALL1_COUNT+1;
					RPM_DIR <= HALL2;
					elsif hall1='0'  and hall1_past='1' then
					HALL1_COUNT <= HALL1_COUNT+1;
					else
					HALL1_COUNT <= HALL1_COUNT;
					if CLK_TIMER='1' then
					HALL1_COUNT <= (others=>'0');
					end if;
					end if; 
					
					hall1_past <= hall1;
					end if;
					end process;
					

 count_hall2:	process(clk)
					begin
					if rising_edge(clk) then
					if hall2='1'  and hall2_past='0' then
					HALL2_COUNT <= HALL2_COUNT+1;
					elsif hall2='0'  and hall2_past='1' then
					HALL2_COUNT <= HALL2_COUNT+1;
					else
					HALL2_COUNT <= HALL2_COUNT;
               if CLK_TIMER='1' then
					HALL2_COUNT <= (others=>'0');
					end if;
					end if; 					
					
					hall2_past <= hall2;
					end if;
					end process;
					
					
 count_hall3:	process(clk)
            
					begin
					if rising_edge(clk) then
					if hall3='1'  and hall3_past='0' then
					HALL3_COUNT <= HALL3_COUNT+1;
					elsif hall3='0'  and hall3_past='1' then
					HALL3_COUNT <= HALL3_COUNT+1;
					else
					HALL3_COUNT <= HALL3_COUNT;
					if CLK_TIMER='1' then
				   HALL3_COUNT <= (others=>'0');
					end if;
					end if; 
					
					hall3_past <= hall3;
					end if;
					end process;
					
          					
				   	

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
				  -- led(0) <= CLK_TIMER;
				   
			
			
			
			
         
CALCULATE_SPEED:process(clk,CLK_TIMER)

					 
	   variable RPM_s     : signed (31 DOWNTO 0) :=(others=>'0');
	   variable RPM_LAST  : signed (23 downto 0) :=(others=>'0');
	   variable RPM_H     : signed (23 downto 0) :=(others=>'0');
	   variable RPM_F     : signed (23 downto 0) :=(others=>'0');
	   variable RPM_ABS   :  std_logic_vector (23 downto 0) :=(others=>'0');
		variable HALL_COUNT:  std_logic_vector(4 downto 0);
		
					 
					  begin
                if rising_edge (clk) then
                if CLK_TIMER ='1' then
						
                  HALL_COUNT := HALL1_COUNT + HALL2_COUNT + HALL3_COUNT;						
						RPM_LAST := RPM_F;
						RPM_H    := signed(HALL_COUNT * "10011100010")& "00000000";
						RPM_S    :=(K_FILTER*(RPM_H - RPM_LAST));
					   RPM_F    := RPM_LAST + RPM_S(31 downto 8);
                  
				      RPM_ABS  := ABS (RPM_F);
						M_RPMF   <= RPM_ABS(23 DOWNTO 8);
						
						M_RPM_DIR_LAST  <= M_RPM_DIR;	
						
						if(RPM_DIR='1')then
						M_RPM_DIR <= signed('0'- M_RPMF) ;
                  elsif(RPM_DIR='0')then						
						M_RPM_DIR <= signed(M_RPMF);
						end if;
						
						
						--M_SHOW <= M_RPM_DIR;

					 end if;
				    end if;
					end process;
				

	KD_TUNINIG:		process(clk)
					 
					 	 variable BRIDGE  : std_logic:='0';
						 variable MISS    : std_logic:='0';
						 variable CHANGE  : std_logic:='0';	
						 variable TRACK   : std_logic:='0';
						 variable SETPOINT_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
				       variable SETPOINT       : signed (15 DOWNTO 0)  :=(others=>'0');
						 variable RPM_DIFF_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
				       variable RPM_DIFF       : signed (15 DOWNTO 0)  :=(others=>'0');
				       variable M_ERR          : signed (15 DOWNTO 0)  :=(others=>'0');
	                
                begin
                if rising_edge (clk) then
					 if CLK_TIMER ='1'  then
					 
				    SETPOINT := signed(SPEED);
					 M_ERR    := signed(SPEED)- M_RPM_DIR ;
                RPM_DIFF_LAST   := RPM_DIFF;
					 RPM_DIFF        := M_RPM_DIR - M_RPM_DIR_LAST;
                

						
              if (CHANGE ='1' and  abs(M_ERR) > lim300 ) then  
                  BRIDGE := '1';
				  end if;
					 
				  if (BRIDGE ='1' and abs (M_ERR )< lim300 )then
					BRIDGE := '0';
					MISS   := '1';
				  end if;
					 
					 
				 if (MISS  ='1' and RPM_DIFF(15)/= RPM_DIFF_LAST(15))then
					MISS  := '0';
					TRACK := '1';
				 end if;
					 
					 
					 
--					 if(TRACK ='1') then
--					   M_Kd_fp <= KD_0;
--					 end if;
					 
					 if(MISS ='1') then
					   M_Kd_fp  <= KD_400;
					 end if;
					 
					 if(TRACK ='1') then
					   M_Kd_fp <= KD_16;
					 if( abs(SETPOINT) < lim500) then  --???? 
					   M_Kd_fp <= KD_8;
					 end if;
					 end if;
					 
					 CHANGE :='0';
					 if(SETPOINT_LAST /=  SETPOINT ) then 		  ---???			 
					
						CHANGE :='1';
						TRACK  :='0';
					 end if;
					 
					 SETPOINT_LAST  :=  SETPOINT;
				    end if;
					 end if;
					 end process;



 KP_TUNING:process(clk)
	            
				  variable M_ERR          : signed (15 DOWNTO 0)  :=(others=>'0');
	           variable M_ERR_LAST     : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable SETPOINT_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable SETPOINT       : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable SETPOINT_DIFF  : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable  RPM_DIFF      : signed (15 DOWNTO 0)  :=(others=>'0');
	           variable  RPM_DIFF_LAST : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable LIMIT_KP_fp       : signed (31 DOWNTO 0)  :=(others=>'0');
				  variable LIMIT_KP      : signed (21 DOWNTO 0)  :=(others=>'0');
				  
				  begin
				  if rising_edge (clk) then
				  if CLK_TIMER ='1'  then
				     SETPOINT       := signed( SPEED);
					  --M_ERR_LAST     :=  M_ERR;
   				  M_ERR          :=  SIGNED(SPEED) -  M_RPM_DIR ; 
					 SETPOINT_DIFF   := setpoint - setpoint_last;
					 RPM_DIFF_LAST   := RPM_DIFF;
					 RPM_DIFF        := M_RPM_DIR - M_RPM_DIR_LAST;
                
					 LIMIT_KP_fp    := M_KP_fp*M_ERR; --6.10 * 16.0 = 22.10  (31 DOWNTO 10)  BIT HAYE SAHIH
					 LIMIT_KP       := LIMIT_KP_fp(31 DOWNTO 10);
					 
					 LIM             <= LIMIT_KP(15 DOWNTO 0);--FOR SHOW

         if (M_p_overflow = '0')	then
	
			if( abs(RPM_DIFF)<lim15 and abs(M_ERR)>lim400 and abs(M_RPM_DIR)>lim10 and abs(LIMIT_KP)<MAX_PWM) then
			M_KP_fp <= M_KP_fp + KP2_PLUS_fp;
			end if;
			
		   if( abs(RPM_DIFF)<lim15 and abs(M_ERR)< lim400 and abs(M_RPM_DIR)>lim10 and abs(M_ERR)>lim15 and abs(LIMIT_KP)<MAX_PWM ) then
			M_KP_fp <= M_KP_fp + KP1_PLUS_fp;
			end if; 

			end if;
			
         if (abs(M_RPM_DIR) > abs(SETPOINT)) then
		
		   if (abs(RPM_DIFF) < lim10 and abs(M_ERR) < lim400 and abs(M_ERR)  > lim10 and abs(M_RPM_DIR)>lim10  and abs(SETPOINT) > lim499 ) then
			M_KP_fp <= M_KP_fp - KP1_MINUS_fp;
			end if;
			
			if (abs(RPM_DIFF) < lim10 and abs(M_Err) < lim400 and abs(M_Err) > lim10 and abs(SETPOINT) < lim499 ) then
			M_KP_fp <= M_KP_fp - KP2_MINUS_fp;
			end if;
			
			if (M_KP_fp < KP1_fp   ) then
			M_KP_fp <= KP1_fp ;
			end if;
			
         end if;	

--		  if (abs(M_KP_fp * M_Err) > MAX_PWM) then --6.10 * 16.0 = 22.10  
--		   M_KP_fp <= (CONV_INTEGER(MAX_P )+ LIM10) / M_Err ;
--		  end if;	
				
			if (abs(M_RPM_DIR)<lim50) then
			
				if (abs(SETPOINT) > lim499) then
				 M_KP_fp <= KP1_fp;
				else
				 M_KP_fp <= KP2_fp;
				end if;
			end if;	
			
			
			if (abs(SETPOINT)<lim500) then
			 M_KP_fp <= KP2_fp;
		   end if;
			
			if (abs(SETPOINT_DIFF) > abs(RPM_DIFF) and  abs(M_Err) > lim200) then
			 M_KP_fp <= M_KP_fp + abs(SETPOINT_DIFF - RPM_DIFF)* KP3_fp;
			end if;			
				 
			
				SETPOINT_LAST  :=  SETPOINT;
				   end if;
				   end if;
					--M_SHOW <= M_Kp_fp;
				  end process;
   
               
 PD_CONTROLLER: 	 process(clk)
					   
				       variable M_SETPOINT  : signed (15 DOWNTO 0)  :=(others=>'0');								 
                   variable M_RPM       : signed (15 DOWNTO 0)  :=(others=>'0');   
						 variable M_ERR       : signed (15 DOWNTO 0)  :=(others=>'0');	
						 variable M_ERR_fp    : signed (16 DOWNTO 0)  :=(others=>'0');	--16.1
						 
						 variable M_P_fp      : signed (32 DOWNTO 0)  :=(others=>'0');	--23.11  --HASEL 16.0 * 7.10
						 variable M_P         : signed (22 DOWNTO 0)  :=(others=>'0');
						 variable M_P_ABS     : std_logic_vector(20 DOWNTO 0)  :=(others=>'0');
						 
						 variable M_D_fp      : signed (31 DOWNTO 0)  :=(others=>'0');--28.12   --HASEL 16.8 * 12.4
						 variable M_D         : signed (27 DOWNTO 0)  :=(others=>'0');
						 
						 variable M_PD        : signed (30 DOWNTO 0)  :=(others=>'0'); --28+20		
						 variable M_PD_ABS     : std_logic_vector (30 DOWNTO 0)  :=(others=>'0');	--20.11
						 
                   variable  RPM_DIFF      : signed (15 DOWNTO 0)  :=(others=>'0');						 
					   
					  begin 
					  if rising_edge (clk) then
					  if CLK_TIMER ='1' 	then
					  
					  M_SETPOINT :=  signed( SPEED );
					  M_RPM      :=  M_RPM_DIR ;
   				  M_ERR      :=  M_SETPOINT -  M_RPM ; 
   				  RPM_DIFF   := M_RPM_DIR - M_RPM_DIR_LAST; 
					  
					  
  					  M_P_fp  := (M_ERR * M_KP_fp) ; --16.0 * 7.10 =23.10 
                 M_P     := M_P_fp(32 downto 10);
					  
					   M_p_overflow <= '0';
					  if(M_P>=MAX_P)then
					  M_P := SIGNED( conv_std_logic_vector (MAX_P,22));
					  M_p_overflow <= '1';
					  elsif(M_P<= MAX_P_MINUS)then
				     M_P := SIGNED(conv_std_logic_vector (MAX_P_MINUS,22));
					  M_p_overflow <= '1';
					  end if;
					  
 					  M_D_fp := RPM_DIFF * M_KD_fp;
                 M_D    := M_D_fp (31 downto 4);					  
					 
							
--			         if (M_D>= MAX_D) then 
--					   M_D := SIGNED( conv_std_logic_vector (MAX_D,28));
--						elsif(M_D<MAX_D_MINUS) then                                    ---az m_d eshbae nagereftim 
--						M_D := SIGNED(conv_std_logic_vector (MAX_D_MINUS,28));         --to code asli az rpm_diff eshba gerefte!
--                  end if;
                  
						M_PD := M_P - M_D;
						
						if (M_PD>= MAX_PD) then 
					   M_PD := SIGNED( conv_std_logic_vector (MAX_PD,31));
						elsif(M_PD<MAX_PD_MINUS) then
					 	M_PD := SIGNED(conv_std_logic_vector (MAX_PD_MINUS,31));
                  end if;
						
					  if(M_PD(30)='1')then
					  DIR<='1'; 
					  else
					  DIR<='0'; 
					  end if;
                 
					  if((m_setpoint=lim0) and (m_err <= lim10 )) then
					  M_PID  <= "00000000000"; 
					  else
					  M_PD_ABS := ABS(M_PD);
					  M_PID  <=  M_PD_ABS(10 downto 0); 
					  end if;
					  --M_SHOW <= m_err;--M_SETPOINT;--signed("00000"& M_pid);
					  
					  --M_PID <= "00111111100";
					  --DIR <= '0';
					  M_ERROR <= M_ERR;
					  end if;
					  end if;					  
					  end process;
					  
--					  led <= test_key; 		 
               
				     M_SHOW  <= 
										 M_RPM_DIR   when TEST_KEY="0011" else --3
										 M_ERROR     when TEST_KEY="0110" else --6
										 LIM        when TEST_KEY="1100" else --12
			                      M_KP_fp(16 DOWNTO 1)    when TEST_KEY="1001" ;    --9
                 
						
					
				
			 end Behavioral;

				
        