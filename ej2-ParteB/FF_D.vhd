library ieee ; 
use ieee.std_logic_1164.ALL ;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity FF_D is 
PORT  ( D,CLOCK : in std_logic;
        Q : out std_logic);
end FF_D;
 
 architecture test of FF_D is 
 begin 
 process (CLOCK) 
 begin 
 if (CLOCK = '1' and CLOCK'EVENT ) then 
    Q<=D ;
end if; 
end process; 
end test;  
