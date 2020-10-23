library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ShiftRightUnit is
  Port (
        dataIN: in std_logic_vector (31 downto 0);
        en : in std_logic;
        clk : in std_logic;
        repBit : in std_logic;
        dataOUT: out std_logic_vector (31 downto 0)
   );
end ShiftRightUnit;

architecture Behavioral of ShiftRightUnit is

      signal aux : std_logic_vector (31 downto 0);

begin

    process(clk)
    begin   
       if(en = '0')then
            aux <= '0' & aux(30 downto 0); 
        end if;
    end process;

dataOut <= aux;

end Behavioral;
