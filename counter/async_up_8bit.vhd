--8-bit unsigned up counter with asynchronous clear and clock enable --counter with asynchronous reset (active low) and enable 


library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity counter is 
    port ( clock, resetn, E: in std_logic; 
    Q: out integer range 0 to 255); 
end counter; 
  
architecture bhv of counter is 
signal Qt: integer range 0 to 255; 
begin 
process (resetn,clock, E) 
    begin 
    if resetn = '1' then 
        Qt <= 12; 
    elsif (clock'event and clock='1') then 
        if E = '1' then 
           if Qt<255 then
            Qt <= Qt + 1; 
           else Qt<=0;
           end if; 
         end if;
    end if; 
end process; 
Q <= Qt; 
end bhv; 
