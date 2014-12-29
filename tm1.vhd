   library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_unsigned.ALL;
	use IEEE.STD_LOGIC_arith.ALL;
 --  use ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tm1 IS
END tm1;
 
ARCHITECTURE behavior OF tm1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT m
    PORT(
         clk : IN  std_logic;
         HALL11 : IN  std_logic;
         HALL21 : IN  std_logic;
         HALL31 : IN  std_logic;
         M1p1 : OUT  std_logic;
         M1n1 : OUT  std_logic;
         M2p1 : OUT  std_logic;
         M2n1 : OUT  std_logic;
         M3p1 : OUT  std_logic;
         M3n1 : OUT  std_logic;
         HALL1_COUNT : IN  std_logic_vector(4 downto 0);
         DATA_USB : OUT  std_logic_vector(7 downto 0);
         USB_WR : OUT  std_logic;
         TXE : IN  std_logic;
         RPM_IN : IN  std_logic_vector(7 downto 0);
         CLK_PAR : IN  std_logic;
         PARITY_IN : IN  std_logic;
         MOTOR_NUM : IN  std_logic_vector(1 downto 0);
         LED : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal HALL11 : std_logic := '0';
   signal HALL21 : std_logic := '0';
   signal HALL31 : std_logic := '0';
   signal HALL1_COUNT : std_logic_vector(4 downto 0) := (others => '0');
   signal TXE : std_logic := '0';
   signal RPM_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK_PAR : std_logic := '0';
   signal PARITY_IN : std_logic := '0';
   signal MOTOR_NUM : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal M1p1 : std_logic;
   signal M1n1 : std_logic;
   signal M2p1 : std_logic;
   signal M2n1 : std_logic;
   signal M3p1 : std_logic;
   signal M3n1 : std_logic;
   signal DATA_USB : std_logic_vector(7 downto 0);
   signal USB_WR : std_logic;
   signal LED : std_logic_vector(3 downto 0);

   -- Clock period definitions
 --  constant clk_period : time := 10 ns;
  -- constant CLK_PAR_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: m PORT MAP (
          clk => clk,
          HALL11 => HALL11,
          HALL21 => HALL21,
          HALL31 => HALL31,
          M1p1 => M1p1,
          M1n1 => M1n1,
          M2p1 => M2p1,
          M2n1 => M2n1,
          M3p1 => M3p1,
          M3n1 => M3n1,
          HALL1_COUNT => HALL1_COUNT,
          DATA_USB => DATA_USB,
          USB_WR => USB_WR,
          TXE => TXE,
          RPM_IN => RPM_IN,
          CLK_PAR => CLK_PAR,
          PARITY_IN => PARITY_IN,
          MOTOR_NUM => MOTOR_NUM,
          LED => LED
        );

        clk <= not clk after 10 ns;
  hall1_count <="00000", "00001" after 10 us,"00000" after 500 ms;--"00000" after 19000 us;--"00001" after 2900 us,"00010" after 3900 us,"00010" after 4900 us,"00011" after 5900 us,"00011" after 6900 us;
  
 
 

   

END;
