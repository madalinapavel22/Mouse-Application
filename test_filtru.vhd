--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:34:23 05/18/2022
-- Design Name:   
-- Module Name:   F:/Facultate/Anul I/PSN/ise_xilinx/proiect_var2/proiect/test_filtru.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: filtru
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
 
ENTITY test_filtru IS
END test_filtru;
 
ARCHITECTURE behavior OF test_filtru IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT filtru
    PORT(
         clk : IN  std_logic;
         buton : IN  std_logic;
         enable : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal buton : std_logic := '0';

 	--Outputs
   signal enable : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: filtru PORT MAP (
          clk => clk,
          buton => buton,
          enable => enable
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
