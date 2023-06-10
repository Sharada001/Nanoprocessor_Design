----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2023 11:25:21 PM
-- Design Name: 
-- Module Name: TB_Nanoprocessor_Design - Behavioral
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

entity TB_Nanoprocessor_Design is
--  Port ( );
end TB_Nanoprocessor_Design;

architecture Behavioral of TB_Nanoprocessor_Design is

COMPONENT Nanoprocessor_Design
     Port ( Clk : in STD_LOGIC;
         reset : in STD_LOGIC;
         Register7 : out STD_LOGIC_VECTOR (3 downto 0);
         OverflowFlag : out STD_LOGIC;
         ZeroFlag : out STD_LOGIC;
         To7Segment : out STD_LOGIC_VECTOR (6 downto 0);
         Display : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT; 

signal Clk, reset : STD_LOGIC := '0';
signal PCOutAddr : STD_LOGIC_VECTOR (2 downto 0);
signal InstructionCode : STD_LOGIC_VECTOR (11 downto 0);
signal Register0, Register1, Register2, Register3, Register4, Register5, Register6, Register7 : STD_LOGIC_VECTOR (3 downto 0);
signal OverflowFlag, ZeroFlag : STD_LOGIC;
signal To7Segment : STD_LOGIC_VECTOR (6 downto 0);

begin
nanoprocessor : Nanoprocessor_Design
    PORT MAP (
        Clk => Clk,
        reset => reset,
        Register7 => Register7,
        OverflowFlag => OverflowFlag,
        ZeroFlag => ZeroFlag,
        To7Segment => To7Segment
    );

process begin
    reset <= '0';
    for i in 0 to 140 loop
        Clk <= '0';
        wait for 3ns;
        Clk <= '1';
        wait for 3ns;
    end loop;
    
    for i in 0 to 6 loop
        reset <= '1';
        Clk <= '0';
        wait for 3ns;
        Clk <= '1';
        wait for 3ns;
    end loop;
    
    reset <= '0';
    
    for i in 0 to 30 loop
        Clk <= '0';
        wait for 3ns;
        Clk <= '1';
        wait for 3ns;
    end loop;
    
wait;
end process;

end Behavioral;

