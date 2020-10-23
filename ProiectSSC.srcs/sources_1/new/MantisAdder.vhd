library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MantisAdder is
  Port ( 
      manA : in std_logic_vector (23 downto 0);
      manB : in std_logic_vector (23 downto 0);
      sign : in std_logic; -- 0 adunare 1 scadere
      rez : out std_logic_vector (23 downto 0);
      carryOut : out std_logic
  );
end MantisAdder;

architecture Behavioral of MantisAdder is

 signal aux : std_logic_vector (24 downto 0);

begin

    aux <= manA + manB;
    
    
    rez <= aux(23 downto 0);
    carryOut <= aux(24);

end Behavioral;
