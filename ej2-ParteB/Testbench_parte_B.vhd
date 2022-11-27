library ieee ;
use ieee.std_logic_1164.all ;
entity Testbench_parte_B is 
end  Testbench_parte_B;
architecture test of  Testbench_parte_B is 
component Parte_B 
port (input_A : in std_logic; 
   input_B : in std_logic;
	input_Cin : in std_logic;
	clk : in std_logic;
	output_Cout : out std_logic; -- indica carry salida
	output_S : out std_logic) ; --indica Salida (suma)
end component ;
--inputs 
signal input_A : std_logic := '0' ;
signal input_B : std_logic := '0' ;
signal input_Cin : std_logic := '0' ;
signal clk : std_logic := '0' ;
--outputs 
signal output_Cout : std_logic;
signal output_S : std_logic;

constant clock_period : time:= 20ns;
begin 
uut: Parte_B port map 
(input_A  => input_A ,
input_B => input_B,
input_Cin => input_Cin,
clk => clk,
output_Cout => output_Cout,
output_S => output_S); 

clock_process : process 
begin 
clk <= '0';
wait for clock_period/2 ;
clk <= '1'; 
wait for clock_period/2 ;
end process ;

stim_proc : process --Stimulus process 
begin 
input_A <= '0'; input_B <= '0'; input_Cin <= '0'; wait for 30ns; 
input_A <= '0'; input_B <= '0'; input_Cin <= '1'; wait for 30ns; 
input_A <= '0'; input_B <= '1'; input_Cin <= '0'; wait for 30ns; 
input_A <= '0'; input_B <= '1'; input_Cin <= '1'; wait for 30ns; 
input_A <= '1'; input_B <= '0'; input_Cin <= '0'; wait for 30ns; 
input_A <= '1'; input_B <= '0'; input_Cin <= '1'; wait for 30ns; 
input_A <= '1'; input_B <= '1'; input_Cin <= '0'; wait for 30ns; 
input_A <= '1'; input_B <= '1'; input_Cin <= '1'; wait for 30ns; 
wait ;
end process; 
END ;