LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.fulladd_package.all ;

ENTITY adder4 IS
PORT ( Cin : IN STD_LOGIC ;
x3, x2, x1, x0 : IN STD_LOGIC ;
y3, y2, y1, y0 : IN STD_LOGIC ;
s3, s2, s1, s0 : OUT STD_LOGIC ;
Cout : OUT STD_LOGIC ) ;
END adder4 ;

ARCHITECTURE Structure OF adder4 IS
SIGNAL c1, c2, c3 : STD_LOGIC ;
BEGIN
stage0: fulladd PORT MAP ( Cin, x0, y0, s0, c1 ) ;
stage1: fulladd PORT MAP ( c1, x1, y1, s1, c2 ) ;
stage2: fulladd PORT MAP ( c2, x2, y2, s2, c3 ) ;
stage3: fulladd PORT MAP (
Cin => c3, Cout => Cout, x => x3, y => y3, s => s3 ) ;
END Structure ;