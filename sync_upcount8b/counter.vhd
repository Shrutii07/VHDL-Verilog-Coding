-- 8bit unsigned up counter with synchronous clear 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

entity counter is 
    port 
    ( 
    clk : in std_logic; 
    reset : in std_logic; 
    enable : in std_logic; 
    q : out integer range 0 to 255 
    ); 
end entity; 

architecture rtl of counter is 
begin 
process (clk) 
    variable cnt : integer range 0 to 255; 
    begin 
    if (clk='1') then 
        if reset = '1' then 
        -- Reset the counter to 12 
          cnt := 12; 
        elsif enable = '1' then 
        -- Increment the counter if counting is enabled 
            cnt := cnt + 1; 
        end if; 
    end if; 
    -- Output the current count 
    q <= cnt; 
end process; 
end rtl;
