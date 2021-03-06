--first VHDL coding class
--adding libraries to the code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Defining the entity

entity ALL_GATES is
Port(
a: in STD_LOGIC;
b: in STD_LOGIC;
c: out STD_LOGIC;
c1: out STD_LOGIC;
c2: out STD_LOGIC;
c3: out STD_LOGIC;
c4: out STD_LOGIC;
c5: out STD_LOGIC;
c6: out STD_LOGIC
);
end ALL_GATES;

--Defining THE Functionality
architecture Behavioral of ALL_GATES is
begin
c=<a and b;

end Behavioral
