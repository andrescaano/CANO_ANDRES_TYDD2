library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Parte_B is --el nombre de la entidad coincide con el nombre del archivo
Port 
  (input_A : in std_logic; 
   input_B : in std_logic;
	input_Cin : in std_logic;
	clk : in std_logic;
	output_Cout : out std_logic; -- indica carry salida
	output_S : out std_logic) ; --indica Salida (suma)
end Parte_B ; 
 architecture test of Parte_B is 
 
 component FF_D -- utilizo un componente que este declarado en algun otro archivo  llamado FF_D !!
 port   
 (D,CLOCK : in std_logic;  --D, CLOCK y Q 
  Q : out std_logic) ;
  end component ;
 signal A,B,Cin,Cout,S: std_logic ;
begin 
  S <= A xor B xor Cin ;
 Cout <= (A xor B) or (Cin and (A xor B)); 

D1: FF_D port map (input_A,clk,A);
D2: FF_D port map (input_B,clk,B); 
D3: FF_D port map (input_Cin,clk,Cin); 
D4: FF_D port map (Cout,clk,output_Cout); 
D5: FF_D port map (S,clk,output_S);  

end test ;