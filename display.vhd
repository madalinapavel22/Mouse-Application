----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:36 05/11/2022 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

entity display is
    Port ( clk : in  STD_LOGIC;
           intrare_numarator : in  STD_LOGIC_VECTOR (15 downto 0);
           anod : out  STD_LOGIC_VECTOR (3 downto 0);
           catod : out  STD_LOGIC_VECTOR (6 downto 0));
end display;

architecture arth of display is
component mux4_1 is
	port(intrare0: in STD_LOGIC_VECTOR(3 downto 0);
	intrare1: in STD_LOGIC_VECTOR(3 downto 0);
	intrare2: in STD_LOGIC_VECTOR(3 downto 0);
	intrare3: in STD_LOGIC_VECTOR(3 downto 0);
	s:in STD_LOGIC_VECTOR(1 downto 0);
	iesire: out STD_LOGIC_VECTOR(3 downto 0));
end component;  
component bcd_7_seg is
	port(BCD_in: in STD_LOGIC_VECTOR(3 downto 0);
	BCD_out: out STD_LOGIC_VECTOR(6 downto 0));
end component; 
signal cifra_0,cifra_1,cifra_2,cifra_3,anod_0,anod_1,anod_2,anod_3,iesire_mux1,iesire_anod: std_logic_vector(3 downto 0);
signal iesire_catod: std_logic_vector(6 downto 0);	 
signal selectie: STD_LOGIC_VECTOR(1 downto 0);
signal counter_display: std_logic_vector(15 downto 0):=x"0000";
begin	
anod_0<="1110"; 
anod_1<="1101";
anod_2<="1011";
anod_3<="0111";	

cifra_0<=intrare_numarator(3 downto 0);
cifra_1<=intrare_numarator(7 downto 4);
cifra_2<=intrare_numarator(11 downto 8);
cifra_3<=intrare_numarator(15 downto 12);

counter: process(clk,counter_display)
begin
	if(rising_edge(clk)) then counter_display<=counter_display+1;
	end if;
end process;
selectie<=counter_display(15 downto 14);		
C1: mux4_1 port map(cifra_0,cifra_1,cifra_2,cifra_3,selectie,iesire_mux1); 
C2: mux4_1 port map(anod_0,anod_1,anod_2,anod_3,selectie,iesire_anod);
C3: bcd_7_seg port map(iesire_mux1,iesire_catod);  

anod<=iesire_anod;
catod<=iesire_catod;
end arth;


