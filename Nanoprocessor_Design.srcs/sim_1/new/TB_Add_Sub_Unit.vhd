----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 12:23:32 AM
-- Design Name: 
-- Module Name: TB_Add_Sub_Unit - Behavioral
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

entity TB_Add_Sub_Unit is
--  Port ( );
end TB_Add_Sub_Unit;

architecture Behavioral of TB_Add_Sub_Unit is
component Add_Sub_Unit
    Port ( RegA : in STD_LOGIC_VECTOR (3 downto 0);
           RegB : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
    end component;

signal RegA, RegB, Output : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal Sel, Zero, Overflow : STD_LOGIC := '0';

begin
UUT: Add_Sub_Unit
    PORT MAP (
        RegA => RegA,
        RegB => RegB,
        Sel => Sel,
        Output => Output,
        Zero => Zero,
        Overflow => Overflow 
);

process begin
    RegA <= "0010";
    RegB <= "0000";
    Sel <= '0';
    wait for 80ns;
    RegA <= "0100";
    RegB <= "0100";
    Sel <= '1';
    wait for 80ns;
    RegA <= "0100";
    RegB <= "0011";
    Sel <= '0';
    wait for 80ns;
    RegA <= "0011";
    RegB <= "0110";
    Sel <= '0';
    wait for 80ns;
    RegA <= "0100";
    RegB <= "0110";
    Sel <= '1';
    wait for 80ns;
    RegA <= "0010";
    RegB <= "0110";
    Sel <= '0';
    wait for 80ns;
    RegA <= "1111";
    RegB <= "0001";
    Sel <= '0';
    wait for 80ns;
end process;

end Behavioral;
