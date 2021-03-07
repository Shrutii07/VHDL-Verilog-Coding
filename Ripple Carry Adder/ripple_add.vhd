-- ripple carry adder 8-bit 

library ieee;
use ieee.std_logic_1164.all;

entity ripple_add is
	port (
    a,b : in std_logic_vector(7 downto 0);
    sum: out std_logic_vector(7 downto 0);
    cin : in std_logic;
    cout: out std_logic);
end ripple_add;

architecture arch_add8 of ripple_add is
    signal carry: std_logic_vector(8 downto 0);
begin 

    carry(0)<=cin;
    cout<= carry(8);

    radd: for i in 0 to 7 generate
      sum(i)<= a(i) xor b(i) xor carry(i);
      carry(i+1) <=(a(i) and b(i)) or ((a(i) or b(i)) and carry(i));
    end generate;

end arch_add8;
