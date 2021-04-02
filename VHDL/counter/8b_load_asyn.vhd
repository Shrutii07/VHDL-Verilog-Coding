--8-bit unsigned up counter with asynchronous clear and clock enable --counter with asynchronous reset (active low) and enable amd load


library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity counter is 
    port ( 
      clock, resetn, load, E: in std_logic;
      din : in std_logic_vector(7 downto 0);   
      Q: out integer range 0 to 255); 
end counter; 
  
architecture bhv of counter is 
signal Qt: integer range 0 to 255; 
begin 
process (resetn,clock, E) 
    begin 
    if resetn = '1' then 
        Qt <= 0; 
    elsif (clock'event and clock='1') then 
        if E = '1' then
          if load = '1'then 
            Qt <= din;
           else Qt <= Qt + 1;
          end if;
        end if; 
    end if; 
end process; 
Q <= Qt; 
end bhv; 
