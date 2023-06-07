----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 10:41:19 AM
-- Design Name: 
-- Module Name: TB_mux_2_way_4_bit - Behavioral
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

entity TB_mux_2_way_4_bit is
--  Port ( );
end TB_mux_2_way_4_bit;

architecture Behavioral of TB_mux_2_way_4_bit is
COMPONENT mux_2_way_4_bit
    Port ( immediate_value : in STD_LOGIC_VECTOR (3 downto 0);
           input_num : in STD_LOGIC_VECTOR (3 downto 0);
           load_select : in STD_LOGIC;
           out_to_reg_bank : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
signal immediate_value, input_num, out_to_reg_bank : STD_LOGIC_VECTOR (3 downto 0);
signal load_select : Std_logic;

begin
UUT: mux_2_way_4_bit PORT MAP(
immediate_value =>immediate_value,
input_num => input_num,
load_select => load_select,
out_to_reg_bank => out_to_reg_bank
);
process
begin

    immediate_value <="0010";
    input_num <= "1011";
    load_select <='0';
    WAIT FOR 100 ns; 
    
    load_select <='1';
    WAIT FOR 100 ns;    
    
    load_select <='0';
    WAIT FOR 100 ns;    
  

end process;
end Behavioral;
