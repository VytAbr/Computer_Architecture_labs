library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3_p is
  port (
    i_clock      : in  std_logic;
    i_enable     : in  std_logic;
    i_switch_1   : in  std_logic;
    i_switch_2   : in  std_logic;
    o_led  		  : out std_logic
    );
end lab3_p;

architecture behave of lab3_p is
-- define internal variables
	constant crystal_clk : natural := 50000000;
	signal re_cnt 			: natural range 0 to crystal_clk;
	signal blinker 		: std_logic := '0';

begin

--process syntax described in VHDL book, ch 5.3
	process (i_clock) is
	begin
		if rising_edge(i_clock) then
			re_cnt <= re_cnt + 1;
			if re_cnt >= crystal_clk then
				blinker <= not blinker;
				re_cnt <= 0;
			end if;
		end if;
	end process;

-- signal connected to output
o_led <= blinker;

end behave;