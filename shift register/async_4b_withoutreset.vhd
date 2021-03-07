--4 bit shift register with async clk level triggered

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity async_4b is
port(
clk : in std_logic;
Input_Data: in std_logic;
Q: buffer std_logic_vector(3 downto 0) );
end async_4b;

architecture arch of async_4b is
begin

process (clk)
  begin
  if (clk`event and clk = '1') then
    Q(0) <= Input_Data;
    Q(3 downto 1) <= Q(2 downto 0);
  end if;
end process;
end arch;
