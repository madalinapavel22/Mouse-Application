--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:22:41 05/11/2022
-- Design Name:   
-- Module Name:   C:/Users/pavel/Desktop/Proiect psn/proiect/mux_test.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4_1
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4_1
    PORT(
         intrare0 : IN  std_logic_vector(3 downto 0);
         intrare1 : IN  std_logic_vector(3 downto 0);
         intrare2 : IN  std_logic_vector(3 downto 0);
         intrare3 : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         iesire : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal intrare0 : std_logic_vector(3 downto 0) := (others => '0');
   signal intrare1 : std_logic_vector(3 downto 0) := (others => '0');
   signal intrare2 : std_logic_vector(3 downto 0) := (others => '0');
   signal intrare3 : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal iesire : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4_1 PORT MAP (
          intrare0 => intrare0,
          intrare1 => intrare1,
          intrare2 => intrare2,
          intrare3 => intrare3,
          s => s,
          iesire => iesire
        );
	
   -- Clock process definitions

END;
