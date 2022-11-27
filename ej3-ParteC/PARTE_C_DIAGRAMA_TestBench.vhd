LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

ENTITY PARTE_C_DIAGRAMA_TestBench is
END PARTE_C_DIAGRAMA_TestBench;


architecture test of PARTE_C_DIAGRAMA_TestBench is
component PARTE_C_DIAGRAMA     
    port(
        B3,B2,B1,B0,A3,A2,A1,A0,VCC,CIN,clk  : in std_logic;
        S3,S2,S1,S0,Z,V,C,S : out std_logic
        );
end component;
--ENTRADAS   inicializo las entradas para poder simular 

      signal B3 : STD_LOGIC  := '0';
		signal B2 : STD_LOGIC  := '0';
		signal B1 : STD_LOGIC  := '0';
		signal B0 :STD_LOGIC  := '0';
		signal A3 :STD_LOGIC  := '0';
		signal A2 :STD_LOGIC  := '0';
		signal A1 :STD_LOGIC  := '0';
		signal A0 :STD_LOGIC  := '0';
		signal VCC :STD_LOGIC  := '1';
		signal CIN :STD_LOGIC  := '0';
		signal clk :STD_LOGIC  := '0';
--SALIDAS	
	
		signal S3 :    STD_LOGIC;
		signal S2 :    STD_LOGIC;
		signal S1 :    STD_LOGIC;
		signal S0 :    STD_LOGIC;
		signal Z :   STD_LOGIC;
		signal V :    STD_LOGIC;
		signal C :    STD_LOGIC;
		signal S :    STD_LOGIC;
		
--Periodo de clock

 constant CLOCK_period : time := 20ns; 
begin
    UUT: PARTE_C_DIAGRAMA port map (
        B3 => B3,
		  B2 => B2,
		  B1 => B1,
		  B0 => B0,
		  A3 => A3,
		  A2 => A2,
		  A1 => A1,
		  A0 => A0,
        VCC => VCC,
        CIN => CIN,
        clk => clk,
        S3 => S3,
        S2 => S2,
        S1 => S1,
        S0 => S0,
        Z => Z,
        V => V,
        C => C,
        S => S );
        

CLOCK_process: process    --creo la señal de clk (clk verdadero)
			begin                  
				clk <= '0' ;
				wait for CLOCK_period/2 ;
				clk <= '1' ;
				wait for CLOCK_period/2 ;
			end process ; 

stim_proc: process   --creo las entradas De prueba a traves de procesos 
    begin
        A0<='0'; A1<='0'; A2<='0'; A3<='0'; B0<='0'; B1<='0'; B2<='0'; B3<='0'; CIN<='0';  wait for 20ns;
        
        A0<='1'; A1<='0'; A2<='0'; A3<='1'; B0<='1'; B1<='0'; B2<='1'; B3<='0'; CIN<='0';  wait for 20ns;
       
        A0<='1'; A1<='0'; A2<='0'; A3<='1'; B0<='1'; B1<='1'; B2<='1'; B3<='0'; CIN<='1';  wait for 20ns;
        
        A0<='1'; A1<='0'; A2<='0'; A3<='1'; B0<='0'; B1<='1'; B2<='0'; B3<='0'; CIN<='0';  wait for 20ns;
        
   end process;
end; 
