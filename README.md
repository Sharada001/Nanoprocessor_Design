# Nanoprocessor Design

<h2>Mux_2_way_4_bit Component Interface ~</h2>

<pre>
<code>
-- Mux_2_way_4_bit Component Interface
component 2_way_4_bit_Mux
    Port ( input_num : in STD_LOGIC_VECTOR (3 downto 0);
           immediate_value : in STD_LOGIC_VECTOR (3 downto 0);
           load_select : in STD_LOGIC;
           out_to_reg_bank : out STD_LOGIC_VECTOR (3 downto 0));
end component;
</code>
</pre>
