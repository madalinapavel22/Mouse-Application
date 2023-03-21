----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:20:35 05/11/2022 
-- Design Name: 
-- Module Name:    mux4_1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4_1 is
    Port ( intrare0 : in  STD_LOGIC_VECTOR (3 downto 0);
           intrare1 : in  STD_LOGIC_VECTOR (3 downto 0);
           intrare2 : in  STD_LOGIC_VECTOR (3 downto 0);
           intrare3 : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           iesire : out  STD_LOGIC_VECTOR (3 downto 0));
end mux4_1;

architecture archi of mux4_1 is  
signal y:STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
	process(intrare0,intrare1,intrare2,intrare3,s)
	begin
		case s is
			when "00"=>y<= intrare0;
			when "01"=>y<= intrare1;
			when "10"=>y<= intrare2;
			when "11"=>y<= intrare3;
			when others=>y<="0011";	
			end case;
		end process;
				iesire<=y;
	 -- enter your statements here --

end archi;


