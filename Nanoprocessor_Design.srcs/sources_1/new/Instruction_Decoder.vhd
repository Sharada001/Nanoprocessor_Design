----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 09:39:59 AM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( instruction_code : in STD_LOGIC_VECTOR (11 downto 0);
           jump_check : in STD_LOGIC_VECTOR (3 downto 0);
           reg_enable : out STD_LOGIC_VECTOR (2 downto 0);
           load_select : out STD_LOGIC;
           immediate_value : out STD_LOGIC_VECTOR (3 downto 0);
           reg_select : out STD_LOGIC_VECTOR (5 downto 0);
           add_sub_sel : out STD_LOGIC;
           jump_flag : out STD_LOGIC;
           jump_address : out STD_LOGIC_VECTOR (2 downto 0));
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

begin


end Behavioral;
