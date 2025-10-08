library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3Nubah is
    port (
        Clk : in std_logic;
        A, B : in unsigned(7 downto 0); -- 8-bit inputs
		  Student_id : in unsigned(3 downto 0);
        OP : in unsigned(15 downto 0);  -- 16-bit control signal
		  Results : out unsigned(3 downto 0) -- 4-bit outputs
    );
end ALU3Nubah;

architecture calculation of ALU3Nubah is
    signal Reg1 : unsigned(3 downto 0); 
   
begin
    process (Clk, OP)
    begin
        if rising_edge(Clk) then
            case OP is
                when "0000000000000001" =>
                    if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;

						  
                when "0000000000000010" =>
						  if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;


                when "0000000000000100" =>
                   if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						 
						 
                when "0000000000001000" =>
                   if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						 
						 
                when "0000000000010000" =>
                  if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						
						
                when "0000000000100000" =>
                  
						if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						
						
                when "0000000001000000" =>
                  
						if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						
                when "0000000010000000" =>
                  
						if (Student_id mod 2 = 0) then
								Reg1 <= "0000";
							else
								Reg1 <= "0001";
								end if;
						

					 when others =>
                  
						
            end case;
        end if;
    end process;

Results <= Reg1;
end calculation;