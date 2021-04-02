-- 4 bit ring counter behavioral model
-- including necessary libraries 

library IEEE; 
use ieee.std_logic_1164.all;

entity ring_counter is 
  port ( ORI : in std_logic;  -- Overriding input 
   CLK : in std_logic;  -- clock pulse
   Q: buffer std_logic_vector(3 downto 0)); -- output
end ring_counter;

architecture Behavioral of ring_counter is
begin
	process (ORI, CLK)  -- to check when ORI or CLK changes
	begin
		if (ORI = '0') then -- initial
			Q <= "0001";
		else
			if (falling_edge(CLK)) then  -- assigning state at every fallng edge of clock depending on previous state
				if (Q = "0001") then
					Q <= "0010";
				elsif (Q = "0010") then
					Q <= "0100";
				elsif (Q = "0100") then
					Q <= "1000";
				elsif (Q = "1000") then
					Q <= "0001";
				else
					Q <= "0000";
				end if;
			end if;
		end if;
	end process;
end Behavioral;
