----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 01:19:35 PM
-- Design Name: 
-- Module Name: TB_Mux_8_way_4_bit - Behavioral
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

entity TB_Mux_8_way_4_bit is
--  Port ( );
end TB_Mux_8_way_4_bit;

architecture Behavioral of TB_Mux_8_way_4_bit is

COMPONENT Mux_8_way_4_bit
 Port ( in0 : in STD_LOGIC_VECTOR (3 downto 0);
        in1 : in STD_LOGIC_VECTOR (3 downto 0);
        in2 : in STD_LOGIC_VECTOR (3 downto 0);
        in3 : in STD_LOGIC_VECTOR (3 downto 0);
        in4 : in STD_LOGIC_VECTOR (3 downto 0);
        in5 : in STD_LOGIC_VECTOR (3 downto 0);
        in6 : in STD_LOGIC_VECTOR (3 downto 0);
        in7 : in STD_LOGIC_VECTOR (3 downto 0);
        RegSel : in STD_LOGIC_VECTOR (2 downto 0);
        Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL in0, in1, in2, in3, in4, in5, in6, in7 : std_logic_vector(3 downto 0);
SIGNAL RegSel : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Output : STD_LOGIC_VECTOR (3 downto 0);

begin

UUT: Mux_8_way_4_bit PORT MAP(
    in0 => in0,
    in1 => in1,
    in2 => in2,
    in3 => in3,
    in4 => in4,
    in5 => in5,
    in6 => in6,
    in7 => in7,
    RegSel => RegSel,
    Output => Output
);

process begin
    in0 <= "0000";
    in1 <= "0010"; --2
    in2 <= "0001"; --1
    in3 <= "0000"; --0
    in4 <= "0110"; --6
    in5 <= "1001"; --9
    in6 <= "0000"; --0
    in7 <= "1011"; --B
    RegSel <= "000";
    wait for 100 ns;
    RegSel <= "001";
    wait for 100 ns;
    RegSel <= "010";
    wait for 100 ns;
    RegSel <= "011";
    wait for 100 ns;
    RegSel <= "100";
    wait for 100 ns;
    RegSel <= "101";
    wait for 100 ns;
    RegSel <= "110";
    wait for 100 ns;
    RegSel <= "111";
    wait for 100 ns;
  wait;
end process;

end Behavioral;
