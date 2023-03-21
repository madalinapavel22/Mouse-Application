----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:58 05/11/2022 
-- Design Name: 
-- Module Name:    filtru - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity filtru is
    Port ( clk : in  STD_LOGIC;
           buton : in  STD_LOGIC;
           enable : out  STD_LOGIC);
end filtru;

architecture filtru_buton of filtru is
signal cnt : std_logic_vector(15 downto 0):=x"0000";
signal en,Q0,Q1,Q2 : std_logic:='0';
begin
nr : process(clk)
begin
	if(rising_edge(clk)) then cnt<=cnt+1;
	end if;
end process;
en<='1' when cnt=x"FFFF" else '0';

b0 : process(buton,clk,en)
begin
	if(rising_edge(clk)) then 
		if(en='1') then Q0<=buton;
	    end if;
	end if;
end process;
b1 : process(clk,Q0)
begin
	if(rising_edge(clk)) then 
		Q1<=Q0;
	end if;
end process; 
b2 : process(clk,Q1)
begin
	if(rising_edge(clk)) then 
	    Q2<=Q1;
	end if;
end process; 
enable<=Q0 and Q1 and Q2;
end filtru_buton;


