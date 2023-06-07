----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 12:56:47 PM
-- Design Name: 
-- Module Name: Mux_8_way_4_bit - Behavioral
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

entity Mux_8_way_4_bit is
    Port ( in0 : in STD_LOGIC_VECTOR (3 downto 0);
           in1 : in STD_LOGIC_VECTOR (3 downto 0);
           in2 : in STD_LOGIC_VECTOR (3 downto 0);
           in3 : in STD_LOGIC_VECTOR (3 downto 0);
           in4 : in STD_LOGIC_VECTOR (3 downto 0);
           in5 : in STD_LOGIC_VECTOR (3 downto 0);
           in6 : in STD_LOGIC_VECTOR (3 downto 0);
           in7 : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC_VECTOR (2 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_way_4_bit;

architecture Behavioral of Mux_8_way_4_bit is

component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC := '1';
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal Reg_Sel_decoded : STD_LOGIC_VECTOR (7 downto 0);

begin
   
Decoder : Decoder_3_to_8 
    port map(
    I=>RegSel,
    Y=>Reg_Sel_decoded
);

Output(0) <= (Reg_Sel_decoded(0) and in0(0)) or (Reg_Sel_decoded(1) and in1(0)) or (Reg_Sel_decoded(2) and in2(0)) or (Reg_Sel_decoded(3) and in3(0)) or (Reg_Sel_decoded(4) and in4(0)) or (Reg_Sel_decoded(5) and in5(0)) or (Reg_Sel_decoded(6) and in6(0)) or (Reg_Sel_decoded(7) and in7(0));
Output(1) <= (Reg_Sel_decoded(0) and in0(1)) or (Reg_Sel_decoded(1) and in1(1)) or (Reg_Sel_decoded(2) and in2(1)) or (Reg_Sel_decoded(3) and in3(1)) or (Reg_Sel_decoded(4) and in4(1)) or (Reg_Sel_decoded(5) and in5(1)) or (Reg_Sel_decoded(6) and in6(1)) or (Reg_Sel_decoded(7) and in7(1));
Output(2) <= (Reg_Sel_decoded(0) and in0(2)) or (Reg_Sel_decoded(1) and in1(2)) or (Reg_Sel_decoded(2) and in2(2)) or (Reg_Sel_decoded(3) and in3(2)) or (Reg_Sel_decoded(4) and in4(2)) or (Reg_Sel_decoded(5) and in5(2)) or (Reg_Sel_decoded(6) and in6(2)) or (Reg_Sel_decoded(7) and in7(2));
Output(3) <= (Reg_Sel_decoded(0) and in0(3)) or (Reg_Sel_decoded(1) and in1(3)) or (Reg_Sel_decoded(2) and in2(3)) or (Reg_Sel_decoded(3) and in3(3)) or (Reg_Sel_decoded(4) and in4(3)) or (Reg_Sel_decoded(5) and in5(3)) or (Reg_Sel_decoded(6) and in6(3)) or (Reg_Sel_decoded(7) and in7(3));

end Behavioral;
