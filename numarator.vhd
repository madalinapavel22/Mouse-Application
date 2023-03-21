----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:30 05/13/2022 
-- Design Name: 
-- Module Name:    numarator - Behavioral 
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

entity numarator is
    Port ( increase : in  STD_LOGIC;
           decrease : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           solutie : out  STD_LOGIC_VECTOR (15 downto 0));
end numarator;
architecture arch of numarator is

signal cnt: STD_LOGIC_VECTOR(15 downto 0):=x"0000";
begin
process(clk,reset,increase,decrease)
begin

if(reset='1')then cnt<=x"0000";
   elsif(clk'event and clk='1') then
	   if(increase='1' and decrease='0') then cnt<=cnt+1;
	   elsif(increase='0' and decrease='1' and cnt>"0000") then cnt<=cnt-1;
	   elsif(cnt="1111101000") then cnt<=x"0000";
	end if;
	end if;
end process;
solutie<=cnt;
end arch;

