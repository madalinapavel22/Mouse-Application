--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:40:53 05/13/2022
-- Design Name:   
-- Module Name:   C:/Users/pavel/Desktop/Proiect psn/proiect/numarator_test.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: numarator
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
 
ENTITY numarator_test IS
END numarator_test;
 
ARCHITECTURE behavior OF numarator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT numarator
    PORT(
         increase : IN  std_logic;
         decrease : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         solutie : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal increase : std_logic := '0';
   signal decrease : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal solutie : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: numarator PORT MAP (
          increase => increase,
          decrease => decrease,
          reset => reset,
          clk => clk,
          solutie => solutie
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
