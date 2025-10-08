LIBRARY ieee;
USE ieee.std_logic_1164.all;


Entity sseg3 IS
PORT(bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
leds : OUT STD_LOGIC_VECTOR(0 TO 6));
END sseg3 ;

ARCHITECTURE Behaviour OF sseg3  IS
BEGIN
PROCESS(bcd)
BEGIN
CASE bcd IS -- abcdefg
WHEN "0000" => leds <= NOT("1110110");
WHEN "0001" => leds <= NOT("0111011");
WHEN OTHERS => leds <= "-------";
END CASE;
END PROCESS;

END Behaviour;