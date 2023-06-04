----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 10:17:16 AM
-- Design Name: 
-- Module Name: mux_2_way_4_bit - Behavioral
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

entity mux_2_way_4_bit is
    Port ( immediate_value : in STD_LOGIC_VECTOR (3 downto 0);
           input_num : in STD_LOGIC_VECTOR (3 downto 0);
           load_select : in STD_LOGIC;
           out_to_reg_bank : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2_way_4_bit;
architecture Behavioral of mux_2_way_4_bit is

begin
out_to_reg_bank <= input_num when (load_select = '1') else immediate_value;
end behavioral;