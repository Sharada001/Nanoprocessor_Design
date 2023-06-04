# Nanoprocessor Design

<h2>Program_ROM Component Interface ~</h2>

<pre>
<code>
-- Program_ROM Component Interface
Component Program_ROM
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           instruction_code : out STD_LOGIC_VECTOR (11 downto 0));
    END COMPONENT;
</code>
</pre>