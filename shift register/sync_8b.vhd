--8 bit shift register with synchronous reset 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity sipo_syncreset is 
    port( 
    clk, clear : in std_logic; 
    Input_Data: in std_logic; 
    Q: buffer std_logic_vector(7 downto 0) ); 
end sipo_syncreset;

architecture arch of sipo_syncreset is begin   
process (clk) 
begin 
    if (CLK'event and CLK='1') then  
      if clear = '1' then 
          Q <= "00000000"; 
      elsif (clear='0') then 
         Q(7 downto 1) <= Q(6 downto 0); 
         Q(0) <= Input_Data; 
      end if; 
    end if; 
end process; 
end arch; 
