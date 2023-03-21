----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:52 05/13/2022 
-- Design Name: 
-- Module Name:    uc - Behavioral 
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

entity uc is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           reverse : in  STD_LOGIC;
           buton_st : in  STD_LOGIC;
           buton_dr : in  STD_LOGIC;
           increase : out  STD_LOGIC;
           decrease : out  STD_LOGIC;
           is_left : out  STD_LOGIC);
end uc;
architecture uc_arch of uc is 
type stare_t is(st1,st2,st3,st4,st5,st6,st7);
signal stare,nxstare:stare_t;
begin
	actualizeaza_stare:process(reset,clk)
	begin
		if(reset='1')then stare<=st1; 
		elsif(rising_edge(clk))then stare<=nxstare; 
		end if;
		
	end process actualizeaza_stare;
	
	tranzitii:process(stare,buton_st,buton_dr,reverse)
	begin
	increase<='0';
	decrease<='0';
		case stare is
			when st1=>
			if(reverse='1')then nxstare<=st3; 
			else nxstare<=st2;
				end if;
				when st2=>
				if(buton_st='1')then nxstare<=st5;
				elsif(buton_dr='1')then nxstare<=st4;
				else nxstare<=st1;
				end if;
				when st3=>
				if(buton_st='1')then nxstare<=st6;
				elsif(buton_dr='1')then nxstare<=st7;
				else nxstare<=st1;
				end if;
				when st4=>decrease<='1';increase<='0';
				nxstare<=st1;
				when st5=>decrease<='0';increase<='1';
				nxstare<=st1;
				when st6=>decrease<='1';increase<='0'; 
				nxstare<=st1;
				when st7=>decrease<='0';increase<='1';
            nxstare<=st1;				
       end case;
			end process;
		led: process(reverse,reset)
		begin
		  if(reset='1') then is_left<='0';
		  elsif(reverse='1') then is_left<='1';
		  else is_left<='0';
		  end if;
		end process;
end uc_arch;



