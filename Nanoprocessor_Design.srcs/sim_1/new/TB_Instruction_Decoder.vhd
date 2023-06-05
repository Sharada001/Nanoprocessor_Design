----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 02:48:46 PM
-- Design Name: 
-- Module Name: TB_Instruction_Decoder - Behavioral
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

entity TB_Instruction_Decoder is
--  Port ( );
end TB_Instruction_Decoder;

architecture Behavioral of TB_Instruction_Decoder is
component Instruction_Decoder 
    Port ( instruction_code : in STD_LOGIC_VECTOR (11 downto 0);
           
           immediate_value : out STD_LOGIC_VECTOR (3 downto 0);
           reg_main,reg_add : out STD_LOGIC_VECTOR (2 downto 0); --This should be fed in to the two 8 way 4 bit muxes.
           jump_address : out STD_LOGIC_VECTOR (2 downto 0);
           operation : out STD_LOGIC_VECTOR (1 downto 0)); --This is the first two bits which indicates what to do (Add,Move..etc)
          
end component;
signal instruction_code :  STD_LOGIC_VECTOR (11 downto 0);
signal immediate_value :  STD_LOGIC_VECTOR (3 downto 0);
signal  reg_main,reg_add : STD_LOGIC_VECTOR (2 downto 0); 
signal jump_address :  STD_LOGIC_VECTOR (2 downto 0);
signal operation :  STD_LOGIC_VECTOR (1 downto 0);

begin
UUT: Instruction_Decoder Port map(
    instruction_code=>instruction_code  ,
    immediate_value => immediate_value,
    reg_main =>reg_main,
    reg_add => reg_add,
    jump_address => jump_address,
    operation =>operation
);
process
begin
instruction_code <= "011101110000";
wait for 500ns;

instruction_code <= "111010000111";
wait for 500ns;

wait;
end process;
end Behavioral;
