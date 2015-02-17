	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_unsigned.ALL;
	use IEEE.STD_LOGIC_arith.ALL;



entity m is
generic (n:integer range 1 to 11 := 11);
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
			
--   	   HALL1_COUNT :in std_logic_vector(4 downto 0);
--       HALL2_COUNT :in std_logic_vector(4 downto 0);
--		   HALL3_COUNT :in std_logic_vector(4 downto 0);
--		   HALL4_COUNT :in std_logic_vector(4 downto 0);
      
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
       
       --FT245  	
         DATA_USB	 :	out std_logic_vector(7 downto 0);
			USB_WR 	 : out std_logic;	
         TXE		 : in  std_logic;	
--		 micro_com
		   RPM_IN    : in std_logic_vector(7 downto 0);
			CLK_PAR   : in std_logic;
			PARITY_IN : in std_logic;
			MOTOR_NUM : in std_logic_vector(1 downto 0);
       --LED
			LED:out std_logic_vector(3 downto 0);
		--MUNE
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
			SPEED:in std_logic_vector(15 downto 0);
			M_show:out std_logic_vector(15 downto 0);
		   --HALL_COUNT :in std_logic_vector(4 downto 0);
			LED:out std_logic_vector(3 downto 0);
			FREE_WHEEL : in std_logic ;
			TEST_KEY   : in std_logic_vector(3 downto 0)
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
				CLK : in std_logic;
				RPM_IN : in std_logic_vector(7 downto 0);
				CLK_PAR : in std_logic;
				PARITY_IN : in std_logic;
				MOTOR_NUM : in std_logic_vector(1 downto 0);
				RPM1 : out std_logic_vector(15 downto 0);
				RPM2 : out std_logic_vector(15 downto 0);
				RPM3 : out std_logic_vector(15 downto 0);
				RPM4 : out std_logic_vector(15 downto 0);
				FREE_WHEELS : out std_logic 
				--LED  : out std_logic_vector(3 downto 0)
				);
		end component;
	 
	 
	

   signal SPEED1 : std_logic_vector(15 downto 0):="0000100111000100";--(others=>'0'); 
	signal SPEED2 : std_logic_vector(15 downto 0):="0000111110100000";--(others=>'0'); 
	signal SPEED3 : std_logic_vector(15 downto 0):="0000000000101000";--(others=>'0'); 
	signal SPEED4 : std_logic_vector(15 downto 0):="0000000000000000";--(others=>'0'); 
 
   signal M1_show: std_logic_vector(15 downto 0):=(others=>'0'); 
   signal FREE_WHEELS_S: std_logic := '0'; 
 
	

begin
 
--M1		
   driver1:drivermotor port map(HALL1=>HALL11,HALL2=>HALL21,HALL3=>HALL31,CLK=>CLK,--hall_count=>hall1_count,
	M1P=>M1P1,M1N=>M1N1,M2P=>M2P1,M2N=>M2N1,M3P=>M3P1,M3N=>M3N1,SPEED=>SPEED1,LED=>LED,M_show=>M1_show,FREE_WHEEL => FREE_WHEELS_S,TEST_KEY => TEST_KEY );
--M2	
	driver2:drivermotor port map(HALL1=>HALL12,HALL2=>HALL22,HALL3=>HALL32,CLK=>CLK,TEST_KEY => TEST_KEY,
	M1P=>M1P2,M1N=>M1N2,M2P=>M2P2,M2N=>M2N2,M3P=>M3P2,M3N=>M3N2,SPEED=>SPEED2,FREE_WHEEL => FREE_WHEELS_S);	
--M3	
	driver3:drivermotor port map(HALL1=>HALL13,HALL2=>HALL23,HALL3=>HALL33,CLK=>CLK,TEST_KEY => TEST_KEY,
	M1P=>M1P3,M1N=>M1N3,M2P=>M2P3,M2N=>M2N3,M3P=>M3P3,M3N=>M3N3,SPEED=>SPEED3,FREE_WHEEL => FREE_WHEELS_S);
--M4	
   driver4:drivermotor port map(HALL1=>HALL14,HALL2=>HALL24,HALL3=>HALL34,CLK=>CLK,TEST_KEY => TEST_KEY,
	M1P=>M1P4,M1N=>M1N4,M2P=>M2P4,M2N=>M2N4,M3P=>M3P4,M3N=>M3N4,SPEED=>SPEED4,FREE_WHEEL => FREE_WHEELS_S);

--FT245
  FT245:Write_to_USB port map(DATA1_IN =>M1_show,DATA_USB=>DATA_USB,USB_WR=>USB_WR,TXE=>TXE,CLK_USB=>CLK);		 

--micro_com2
  prl_com:micro_com2 port map(CLK=>CLK,RPM_IN=>RPM_IN,CLK_PAR=>CLK_PAR,PARITY_IN=>PARITY_IN,MOTOR_NUM=>MOTOR_NUM,FREE_WHEELS => FREE_WHEELS_S
  --  RPM1(15 downto 0)=>SPEED1,
  --  RPM2(15 downto 0)=>SPEED2,
   -- RPM3(15 downto 0)=>SPEED3,
   -- RPM4(15 downto 0)=>SPEED4
);


 
  end Behavioral;

