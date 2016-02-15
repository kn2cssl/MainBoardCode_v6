library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity pwm is
	port (oc_in: in std_logic_vector (15 downto 0);
	      ocr_length:in std_logic_vector (7 downto 0 );
			oc_out: out std_logic;
			clk: in std_logic);
end pwm;

--help:
--resolution of ocr is 2^10 (if n=11) ,counters counts till 2^10 
--if counter is smaller than ocr then the output pin becaomes 1
--else it becomes 0
--            ______________         ______________         ______________ 
--    _______|   <- ocr ->  |_______|   <- ocr ->  |_______|   <- ocr ->  |  
    
--    <-       2^10       -> <-       2^10       -> <-       2^10       ->   

architecture Behavioral of pwm is
	signal Cnt, Cnt_1, Cnt_2: std_logic_vector(15 downto 0):=(others=>'0');
begin

	
	process(Clk)
   begin
	
		if rising_edge(Clk) then
			oc_out <='1';
			if(Cnt >= oc_in) then
				oc_out <='0';
			end if;
		end if;
		
	end process;
	
	
	process(Clk)
   begin
		if rising_edge(Clk) then
			Cnt_1 <= Cnt_1+1;
			if (Cnt_1 = ocr_length & "00000000") then
			   Cnt_1 <= "0000000000000000";
			end if;
		end if;
	end process;
	
	process(Clk)
   begin
		if falling_edge(Clk) then
			Cnt_2 <= Cnt_2+1;
		end if;
	end process;
	
	Cnt <= Cnt_1;
	
          end Behavioral;