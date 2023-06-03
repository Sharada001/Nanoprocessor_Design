----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 02:08:25 AM
-- Design Name: 
-- Module Name: TB_Program_Counter_3_bits - Behavioral
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

entity TB_Program_Counter_3_bits is
--  Port ( );
end TB_Program_Counter_3_bits;

architecture Behavioral of TB_Program_Counter_3_bits is

component Program_Counter_3_bits is
 Port ( in_addr : in STD_LOGIC_VECTOR (2 downto 0);
        reset : in STD_LOGIC;
        clk : in STD_LOGIC;
        out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL CLK : std_logic;
SIGNAL reset : std_logic;
SIGNAL in_addr : std_logic_vector (2 downto 0);
SIGNAL out_addr :std_logic_vector (2 downto 0);

begin

UUT : Program_Counter_3_bits PORT MAP(
        in_addr=>in_addr,
        reset=>reset,
        clk=>clk,
        out_addr=>out_addr
);

process begin

reset <= '0';
Clk<='0';
in_addr <= "010";
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
in_addr <= "000";
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
in_addr <= "100";
wait for 80ns;
Clk<='1';
wait for 80ns;

Clk<='0';
in_addr <= "011";
wait for 80ns;
Clk<='1';
wait for 80ns;

reset <= '1';
Clk<='0';
in_addr <= "011";
wait for 80ns;
Clk<='1';
wait for 80ns;

reset <= '0';
Clk<='0';
in_addr <= "110";
wait for 80ns;
Clk<='1';
wait for 80ns;

wait;
end process;

end Behavioral;
