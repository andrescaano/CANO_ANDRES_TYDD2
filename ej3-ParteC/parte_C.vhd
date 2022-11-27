library ieee;
use ieee.std_logic_1164.all ;
entity parte_C is        --defino entradas y salidas como siempre 
 Port 
      (A : in std_logic;
		 B : in std_logic;
		 Cin : in std_logic;
		 Cout :out std_logic;   --indica el carry de salida 
		 S : out std_logic) ;     -- indica la suma 
 end parte_C ;
 
 architecture prueba of parte_C is 
 begin 
    S <= A xor B xor Cin;
	 Cout <= (A and B) or (Cin and (A xor B));
end prueba ; 
