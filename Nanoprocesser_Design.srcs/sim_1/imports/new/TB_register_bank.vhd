----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 04:19:13 PM
-- Design Name: 
-- Module Name: TB_register_bank - Behavioral
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

entity TB_register_bank is
--  Port ( );
end TB_register_bank;

architecture Behavioral of TB_register_bank is

component register_bank is
 Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
          out0, out1, out2, out3, out4, out5, out6, out7 : out STD_LOGIC_VECTOR (3 downto 0);
          Clk : in STD_LOGIC;
          Reset : in STD_LOGIC;
          Reg_EN : in STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL CLK : std_logic;
SIGNAL Reset : std_logic :='0';
SIGNAL input  : std_logic_vector(3 downto 0);
SIGNAL Reg_EN : std_logic_vector (2 downto 0);
SIGNAL out0, out1, out2, out3, out4, out5, out6, out7 : std_logic_vector (3 downto 0);


begin
UUT : register_bank PORT MAP(
        input=>input,
        out0=>out0,
        out1=>out1,
        out2=>out2,
        out3=>out3,
        out4=>out4,
        out5=>out5,
        out6=>out6,
        out7=>out7,
        Clk=>Clk,
        Reg_EN=>Reg_EN,
        Reset=> Reset
        );
process
begin

Clk<='0';
Reg_EN <= "010";  --"Reg_EN" should always be assigned before "input".
input<="0010"; -- 2
wait for 80ns;
Clk<='1';
wait for 80ns;

Reg_EN <= "011";
input<="0001"; -- 1
Clk<='0';
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
Reg_EN <= "110";
wait for 80ns;
input<="0000"; -- 0
Clk<='1';
wait for 80ns;

Clk<='0';
Reg_EN <= "111";
input<="0000"; -- 0
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
Reg_EN <= "001";
input<="1001"; -- 9
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
Reg_EN <= "100";
input<="1000"; -- 8
wait for 80ns;
Clk<='1';
Reset <= '1';
wait for 80ns;

wait;
end process;
end Behavioral;
