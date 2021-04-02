library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is
component UPDOWN_COUNTER 
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           up_down: in std_logic; 
           counter: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end component;
signal reset,clk,up_down: std_logic;
signal counter:std_logic_vector(3 downto 0);

begin
dut: UPDOWN_COUNTER port map (clk => clk, reset=>reset, up_down => up_down, counter => counter);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;


-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
     reset <= '1';
   up_down <= '0';
    wait for 20 ns;    
    reset <= '0';
  wait for 300 ns;    
  up_down <= '1';
   wait;
end process;
end Behavioral;
