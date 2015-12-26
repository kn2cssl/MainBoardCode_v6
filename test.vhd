--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:34:17 07/15/2015
-- Design Name:   
-- Module Name:   D:/GitHub/Yashil-fpga/test.vhd
-- Project Name:  maincodev6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: micro_com2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT micro_com2
    PORT(
         data_clk : IN  std_logic;
         CLK : IN  std_logic;
         DATA_IN : IN  std_logic_vector(6 downto 0);
         DATA_OUT : OUT  std_logic_vector(6 downto 0);
         calman_Vx : IN  std_logic_vector(15 downto 0);
         calman_Vy : IN  std_logic_vector(15 downto 0);
         calman_Wr : IN  std_logic_vector(15 downto 0);
         calman_W0 : IN  std_logic_vector(15 downto 0);
         calman_W1 : IN  std_logic_vector(15 downto 0);
         calman_W2 : IN  std_logic_vector(15 downto 0);
         calman_W3 : IN  std_logic_vector(15 downto 0);
         Vx : OUT  std_logic_vector(15 downto 0);
         Vy : OUT  std_logic_vector(15 downto 0);
         Wr : OUT  std_logic_vector(15 downto 0);
         alpha : OUT  std_logic_vector(15 downto 0);
         GVx : OUT  std_logic_vector(15 downto 0);
         GVy : OUT  std_logic_vector(15 downto 0);
         GWr : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_clk : std_logic := '0';
   signal CLK : std_logic := '0';
   signal DATA_IN : std_logic_vector(6 downto 0) := (others => '0');
   signal calman_Vx : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_Vy : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_Wr : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_W0 : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_W1 : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_W2 : std_logic_vector(15 downto 0) := (others => '0');
   signal calman_W3 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal DATA_OUT : std_logic_vector(6 downto 0);
   signal Vx : std_logic_vector(15 downto 0);
   signal Vy : std_logic_vector(15 downto 0);
   signal Wr : std_logic_vector(15 downto 0);
   signal alpha : std_logic_vector(15 downto 0);
   signal GVx : std_logic_vector(15 downto 0);
   signal GVy : std_logic_vector(15 downto 0);
   signal GWr : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: micro_com2 PORT MAP (
          data_clk => data_clk,
          CLK => CLK,
          DATA_IN => DATA_IN,
          DATA_OUT => DATA_OUT,
          calman_Vx => calman_Vx,
          calman_Vy => calman_Vy,
          calman_Wr => calman_Wr,
          calman_W0 => calman_W0,
          calman_W1 => calman_W1,
          calman_W2 => calman_W2,
          calman_W3 => calman_W3,
          Vx => Vx,
          Vy => Vy,
          Wr => Wr,
          alpha => alpha,
          GVx => GVx,
          GVy => GVy,
          GWr => GWr
        );
 
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	data_clk <= not data_clk after 33 ns;
   data_in <= "1010101" after 40 ns;

END;
