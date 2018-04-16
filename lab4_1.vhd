library ieee;
use ieee.std_logic_1164.all;
 
entity if1 is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
    o_bit1 : out std_logic;
	o_bit2 : out std_logic;
	o_bit3 : out std_logic
    );
end if1;
 
architecture rtl of if1 is
begin
process is
begin
  if (i_bit1 = '0') and (i_bit2 = '0') THEN
	o_bit1 <= '0';
	o_bit2 <= '1';
	o_bit3 <= '1';
	wait for 10 ns;
  elsif (i_bit1 = '0') and (i_bit2 = '1') THEN
	o_bit1 <= '1';
	o_bit2 <= '0';
	o_bit3 <= '0';
	wait for 10 ns;
  elsif (i_bit1 = '1') and (i_bit2 = '0') THEN
	o_bit1 <= '1';
	o_bit2 <= '0';
	o_bit3 <= '1';
	wait for 10 ns;
  elsif (i_bit1 = '1') and (i_bit2 = '1') THEN
	o_bit1 <= '1';
	o_bit2 <= '1';
	o_bit3 <= '0';
	wait for 10 ns;
  end if;
end process;
  
end rtl;