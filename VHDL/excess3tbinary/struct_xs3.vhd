LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY fulladd IS
PORT ( Cin, x, y : IN STD_LOGIC ;
Sum, Cout : OUT STD_LOGIC ) ;
END fulladd ;

ARCHITECTURE df_fulladd OF fulladd IS
BEGIN
Sum <= x XOR y XOR Cin ;
Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y) ;
END df_fulladd ;
  
  
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY xs3_2_bin IS
PORT ( ex3 : IN std_logic_vector(3 DOWNTO 0);
		 bin : OUT std_logic_vector( 3 DOWNTO 0);
		 valid: out std_logic);
END xs3_2_bin;

ARCHITECTURE structural OF xs3_2_bin IS

CONSTANT TMP : std_logic_vector(3 downto 0) := "1100";
CONSTANT C0: std_logic := '1';

COMPONENT fulladd IS
  PORT( Cin, x, y : IN std_logic;
        Sum, Cout : OUT std_logic);
END COMPONENT;

SIGNAL C1, C2, C3, C4: std_logic;

	
	BEGIN
		valid<='1' WHEN (ex3 = "0000" or ex3 = "0001" or ex3 = "0010") ELSE
		'0';
		FA0:fulladd PORT MAP(C0, ex3(0), TMP(0), bin(0), C1); 
		FA1:fulladd PORT MAP(C1, ex3(1), TMP(1), bin(1), C2); 
		FA2:fulladd PORT MAP(C2, ex3(2), TMP(2), bin(2), C3);
		FA3:fulladd PORT MAP(C3, ex3(3), TMP(3), bin(3), C4); 

END structural ;
