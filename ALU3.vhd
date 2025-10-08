

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU3 is
    port (
        Clk : in std_logic;
        A, B : in unsigned(7 downto 0); -- 8-bit inputs
        Student_id : in unsigned(3 downto 0); -- 4-bit Student ID
        OP : in unsigned(15 downto 0); -- 16-bit control signal
        Results : out std_logic -- Outputs 'y' or 'n'
    );
end ALU3;

architecture calculation of ALU3 is
    signal B_high : unsigned(3 downto 0); -- Upper 4 bits of B
    signal B_low : unsigned(3 downto 0); -- Lower 4 bits of B
begin

    process (Clk)
    begin
        if rising_edge(Clk) then
            -- Extract upper and lower parts of B
            B_high <= B(7 downto 4);
            B_low <= B(3 downto 0);

            case OP is
                when "0000000000000001" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= '0000'; -- Condition met
                    else
                        Results <= '0001'; -- Condition not met
                    end if;

                when "0000000000000010" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000000000100" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000000001000" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000000010000" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000000100000" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000001000000" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when "0000000010000000" =>
                    if (B_high > Student_id) or (B_low > Student_id) then
                        Results <= "0000"; -- Condition met
                    else
                        Results <= "0001"; -- Condition not met
                    end if;

                when others =>
                    Results <= "0001"; -- Default case
            end case;
        end if;
    end process;

end calculation;