library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all ; 

entity Template is

	port( 
	   clk	: in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(3 downto 0) ) ;

end entity;

architecture test of Template is
	type state_type is (s1, s2, s3, s4, s5, s6, s7);

	signal state   : state_type;
begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s1;
		elsif (rising_edge(clk)) then
			case state is
				when s1=>
					if input = '1' then
						state <= s7;
					else
						state <= s2;
					end if;
				when s2=>
					if input = '1' then
						state <= s3;
					else
						state <= s3;
					end if;
				when s3=>
					if input = '1' then
						state <= s5;
					else
						state <= s4;
					end if;
				when s4 =>
					if input = '1' then
						state <= s1;
					else
						state <= s1;
					end if;
				when s5 =>
					if input = '1' then
						state <= s1;
					else
						state <= s1;
					end if;
				when s6 =>
					if input = '1' then
						state <= s3;
					else
						state <= s3;
					end if;
				when s7 =>
					if input = '1' then
						state <= s6;
					else
						state <= s6;b
					end if;
			end case;
		end if;
	end process;

	 process (state)
	begin
		case state is
			when s1 =>
				output <= "0000";
			when s2 =>
				output <= "0110";
			when s3 =>
				output <= "1111";
			when s4 =>
				output <= "1001";
			when s5 =>
				output <= "1110";
			when s6 =>
				output <= "1100";
			when s7 =>
				output <= "1000";
				
		end case;
	end process;

end test;
