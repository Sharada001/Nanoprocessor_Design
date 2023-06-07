----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 11:23:58 AM
-- Design Name: 
-- Module Name: TB_Mux_2_way_3_bit - Behavioral
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

entity TB_Mux_2_way_3_bit is
--  Port ( );
end TB_Mux_2_way_3_bit;

architecture Behavioral of TB_Mux_2_way_3_bit is

COMPONENT Mux_2_way_3_bit
 Port ( Incremented_addr : in STD_LOGIC_VECTOR (2 downto 0);
        Jump_to_addr : in STD_LOGIC_VECTOR (2 downto 0);
        Jump_flag : in STD_LOGIC;
        Out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL Incremented_addr_sig : std_logic_vector(2 downto 0);
SIGNAL Jump_to_addr_sig : std_logic_vector(2 downto 0);
SIGNAL Jump_flag_sig : std_logic;
SIGNAL Out_addr_sig : std_logic_vector(2 downto 0);

begin

UUT: Mux_2_way_3_bit PORT MAP(
    Incremented_addr => Incremented_addr_sig,
    Jump_to_addr => Jump_to_addr_sig, 
    Jump_flag => Jump_flag_sig, 
    Out_addr => Out_addr_sig
);

process
  begin
    Incremented_addr_sig <= "010";
    Jump_to_addr_sig <= "000";
    Jump_flag_sig <= '0';
    wait for 200 ns;
    Incremented_addr_sig <= "100";
    Jump_to_addr_sig <= "011";
    Jump_flag_sig <= '1';
    wait for 200 ns;
    Incremented_addr_sig <= "011";
    Jump_to_addr_sig <= "110";
    Jump_flag_sig <= '0';
    wait for 200 ns;
    Incremented_addr_sig <= "100";
    Jump_to_addr_sig <= "110";
    Jump_flag_sig <= '1';
    wait for 200 ns;
  wait;
end process;

end Behavioral;
