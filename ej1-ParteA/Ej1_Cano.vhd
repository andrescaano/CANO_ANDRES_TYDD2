 library IEEE;
 use  IEEE.STD_LOGIC_1164.ALL;
 entity Ej1_Cano is 
 port ( A : in STD_LOGIC;
         B : in STD_LOGIC;
			LED : out STD_LOGIC) ;
  end Ej1_Cano;
  
  architecture parteA of Ej1_Cano is 
  
  begin 
  
  LED <= not(A or B) ;
   
	end parteA ;
	