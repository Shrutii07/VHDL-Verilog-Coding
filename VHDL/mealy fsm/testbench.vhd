LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY mealy1_tb IS 
END mealy1_tb;
  
ARCHITECTURE behavior OF mealy1_tb IS 
COMPONENT mealy1 
PORT( 
  clk : IN std_logic; 
  x : IN std_logic; 
  rst : IN std_logic; 
  z : OUT std_logic_vector(1 downto 0) ); 
END COMPONENT; 
  
signal clk : std_logic := '0'; 
signal x : std_logic := '0'; 
signal rst : std_logic := '0'; 
signal z : std_logic_vector (1 downto 0); constant clk_period : time := 100 ps; 
BEGIN 
  
uut: mealy1 PORT MAP ( 
clk => clk, 
x => x, 
rst => rst, 
z => z 
); 
clk_process :process 
begin 
clk <= '1';
wait for clk_period/2; clk <= '0'; 
wait for clk_period/2; end process; 
stim_proc: process begin 
rst <= '1'; 
wait for 100 ps; 
rst <= '0'; 
x <= '0'; 
wait for 100 ps; 
x <= '1'; 
wait for 100 ps; 
x <= '0'; 
wait for 100 ps; 
x <= '1'; 
wait for 100 ps; 
x <= '1'; 
wait for 100 ps; 
x <= '0'; 
wait for 100 ps; 
x <= '0'; 
wait for 100 ps; 
x <= '1'; 
wait for 100 ps; 
x <= '1';
wait for 100 ps; 
x <= '0'; 
wait for 100 ps; 
x <= '1'; 
wait for 100 ps; 
x <= '0'; 
wait for 100 ps; 
end process; 
END; 
