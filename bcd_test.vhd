--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:50 05/11/2022
-- Design Name:   
-- Module Name:   C:/Users/pavel/Desktop/Proiect psn/proiect/bcd_test.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_7_seg
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
 
ENTITY bcd_test IS
END bcd_test;
 
ARCHITECTURE behavior OF bcd_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_7_seg
    PORT(
         BCD_in : IN  std_logic_vector(3 downto 0);
         BCD_out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCD_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal BCD_out : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_7_seg PORT MAP (
          BCD_in => BCD_in,
          BCD_out => BCD_out
        );

   -- Clock process definitions
   
END;
