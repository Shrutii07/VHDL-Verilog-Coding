library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_sub is
    port ( a,b : in std_logic;
           dif,bo: out std_logic
           );
end half_sub;

architecture sub_arch of half_sub is
  begin
     dif <= a xor b;
     bo <= (not a) and b;
end sub_arch;
