library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--2 bit full adder
entity FA_ForLoop is
port(
  a, b, c: in  std_logic_vector(1 downto 0);
  sum, carry: out std_logic_vector(1 downto 0));
end  FA_ForLoop;
architecture fl1 of  FA_ForLoop is
begin
    gen1: for i in 0 to 1 generate
        sum(i)<= a(i) xor b(i) xor c(i);
        carry(i)<=(a(i) and b(i)) or (b(i) and c(i)) or (c(i) and a(i));
    end generate gen1;
end fl1;
