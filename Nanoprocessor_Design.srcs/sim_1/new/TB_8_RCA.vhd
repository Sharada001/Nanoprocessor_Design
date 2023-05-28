----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 10:27:41 PM
-- Design Name: 
-- Module Name: TB_8_RCA - Behavioral
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

entity TB_8_RCA is
--  Port ( );
end TB_8_RCA;

architecture Behavioral of TB_8_RCA is

COMPONENT RCA_8
 PORT( A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7, C_in : IN STD_LOGIC; 
 S0, S1, S2, S3, S4, S5, S6, S7, C_out : OUT STD_LOGIC);
END COMPONENT;

SIGNAL A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7, C_in : std_logic;
SIGNAL S0, S1, S2, S3, S4, S5, S6, S7, C_out : std_logic;

begin

UUT: RCA_8 PORT MAP(
    A0 => A0,
    A1 => A1,
    A2 => A2,
    A3 => A3,
    A4 => A4,
    A5 => A5,
    A6 => A6,
    A7 => A7,
    B0 => B0,
    B1 => B1,
    B2 => B2,
    B3 => B3,
    B4 => B4,
    B5 => B5,
    B6 => B6,
    B7 => B7,
    C_in => C_in, 
    S0 => S0,
    S1 => S1,
    S2 => S2,
    S3 => S3,
    S4 => S4,
    S5 => S5,
    S6 => S6,
    S7 => S7,
    C_out => C_out
);

process begin
  A0 <= '1';
  A1 <= '0';
  A2 <= '1';
  A3 <= '0';
  A4 <= '1';
  A5 <= '0';
  A6 <= '0';
  A7 <= '0';
  B0 <= '0';
  B1 <= '1';
  B2 <= '1';
  B3 <= '0';
  B4 <= '0';
  B5 <= '0';
  B6 <= '0';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns; 
  A0 <= '1';
  A1 <= '0';
  A2 <= '1';
  A3 <= '0';
  A4 <= '1';
  A5 <= '0';
  A6 <= '0';
  A7 <= '0';
  B0 <= '0';
  B1 <= '1';
  B2 <= '0';
  B3 <= '1';
  B4 <= '1';
  B5 <= '0';
  B6 <= '1';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns; --change again
  A0 <= '0';
  A1 <= '1';
  A2 <= '0';
  A3 <= '1';
  A4 <= '1';
  A5 <= '0';
  A6 <= '1';
  A7 <= '0';
  B0 <= '0';
  B1 <= '1';
  B2 <= '1';
  B3 <= '0';
  B4 <= '0';
  B5 <= '0';
  B6 <= '0';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns; --change again
  A0 <= '1';
  A1 <= '0';
  A2 <= '1';
  A3 <= '0';
  A4 <= '1';
  A5 <= '0';
  A6 <= '0';
  A7 <= '0';
  B0 <= '0';
  B1 <= '1';
  B2 <= '0';
  B3 <= '0';
  B4 <= '0';
  B5 <= '1';
  B6 <= '1';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns;
  A0 <= '0';
  A1 <= '1';
  A2 <= '0';
  A3 <= '0';
  A4 <= '0';
  A5 <= '1';
  A6 <= '1';
  A7 <= '0';
  B0 <= '0';
  B1 <= '0';
  B2 <= '0';
  B3 <= '0';
  B4 <= '0';
  B5 <= '0';
  B6 <= '0';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns; 
  A0 <= '0';
  A1 <= '0';
  A2 <= '0';
  A3 <= '0';
  A4 <= '0';
  A5 <= '0';
  A6 <= '0';
  A7 <= '0';
  B0 <= '1';
  B1 <= '0';
  B2 <= '1';
  B3 <= '0';
  B4 <= '1';
  B5 <= '0';
  B6 <= '0';
  B7 <= '0';
  C_in <= '0';
 WAIT FOR 150 ns; --change again
 
 WAIT; -- will wait forever
end process;

end Behavioral;
