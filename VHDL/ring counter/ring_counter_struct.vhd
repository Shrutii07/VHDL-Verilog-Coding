-- Structural code for 4 bit Ring Counter
 
library ieee;
use ieee.std_logic_1164.all;

-- defining the block for D - flip flop  
-- i1 = D, i2 = clk, i3 = preset, i4 = clr
entity D_flipflop is 
	port(i1, i2, i3, i4 : in std_logic; o1 :out std_logic);
end D_flipflop;

-- preset = 0 and clr = 1 clk = X then o1 = 1
-- preset = 1 and clr = 0 clk = X then o1 = 0	
-- clk = falling edge o1 = D (D- flip flop)
architecture arch_D_flipflop of D_flipflop is 
begin 
	o1 <= '1' when i3 ='0'else
	'0' when i4 = '0' else
	i1 when falling_edge(i2) else
	unaffected; 
end arch_D_flipflop;

-- 
library ieee;
use ieee.std_logic_1164.all;
entity struc_ring_counter is 

	port(clk, pr, clr : in std_logic; 
				Q : out std_logic_vector(3 downto 0));
end struc_ring_counter;

architecture arch_struc_ring_counter of struc_ring_counter is 
	
	component D_flipflop
		port( i1,i2,i3,i4: in std_logic; o1 :out std_logic);
	end component;
		
	signal int: std_logic_vector(3 downto 0);
	begin
	c1: D_flipflop port map ( i1 => int(3), i2 => clk, i3 => pr, i4 => '1', o1 => int(0));
	c2: D_flipflop port map ( i1 => int(0), i2 => clk, i3 => '1', i4 => clr, o1 => int(1));
	c3: D_flipflop port map ( i1 => int(1), i2 => clk, i3 => '1', i4 => clr, o1 => int(2));
	c4: D_flipflop port map ( i1 => int(2), i2 => clk, i3 => '1', i4 => clr, o1 => int(3));
	Q <= int;

end arch_struc_ring_counter;
