library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity UPDOWN_COUNTER is
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
            up_down: in std_logic; -- up or down
           counter: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end UPDOWN_COUNTER;

architecture Behavioral of UPDOWN_COUNTER is
signal counter_updown: std_logic_vector(3 downto 0);
begin
-- down counter
process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter_updown <= x"0";
    elsif(up_down='1') then
         counter_updown <= counter_updown - x"1"; -- count down
  else 
   counter_updown <= counter_updown + x"1"; -- count up
    end if;
 end if;
end process;
 counter <= counter_updown;

end Behavioral;
