entity Ej1_Cano_testbench is 
end Ej1_Cano_testbench; 
 library IEEE;
 use  IEEE.STD_LOGIC_1164.ALL;


ARCHITECTURE behavior OF Ej1_Cano_testbench IS 

component Ej1_Cano 
port ( A : in STD_LOGIC;
        B : in STD_LOGIC; 
		  LED : out STD_LOGIC);
END component ;

--Inputs 
signal A : std_logic := '0' ;
signal B : std_logic := '0' ;
--Outputs 
signal LED : std_logic ; 

begin 

--UUT
uut: Ej1_Cano PORT MAP (
       A => A, 
		 B => B, 
		 LED => LED );
		 
stim_proc: PROCESS -- Genero un clk con un proceso 
begin
A <= '0' ; B <= '0' ; wait for 10ns ;
A <= '0' ; B <= '1' ; wait for 10ns ;
A <= '1' ; B <= '0' ; wait for 10ns ;
A <= '1' ; B <= '1' ; wait for 10ns ;
wait; 
end PROCESS ;
END; 

