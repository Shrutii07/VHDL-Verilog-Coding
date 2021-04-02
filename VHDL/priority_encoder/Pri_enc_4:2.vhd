library ieee;
use ieee.std_logic_1164.all;

entity priorityencoder is 
port(inp: in std_logic_vector(3 downto 0);
     op: out std_logic_vector(1 downto 0);
     valid: out std_logic);
end priorityencoder;

architecture priorityencoder_behav of priorityencoder is
begin
process(inp)
begin
valid<='1';
if (inp(3) = '1') then
op <= "11";
elsif (inp(2) = '1') then
op <= "10";
elsif (inp(1) = '1') then
op <= "01";
elsif (inp(0) = '1') then
op <= "00";
else
op<="00";
valid<='0';
end if;

end process;
end priorityencoder_behav;
