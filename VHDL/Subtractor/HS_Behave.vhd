library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HS_Behave is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end HS_Behave;

architecture Behavioral of HS_Behave is
begin
process(A)
begin
    if (A = "00" or A = "11") then
      Y<="00";
    else if (A = "01") then
      Y<="11";
    else
      Y<="10";
    end if;
end if;
end process;
end Behavioral;
