----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 12:27:16 PM
-- Design Name: 
-- Module Name: 4-bit_Add_Sub_Unit - Behavioral
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

entity 4-bit_Add_Sub_Unit is
    Port ( RegA : in STD_LOGIC_VECTOR (3 downto 0);
           RegB : in STD_LOGIC_VECTOR (3 downto 0);
           Select : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end 4-bit_Add_Sub_Unit;

architecture Behavioral of 4-bit_Add_Sub_Unit is

begin


end Behavioral;
