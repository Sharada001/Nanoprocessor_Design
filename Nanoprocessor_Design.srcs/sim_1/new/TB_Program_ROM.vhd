----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 02:18:46 AM
-- Design Name: 
-- Module Name: TB_Program_ROM - Behavioral
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

entity TB_Program_ROM is
--  Port ( );
end TB_Program_ROM;

architecture Behavioral of TB_Program_ROM is
Component Program_ROM
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           instruction_code : out STD_LOGIC_VECTOR (11 downto 0));
    END COMPONENT;
Signal address : STD_LOGIC_VECTOR (2 downto 0);
Signal instruction_code : STD_LOGIC_VECTOR (11 downto 0);
begin
UUT :Program_ROM Port map(
address => address,
instruction_code => instruction_code
);
process
begin
    address<="010";
    wait for 100ns;
    
    address<="110";
    wait for 100ns;
    
    address<="011";
    wait for 100ns;
    
    address<="000";
    wait for 100ns;
    
    address<="100";
    wait for 100ns;
wait;
end process;
end Behavioral;
