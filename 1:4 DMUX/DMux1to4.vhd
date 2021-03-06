library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMux1to4 is
     port(
         y : in STD_LOGIC_VECTOR(3 downto 0);
         s : in STD_LOGIC_VECTOR(1 downto 0);
         a,b,c,d : out STD_LOGIC_VECTOR(3 downto 0);
         );
end DMux1to4;
  
architecture d1 of DMux1to4 is
begin

end d1;
