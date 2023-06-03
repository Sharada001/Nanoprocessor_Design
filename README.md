# Nanoprocessor Design

<h2>Register_Bank Component Interface ~</h2>

<pre>
<code>
-- register_bank Component Interface
component register_bank
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           out0, out1, out2, out3, out4, out5, out6, out7 : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           Reg_EN : in STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>
