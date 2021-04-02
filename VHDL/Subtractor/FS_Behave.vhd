library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FS_Behave is
Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
       Y : out  STD_LOGIC_VECTOR (1 downto 0));
end FS_Behave;

architecture Behavioral of FS_Behave is
begin
process (A)
begin

if (A = "001" or A = "010" or A = "111") then
  Y <= "11";
  elsif (A = "011") then
    Y <= "01";
  elsif (A = "100") then
    Y <= "10";
  else
    Y <= "00";
end if;
end process;
end Behavioral;
