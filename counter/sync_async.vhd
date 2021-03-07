library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity counterall is
port(clk,sreset,areset,ud:in std_logic;
     count: out integer range 0 to 255);
end counterall;

architecture counterall_arch of counterall is

signal tempcount: integer range 0 to 255;

begin

count<=tempcount;

process(clk,areset)
begin
if (areset = '1') then
    tempcount <= 0;
elsif (clk'event and clk='1') then
    if (sreset = '1') then
        tempcount <=0;
    else
        tempcount <= tempcount + 1;
    end if;

end if;

end process;
end counterall_arch;
