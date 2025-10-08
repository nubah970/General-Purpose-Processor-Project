library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU2 is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
R1: out unsigned(3 downto 0);
R2: out unsigned(3 downto 0));
end ALU2;
architecture calculation of ALU2 is
signal Reg1,Reg2,Result : unsigned(7 downto 0) :=(others=> '0');
signal Reg4:unsigned (0 to 7);
begin
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
begin
if(rising_edge(Clk)) THEN
case OP is
 
WHEN "0000000000000001" => Result <= Reg1 + 2;

WHEN "0000000000000010" =>
Result<= "00111111" and Reg2 SRL 2;


WHEN "0000000000000100" => 
Result<= ("11110000" OR Reg1 srl 4);


WHEN "0000000000001000" =>  
if (Reg1< Reg2) then
    Result <= Reg1;
else 
Result <= Reg2;
end if;


WHEN "0000000000010000" => Result <= (Reg1(1 downto 0)) & (Reg1(7 downto 2)); --rotation



WHEN "0000000000100000" => Result <= (Reg2(0) & Reg2(1) & Reg2(2) & Reg2(3) & Reg2(4) & Reg2(5) & Reg2(6) & Reg2(7));



WHEN "0000000001000000" => Result <= Reg1 XOR Reg2;


WHEN "0000000010000000" => Result <= ((Reg1 + Reg2)-4);


WHEN OTHERS =>
Result<= "--------";


end case;
end if;
end process;

R1 <= Result(3 downto 0);
R2 <= Result(7 downto 4);
end calculation;