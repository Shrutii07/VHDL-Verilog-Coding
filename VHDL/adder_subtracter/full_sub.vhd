library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_sub is
Port ( A, B, Cin : in  STD_LOGIC;
	Cout, Diff : out STD_LOGIC);
end full_sub;

architecture behav of full_sub is
	begin
		process (A, B, Cin)
		begin
			if (A = '0') then
				if (B = '0') then
					if (Cin = '0') then
						Cout <= '0';
						Diff <= '0';
					else
						Cout <= '1';
						Diff <= '1';
					end if;
				else
					if (Cin = '0') then
						Cout <= '1';
						Diff <= '1';
					else
						Cout <= '1';
						Diff <= '0';
					end if;
				end if;
			else
				if (B = '0') then
					if (Cin = '0') then
						Cout <= '0';
						Diff <= '1';
					else
						Cout <= '0';
						Diff <= '0';
					end if;
				else
					if (Cin = '0') then
						Cout <= '0';
						Diff <= '0';
					else
						Cout <= '1';
						Diff <= '1';
					end if;
				end if;
			end if;
		end process;
	end behav;
