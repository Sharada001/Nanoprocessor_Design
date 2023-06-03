# Nanoprocessor Design

<h2>Mux_2_way_3_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_2_way_3_bit Component Interface
component 2_way_3_bit_Mux
    Port ( Incremented_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_to_addr : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Out_addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;
</code>
</pre>
