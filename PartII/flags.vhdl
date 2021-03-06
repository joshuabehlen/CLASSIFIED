library ieee;
use ieee.std_logic_1164.all;

ENTITY flags IS
	PORT(
		S 		:IN std_logic_vector(15 downto 0);
		C14,C15 :IN std_logic;
		n,c,v,z :OUT std_logic
	);
END flags;

ARCHITECTURE behavior OF flags IS
	SIGNAL cOut0,cOut1 :std_logic_vector(15 downto 0);
	SIGNAL fNot 	   :std_logic_vector(15 downto 0);
	
BEGIN
	n <= S(15);
	c <= C15;
	fNot <= (NOT S);
	z <= fNot(0) AND fNot(1) AND fNot(2) AND fNot(3) 
		  AND fNot(4) AND fNot(5) AND fNot(6) AND fNot(7) 
		  AND fNot(8) AND fNot(9) AND fNot(10) AND fNot(11) 
		  AND fNot(12) AND fNot(13) AND fNot(14) AND fNot(15);
	v <= C14 XOR C15;
END behavior;