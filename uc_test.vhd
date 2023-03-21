--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:09:34 05/12/2022
-- Design Name:   
-- Module Name:   C:/Users/pavel/Desktop/Proiect psn/proiect/uc_test.vhd
-- Project Name:  proiect
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uc
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
 
ENTITY uc_test IS
END uc_test;
 
ARCHITECTURE behavior OF uc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         reverse : IN  std_logic;
         buton_st : IN  std_logic;
         buton_dr : IN  std_logic;
         increase : OUT  std_logic;
         decrease : OUT  std_logic;
         cnt : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal reverse : std_logic := '0';
   signal buton_st : std_logic := '0';
   signal buton_dr : std_logic := '0';

	--BiDirs
   signal cnt : std_logic_vector(15 downto 0);

 	--Outputs
   signal increase : std_logic;
   signal decrease : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uc PORT MAP (
          clk => clk,
          reset => reset,
          reverse => reverse,
          buton_st => buton_st,
          buton_dr => buton_dr,
          increase => increase,
          decrease => decrease,
          cnt => cnt
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
