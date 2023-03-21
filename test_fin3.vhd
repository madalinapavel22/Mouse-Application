--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:04:57 05/18/2022
-- Design Name:   
-- Module Name:   F:/Facultate/Anul I/PSN/ise_xilinx/proiect_var2/proiect/test_fin3.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: click_counter
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
 
ENTITY test_fin3 IS
END test_fin3;
 
ARCHITECTURE behavior OF test_fin3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT click_counter
    PORT(
         clk : IN  std_logic;
         buton_st : IN  std_logic;
         buton_dr : IN  std_logic;
         reverse : IN  std_logic;
         reset : IN  std_logic;
         anod : OUT  std_logic_vector(3 downto 0);
         catod : OUT  std_logic_vector(6 downto 0);
         is_left : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal buton_st : std_logic := '0';
   signal buton_dr : std_logic := '0';
   signal reverse : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal anod : std_logic_vector(3 downto 0);
   signal catod : std_logic_vector(6 downto 0);
   signal is_left : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: click_counter PORT MAP (
          clk => clk,
          buton_st => buton_st,
          buton_dr => buton_dr,
          reverse => reverse,
          reset => reset,
          anod => anod,
          catod => catod,
          is_left => is_left
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
