----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 11:01:09 AM
-- Design Name: 
-- Module Name: Mux_2_way_3_bit - Behavioral
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

entity Mux_2_way_3_bit is
    Port ( Incremented_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_to_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_way_3_bit;

architecture Behavioral of Mux_2_way_3_bit is

signal Incremented_addr_sig, Jump_to_addr_sig, Out_addr_sig : std_logic_vector(2 downto 0);
signal Jump_flag_sig : STD_LOGIC;

begin
Jump_flag_sig <= Jump_flag;
Incremented_addr_sig <= Incremented_addr;
Jump_to_addr_sig <= Jump_to_addr;

Out_addr_sig(0) <= (not(Jump_flag_sig) and Incremented_addr_sig(0)) or (Jump_flag_sig and Jump_to_addr_sig(0));
Out_addr_sig(1) <= (not(Jump_flag_sig) and Incremented_addr_sig(1)) or (Jump_flag_sig and Jump_to_addr_sig(1));
Out_addr_sig(2) <= (not(Jump_flag_sig) and Incremented_addr_sig(2)) or (Jump_flag_sig and Jump_to_addr_sig(2));

Out_addr <= Out_addr_sig;
end Behavioral;
