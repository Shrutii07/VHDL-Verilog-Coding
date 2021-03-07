LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; 

ENTITY tb_comparator_VHDL IS
END tb_comparator_VHDL;
 
ARCHITECTURE behavior OF tb_comparator_VHDL IS 
 COMPONENT comparator2
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         A_less_B : OUT  std_logic;
         A_equal_B : OUT  std_logic;
         A_greater_B : OUT  std_logic);
  END COMPONENT;
   
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
  
   signal A_less_B : std_logic;
   signal A_equal_B : std_logic;
   signal A_greater_B : std_logic;
BEGIN
 uut: comparator2 PORT MAP (
          A => A,
          B => B,
          A_less_B => A_less_B,
          A_equal_B => A_equal_B,
          A_greater_B => A_greater_B);
  
   stim_proc: process
   begin 
  -- create test cases for A_less_B
  alb: for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i,2));  
           B <= std_logic_vector(to_unsigned(i+1,2));  
           wait for 20 ns; 
      end loop alb;
  -- create test cases for A_greater_B
   agb: for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i+1,2));  
           B <= std_logic_vector(to_unsigned(i,2));  
           wait for 20 ns; 
      end loop agb;
  -- create test cases for A_equal_B
  aeb: for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i,2));  
           B <= std_logic_vector(to_unsigned(i,2));   
           wait for 20 ns; 
      end loop aeb;
   end process;
end behavior;
