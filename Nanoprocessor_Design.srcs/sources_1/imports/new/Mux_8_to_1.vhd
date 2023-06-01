----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 07:13:57 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is

component Decoder_3_to_8
 port(
     I: in STD_LOGIC_VECTOR (2 downto 0);
     EN: in STD_LOGIC;
     Y: out STD_LOGIC_VECTOR (7 downto 0));
 end component;

signal S1 : STD_LOGIC_VECTOR (2 downto 0);
signal en1 : STD_LOGIC;
signal Y1 : STD_LOGIC_VECTOR (7 downto 0);
signal res : std_logic_vector(7 downto 0);

begin

Decoder_3_to_8_0 : Decoder_3_to_8
     port map(
         I => S1,
         EN => en1,
         Y => Y1 );

en1 <= EN;
S1 <= S;
res <= Y1 AND D;
Y <= res(0) OR res(1) OR res(2) OR res(3) OR res(4) OR res(5) OR res(6) OR res(7); 

end Behavioral;
