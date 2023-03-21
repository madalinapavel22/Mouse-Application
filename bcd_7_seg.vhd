----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:40 05/11/2022 
-- Design Name: 
-- Module Name:    bcd_7_seg - Behavioral 
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

entity bcd_7_seg is
    Port ( BCD_in : in  STD_LOGIC_VECTOR (3 downto 0);
           BCD_out : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd_7_seg;

architecture Behavioral of bcd_7_seg is
begin
process( BCD_in)
begin
 
	case BCD_in is
    when "0000" => BCD_out <= "0000001";  --0
    when "0001" => BCD_out <= "1001111";  --1
    when "0010" => BCD_out <= "0010010";  --2
    when "0011" => BCD_out <= "0000110";  --3
    when "0100" => BCD_out <= "1001100";  --4
    when "0101" => BCD_out <= "0100100";  --5
    when "0110" => BCD_out <= "0100000";  --6
    when "0111" => BCD_out <= "0001111";  --7
    when "1000" => BCD_out <= "0000000";  --8
    when "1001" => BCD_out <= "0000100";  --9
	 when "1010" =>BCD_out <=  "0000010";  --A
	 when "1011" =>BCD_out <=  "1100000";  --B
	 when"1100"  =>BCD_out <=  "0110001";  --C
	 when"1101"  =>BCD_out <=  "1000010";  --D
	 when"1110"  =>BCD_out <=  "0110000";  --E
	 when"1111"  =>BCD_out <=  "0111000";  --F
    when others => BCD_out <= "1111111";  --null
    end case;
end process;
end Behavioral;


