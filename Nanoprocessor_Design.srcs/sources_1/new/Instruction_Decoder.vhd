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
           
           immediate_value : out STD_LOGIC_VECTOR (3 downto 0);
           reg_main,reg_add : out STD_LOGIC_VECTOR (2 downto 0); --This should be fed in to the two 8 way 4 bit muxes.
           jump_address : out STD_LOGIC_VECTOR (2 downto 0);
           operation : out STD_LOGIC_VECTOR (1 downto 0)); --This is the first two bits which indicates what to do (Add,Move..etc)
          
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

begin
operation <= instruction_code (11 downto 10); --Function definition (addition,move,etc)
reg_main <=instruction_code(9 downto 7); --9 to 7  is always a register index
reg_add <= instruction_code (6 downto 4); -- second register for addition
--register index for two's complement operation is passed by reg_sel_1.
immediate_value <=  instruction_code (3 downto 0); --This is the value to be stored for the move function.
jump_address <=  instruction_code (2 downto 0); -- Address to jump to in jump instruction.
end Behavioral;
