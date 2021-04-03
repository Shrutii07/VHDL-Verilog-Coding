library ieee;
use ieee.std_logic_1164.all;

entity g_to_b is 
port( input: in std_logic_vector(1 downto 0);
      opt: out std_logic_vector(1 downto 0));
end g_to_b;

architecture arch of g_to_b is
begin

process(input)
begin

case input is

    when "00" => opt <= "00";
    when "01" => opt <= "01";
    when "10" => opt <= "11";
    when "11" => opt <= "10";
    when others => opt<= "00";
end case;
end process;

end arch;
