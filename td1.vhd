---
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY td1 IS
END td1;
 
ARCHITECTURE behavior OF td1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT drivermotor
    PORT(
         clk : IN  std_logic;
         HALL1 : IN  std_logic;
         HALL2 : IN  std_logic;
         HALL3 : IN  std_logic;
         M1p : OUT  std_logic;
         M1n : OUT  std_logic;
         M2p : OUT  std_logic;
         M2n : OUT  std_logic;
         M3p : OUT  std_logic;
         M3n : OUT  std_logic;
         SPEED : IN  std_logic_vector(15 downto 0);
         M_show : OUT  std_logic_vector(15 downto 0);
         HALL_COUNT : IN  std_logic_vector(4 downto 0);
         LED : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal HALL1 : std_logic := '0';
   signal HALL2 : std_logic := '0';
   signal HALL3 : std_logic := '0';
   signal SPEED : std_logic_vector(15 downto 0) := (others => '0');
   signal HALL_COUNT : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal M1p : std_logic;
   signal M1n : std_logic;
   signal M2p : std_logic;
   signal M2n : std_logic;
   signal M3p : std_logic;
   signal M3n : std_logic;
   signal M_show : std_logic_vector(15 downto 0);
   signal LED : std_logic_vector(3 downto 0);

   -- Clock period definitions
  -- constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: drivermotor PORT MAP (
          clk => clk,
          HALL1 => HALL1,
          HALL2 => HALL2,
          HALL3 => HALL3,
          M1p => M1p,
          M1n => M1n,
          M2p => M2p,
          M2n => M2n,
          M3p => M3p,
          M3n => M3n,
          SPEED => SPEED,
          M_show => M_show,
          HALL_COUNT => HALL_COUNT,
          LED => LED
        );

  
  clk <= not clk after 10 ns;
  hall_count <= "00000" after 900 us,"00001" after 1900 us,"00001" after 2900 us;--,"00010" after 3900 us,"00010" after 4900 us,"00011" after 5900 us,"00011" after 6900 us;
  
END;
