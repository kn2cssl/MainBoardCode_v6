
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
			FREE_WHEEL : in std_logic
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
	signal M_RPMF    : std_logic_vector(15 DOWNTO 0) :=(others=>'0'); 
   signal RPM_DIR   : std_logic :='0';	  --meghdar avalie pak beshe faghat vase shabih sazi
   signal M_ERR_LAST: signed(15 downto 0);
   signal RPM_DIFF       : signed (15 DOWNTO 0)  :=(others=>'0');
	signal RPM_DIFF_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
	constant K_FILTER: signed(7 downto 0) :="00000010";--0.8
   
	signal TIMER_COUNT : std_logic_vector(16 downto 0):=(others=>'0');
	
	signal HALL1_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
	signal HALL2_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
	signal HALL3_COUNT : std_logic_vector(4 downto 0):=(others=>'0');
 
	
	signal hall1_past  : std_logic;
   signal hall2_past  : std_logic;
   signal hall3_past  : std_logic;	
   signal DIR         : std_logic;
	
	
	
	
	
	signal M_PID       : std_logic_vector(n-1 DOWNTO 0)  :=(others=>'0');	

	signal M_Kp_fp     : signed(15 downto 0):= "0000011010000000";--(others=>'0'); --6.10 --BIT ALAMAT DARAD!!
	signal M_Kd_fp     : signed(15 downto 0):= "0000000000001000";--12.4  
	

	
	constant MAX                 : std_logic_vector(37 downto 0):= "00000000011111111111000000000000000000";  
	
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
	
	-- constant lim11 : signed(15 DOWNTO 0) := "0000000000000101";--5
	 constant lim10: signed(15 DOWNTO 0) := "0000000111110100";--500
	 constant lim9 : signed(15 DOWNTO 0) := "0000000000000101";--300
	 constant lim8 : signed(15 DOWNTO 0) := "0000000000000101";--5
	 constant lim7 : signed(15 DOWNTO 0) := "0000000000001010";--10
	 constant lim6 : signed(15 DOWNTO 0) := "0000000000110010";--50
	 constant lim5 : signed(15 DOWNTO 0) := "0000000000000000";--0
	 constant lim4 : signed(15 DOWNTO 0) := "0000011101101100";--1900
	 constant lim3 : signed(15 DOWNTO 0) := "0000001010111100";--700	
	 constant lim2 : signed(15 DOWNTO 0) := "0000000000001010";--10
	 constant lim1 : signed(15 DOWNTO 0) := "0000000000110010";--100
	 
	 constant KP1_fp         : signed(15 DOWNTO 0):= "0000011010000000";--6.10 --1.625
	 
	 constant lim_KP1_fp     : signed(15 DOWNTO 0):= "0101001100000000";--6.10 --20.75
	 constant lim_KP2_fp     : signed(15 DOWNTO 0):= "0110011010000000";--6.10 --25.625
	 constant KP1_PLUS_fp    : signed(15 DOWNTO 0):= "0000000000000010";--6.10--0.0019 --0.0078
    constant KP2_PLUS_fp    : signed(15 DOWNTO 0):= "0000000010000000";--6.10 --0.024

    constant KD1 : signed(15 DOWNTO 0) := "0000000000000000";--0
	 constant KD2 : signed(15 DOWNTO 0) := "0000000110010000";--400
	 constant KD3 : signed(15 DOWNTO 0) := "0000000000010000";--16
	 constant KD4 : signed(15 DOWNTO 0) := "0000000000001000";--8
	 
	 
	 


	 
	 			 

	
	begin
	
	PWM_1:PWM port map (OC_IN =>M_PID ,CLK =>CLK  ,OC_OUT=>PWM_S  );
	
	
	
free_read_sensors:process(clk,HALL1,HALL2,HALL3,DIR)
					  begin
					  
					  if(FREE_WHEEL='1')then
                 STATE1 <= "0111";	
					  elsif(FREE_WHEEL='0')then
					  STATE1 <=(DIR & HALL3 & HALL2 & HALL1) ;
					  end if;
					  
					  LED(3 downto 1) <=  (HALL3 & HALL2 & HALL1);
					  end process;
					  
	motor_update :process(clk,HALL1,HALL2,HALL3,DIR,SPEED,STATE1,PWM_S)
					  begin
					  if rising_edge(clk) then
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
					  
					  end if;
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
				   led(0) <= CLK_TIMER;
				   
			
			
			
			
         
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
						
						--RPM_DIFF <= RPM_F - RPM_LAST;
						
						--M_SHOW <= M_RPM_DIR;

					 end if;
				    end if;
					end process;
					 
					
					
				    M_RPM_DIR  <= 
					             signed('0'- M_RPMF)         when RPM_DIR ='1' else
									 signed(M_RPMF)              when RPM_DIR ='0' ;
								
					
--                process(clk,M_RPM_DIR)
--					 begin
--					 if rising_edge (clk) then
--                if CLK_TIMER ='1' then
--					 
--					 RPM_DIFF_LAST   <= RPM_DIFF;
--					 RPM_DIFF        <= M_RPM_DIR - M_RPM_DIR_LAST;
--                M_RPM_DIR_LAST  <= M_RPM_DIR;					 
--					 
--					 end if;
--					 end if;
--					 end process;
                


--		 
--KD_TUNINIG:		process(clk)
--					 
--					 	 variable BRIDGE  : std_logic:='0';
--						 variable MISS    : std_logic:='0';
--						 variable CHANGE  : std_logic:='0';	
--						 variable TRACK   : std_logic:='0';
--						 variable SETPOINT_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
--				       variable SETPOINT       : signed (15 DOWNTO 0)  :=(others=>'0');
--				       variable M_ERR          : signed (15 DOWNTO 0)  :=(others=>'0');
--	                
--                begin
--                if rising_edge (clk) then
--					 if CLK_TIMER ='1'  then
--					 
--				    SETPOINT := signed(SPEED);
--					 M_ERR    := signed(SPEED)- M_RPM_DIR ;
--                
--					 if(SETPOINT_LAST /=  SETPOINT ) then 					 
--					
--						CHANGE :='1';
--						TRACK  :='0';
--					 end if;
--						
--              if (CHANGE ='1' and  M_ERR > lim9 ) then  
--                  BRIDGE := '1';
--				  end if;
--					 
--				 if (BRIDGE ='1' and M_ERR < lim9 )then
--					BRIDGE := '0';
--					MISS   := '1';
--				  end if;
--					 
--					 
--				 if (MISS  ='1' and RPM_DIFF(15)/= RPM_DIFF_LAST(15))then
--					MISS  := '0';
--					TRACK := '1';
--				 end if;
--					 
--					 
--					 
--					 if(TRACK ='0') then
--					   M_Kd_fp <= KD1;
--					 end if;
--					 
--					 if(MISS ='1') then
--					   M_Kd_fp  <= KD2;
--					 end if;
--					 
--					 if(TRACK ='1') then
--					   M_Kd_fp <= KD3;
----					 if( abs(SETPOINT) < lim10) then   
----					   M_Kd_fp <= KD4;
----					 end if;
--					 end if;
--					 
--					 SETPOINT_LAST  :=  SETPOINT;
--				    end if;
--					 end if;
--					 end process;
--					 
					 
----					 //stage.5 : data storage
----	// :)
----    M.PID_last = M.PID ;
----	M.p_last = M.p;
----	M.PID_Err_last = M.PID_Err ;
----	M.Setpoint_change = 0;
----	if (M.Setpoint_last != M.Setpoint )
----	{
----		M.Setpoint_change = 1;
----		M.Setpoint_track = 0;
----	}
----	M.Setpoint_last = M.Setpoint ;
----					 
--					 
					 
					 
					 
--					 	if (M.Setpoint_change == 1 &&  abs(M.PID_Err) > lim3)
--		{
--			M.Setpoint_bridge = 1;
--		}
--		
--		if (M.Setpoint_bridge == 1 && abs(M.PID_Err) < lim3)
--		{
--			M.Setpoint_bridge = 0;
--			M.Setpoint_miss = 1;
--		}
--		
--		if (M.Setpoint_miss == 1 && sign(M.d_last) != sign(M.d))
--		{
--			M.Setpoint_miss = 0;
--			M.Setpoint_track = 1;
--		}



--	
--	if (M.Setpoint_track)
--	{
--		M.kd = 0 ;
--	}
--	
--	if (M.Setpoint_miss)
--	{
--		M.kd = 50 ;
--	}
--	
--	if (M.Setpoint_track)
--	{
--		M.kd = 2 ;
--		if (M.Setpoint < 500)
--		{
--			M.kd = 1 ;
--		}
--	}
--	
    KP_TUNING:process(clk)
	            
				  variable M_ERR          : signed (15 DOWNTO 0)  :=(others=>'0');
	           variable M_ERR_LAST     : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable SETPOINT_LAST  : signed (15 DOWNTO 0)  :=(others=>'0');
				  variable SETPOINT       : signed (15 DOWNTO 0)  :=(others=>'0');
				  
				  begin
				  if rising_edge (clk) then
				  if CLK_TIMER ='1'  then
				     SETPOINT       := signed( SPEED);
					  M_ERR_LAST     :=  M_ERR;
   				  M_ERR          :=  signed(SPEED) -  M_RPM_DIR ; 
					  
					  
              if ((abs(M_ERR - M_ERR_LAST)< lim1) and (abs(M_ERR)<lim3) and (abs(M_ERR) > lim1) and ((M_KP_fp < lim_KP1_fp )  or  ((abs(M_RPM_DIR)>lim4) and (M_KP_fp < lim_KP2_fp)))  and (abs(M_RPM_DIR)>lim7) ) then
				  M_KP_fp <= M_KP_fp + KP1_PLUS_fp;--0.008
				  end if;
				  if ((abs(M_ERR - M_ERR_LAST)< lim1) and (abs(M_ERR)>lim3) and ((M_KP_fp < lim_KP1_fp )  or (abs(M_RPM_DIR)>lim4))  and (abs(M_RPM_DIR)>lim7) ) then
				  M_KP_fp <= M_KP_fp + KP2_PLUS_fp;--0.024
				  end if;
				  
				  if(abs(SETPOINT_LAST-SETPOINT) >lim8) then
               
									  
					 
				 if (Setpoint>0) and (Setpoint_last>Setpoint)  then  
				 M_Kp_fp  <= KP1_fp ;
				 end if;
				 
				 if (Setpoint<0) and (Setpoint_last<Setpoint)  then 
				 M_Kp_fp  <= KP1_fp ;
				 end if;
				 
				 end if;
				 
             if(abs(M_RPM_DIR)<lim6) then
				 M_Kp_fp  <= KP1_fp ;
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
						 
						 variable M_P_fp      : signed (32 DOWNTO 0)  :=(others=>'0');	--22.11  --HASEL 16.1 * 6.10
						 variable M_P         : signed (21 DOWNTO 0)  :=(others=>'0');
						 variable M_P_ABS     : std_logic_vector(20 DOWNTO 0)  :=(others=>'0');
						 
						 variable M_D_fp      : signed (39 DOWNTO 0)  :=(others=>'0');--28.12   --HASEL 16.8 * 12.4
						 variable M_D         : signed (27 DOWNTO 0)  :=(others=>'0');
						 
						 variable M_PD        : signed (30 DOWNTO 0)  :=(others=>'0'); --28+20		
						 variable M_PD_ABS    : std_logic_vector (30 DOWNTO 0)  :=(others=>'0');	--20.11
						  
					   
					  begin 
					  if rising_edge (clk) then
					  if CLK_TIMER ='1' 	then
					  
					  M_SETPOINT     :=  signed( SPEED );
					  M_RPM          :=  M_RPM_DIR ;
   				  M_ERR          :=  M_SETPOINT -  M_RPM ; 
                 M_ERR_fp       :=  M_ERR & '0' ; 
   				  
  					  M_P_fp  := (M_ERR_fp * M_KP_fp) ;
                 M_P     := M_P_fp(32 downto 11);
					  
					  if(M_P>=MAX_P)then
					  M_P := SIGNED( conv_std_logic_vector (MAX_P,22));
					  elsif(M_P<= MAX_P_MINUS)then
					  M_P := SIGNED(conv_std_logic_vector (MAX_P_MINUS,22));
					  end if;
					  
 					  M_D_fp := RPM_DIFF * M_KD_fp;
                 M_D    :=M_D_fp (39 downto 12);					  
					 
							
			         if (M_D>= MAX_D) then 
					   M_D := SIGNED( conv_std_logic_vector (MAX_D,28));
						elsif(M_D<MAX_D_MINUS) then
						M_D := SIGNED(conv_std_logic_vector (MAX_D_MINUS,28));
                  end if;
                  
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
                 
					  if((m_setpoint=lim5) and (m_err <= lim2 )) then
					  M_PID  <= "00000000000";
					  else
					  M_PD_ABS := ABS(M_PD);
					  M_PID  <=  M_PD_ABS(10 downto 0);
					  end if;
					--  M_SHOW <= M_SETPOINT;--signed("00000"& M_pid);
					  
					--  M_PID <= "00010100000";
					  
					  end if;
					  end if;					  
					  end process;
               
				
                 
						
					
				
			 end Behavioral;

				
        