----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:30:24 05/12/2022 
-- Design Name: 
-- Module Name:    click_counter - Behavioral 
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

entity click_counter is
    Port ( clk : in  STD_LOGIC;
           buton_st : in  STD_LOGIC;
           buton_dr : in  STD_LOGIC;
           reverse : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           anod : out  STD_LOGIC_VECTOR (3 downto 0);
           catod : out  STD_LOGIC_VECTOR (6 downto 0);
           is_left : out  STD_LOGIC);
end click_counter;

architecture click_counter of click_counter is
component numarator is
	port( increase: in STD_LOGIC;
	decrease: in STD_LOGIC;
	reset: in STD_LOGIC; 
	clk: in STD_LOGIC;	
	solutie: out STD_LOGIC_VECTOR (15 downto 0));
end component;
component display is  
	port(clk : in std_logic;
	intrare_numarator: in STD_LOGIC_VECTOR(15 downto 0);
	anod : out STD_LOGIC_VECTOR(3 downto 0);
	catod : out STD_LOGIC_VECTOR(6 downto 0));
end component;
component uc is 
	port(clk:in std_logic;
	reset:in std_logic;
	reverse:in std_logic;
	buton_st:in std_logic;
	buton_dr:in std_logic;
	increase:out std_logic;
	decrease:out std_logic;
	is_left:out std_logic
	);
end component;
signal inc,dec: std_logic;
signal sol: std_logic_vector(15 downto 0); 
begin  
unitate_comanda: uc port map(clk,reset,reverse,buton_st,buton_dr,inc,dec,is_left);
counter: numarator port map(inc,dec,reset,clk,sol);
ssd: display port map(clk,sol,anod,catod);

end click_counter;

