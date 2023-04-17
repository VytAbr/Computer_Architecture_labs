library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- entity
entity lab4 is
	port ( 
		A,B: in std_logic_vector(0 to 15);
		SEL : std_logic;
		mux_out: out std_logic_vector(0 to 15)
		);
	end lab4;

-- MUltiplexer 2:1, with 16 bits input.
architecture regVA of lab4 is
begin

	with SEL select
	mux_out <= 	A when '0', --) else
				B when '1', --) else
				(others => '0') when others;
	
end regVA;