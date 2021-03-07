library ieee;
use ieee.std_logic_1164.all;

entity tb_adder4 is
end tb_adder4;

architecture tb of tb_adder4 is

component adder4
port (Cin : in std_logic;
x3 : in std_logic;
x2 : in std_logic;
x1 : in std_logic;
x0 : in std_logic;
y3 : in std_logic;
y2 : in std_logic;
y1 : in std_logic;
y0 : in std_logic;
s3 : out std_logic;
s2 : out std_logic;
s1 : out std_logic;
s0 : out std_logic;
Cout : out std_logic);
end component;

signal Cin : std_logic;
signal x3 : std_logic;
signal x2 : std_logic;
signal x1 : std_logic;
signal x0 : std_logic;
signal y3 : std_logic;
signal y2 : std_logic;
signal y1 : std_logic;
signal y0 : std_logic;
signal s3 : std_logic;
signal s2 : std_logic;
signal s1 : std_logic;
signal s0 : std_logic;
signal Cout : std_logic;

begin

dut : adder4
port map (Cin => Cin,
x3 => x3,
x2 => x2,
x1 => x1,
x0 => x0,
y3 => y3,
y2 => y2,
y1 => y1,
y0 => y0,
s3 => s3,
s2 => s2,
s1 => s1,
s0 => s0,
Cout => Cout);

stimuli : process
begin
Cin <= '0';
x3 <= '0';
x2 <= '0';
x1 <= '0';
x0 <= '0';
y3 <= '0';
y2 <= '0';
y1 <= '0';
y0 <= '0';
wait for 100 ps;

Cin <= '1';
x3 <= '0';
x2 <= '0';
x1 <= '0';
x0 <= '0';
y3 <= '0';
y2 <= '0';
y1 <= '0';
y0 <= '0';
wait for 100 ps;

Cin <= '0';
x3 <= '1';
x2 <= '0';
x1 <= '0';
x0 <= '0';
y3 <= '1';
y2 <= '0';
y1 <= '0';
y0 <= '0';
wait for 100 ps;


end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_adder4 of tb_adder4 is
for tb
end for;
end cfg_tb_adder4;