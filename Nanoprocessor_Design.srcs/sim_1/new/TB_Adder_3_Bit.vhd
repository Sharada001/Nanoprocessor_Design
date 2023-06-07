----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2023 11:36:31 AM
-- Design Name: 
-- Module Name: TB_Adder_3_Bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Adder_3_Bit is
--  Port ( );
end TB_Adder_3_Bit;

architecture Behavioral of TB_Adder_3_Bit is
COMPONENT Adder_3_Bit
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0);
           Overflow : out STD_LOGIC );
END COMPONENT;

SIGNAL Input : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL C_in : STD_LOGIC;
SIGNAL Output : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Overflow : STD_LOGIC;

begin

UUT: Adder_3_Bit PORT MAP(
    Input => Input,
    C_in => C_in,
    Output => Output,
    Overflow => Overflow
);

process
begin
    C_in <= '1';
    Input <= "010"; 
    WAIT FOR 150 ns;
    Input <= "000"; 
    WAIT FOR 150 ns;
    Input <= "100"; 
    WAIT FOR 150 ns;
    Input <= "011"; 
    WAIT FOR 150 ns;
    Input <= "111"; 
    WAIT FOR 150 ns;
    Input <= "110"; 
    WAIT FOR 150 ns;
    WAIT;
end process;

end Behavioral;
