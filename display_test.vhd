--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:19 05/12/2022
-- Design Name:   
-- Module Name:   C:/Users/pavel/Desktop/Proiect psn/proiect/display_test.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display
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
 
ENTITY display_test IS
END display_test;
 
ARCHITECTURE behavior OF display_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display
    PORT(
         clk : IN  std_logic;
         intrare_numarator : IN  std_logic_vector(15 downto 0);
         anod : OUT  std_logic_vector(3 downto 0);
         catod : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal intrare_numarator : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal anod : std_logic_vector(3 downto 0);
   signal catod : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display PORT MAP (
          clk => clk,
          intrare_numarator => intrare_numarator,
          anod => anod,
          catod => catod
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
