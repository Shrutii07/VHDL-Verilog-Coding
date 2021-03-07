library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMUX1t4_Beh is
     port(
         y : in STD_LOGIC_VECTOR(3 downto 0);
         s : in STD_LOGIC_VECTOR(1 downto 0);
         a,b,c,d : out STD_LOGIC_VECTOR(3 downto 0));
end DMUX1t4_Beh;
  
architecture d1 of DMUX1t4_Beh is
begin
dmux1: process(s,y)
begin
a <="0000"; b<= "0000";
c <= "0000"; d<="0000";
case s is
	when "00" =>
		a <= y;
	when "01" =>
		b <= y;
	when "10" =>
		c <= y;
	when "11" =>
		d <= y;
	when others =>
		a <="0000"; b<= "0000";
		c <= "0000"; d<="0000";
	end case;
end process;
	
end d1;
