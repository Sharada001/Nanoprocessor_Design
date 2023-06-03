# Nanoprocessor Design

<h2>Mux_8_way_4_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_8_way_4_bit Component Interface
component Mux_8_way_4_bit
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
end component;
</code>
</pre>
