LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_xs3_2_bin IS
END tb_xs3_2_bin;

ARCHITECTURE tb OF tb_xs3_2_bin IS

  COMPONENT xs3_2_bin
  PORT (ex3 : IN std_logic_vector(3 DOWNTO 0);
		bin : OUT std_logic_vector(3 DOWNTO 0);
		valid: OUT std_logic);
  END COMPONENT;

SIGNAL inp : std_logic_vector(3 DOWNTO 0);
SIGNAL op : std_logic_vector(3 DOWNTO 0);
SIGNAL z : std_logic;

BEGIN
    dut : xs3_2_bin PORT MAP(ex3 => inp, bin => op, valid => z);
    stimuli : PROCESS
    BEGIN
    inp <= "0000";
    wait for 100ps;
	
	inp <= "0001";
    wait for 100ps;

    inp <= "0010";
    wait for 100ps;

    inp <= "0011";
    wait for 100ps;
    
    inp <= "0100";
    wait for 100ps;
    
    inp <= "0101";
    wait for 100ps;
    
    inp <= "0110";
    wait for 100ps;
    
    inp <= "0111";
    wait for 100ps;
    
    inp <= "1000";
    wait for 100ps;
	
	inp <= "1001";
    wait for 100ps;

    inp <= "1010";
    wait for 100ps;

    inp <= "1011";
    wait for 100ps;
    
    inp <= "1100";
    wait for 100ps;
    
    inp <= "1101";
    wait for 100ps;
    
    inp <= "1110";
    wait for 100ps;
    
    inp <= "1111";
    wait for 100ps;
    wait;
    END PROCESS;

END tb;
