# Nanoprocessor Design

<h2>Program_Counter_3_bits Component Interface ~</h2>

<pre>
<code>
-- Program_Counter_3_bits Component Interface
component Program_Counter_3_bits
    Port ( in_addr : in STD_LOGIC_VECTOR (2 downto 0);
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>
