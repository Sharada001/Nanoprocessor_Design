
<h1 align="center">⚡Nanoprocessor Design⚡</h2>

<h2>Top Level Component Timing Diagrams ⏩</h2>
<p align="center">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Timing_Diagrams/Top_Level_Component.jpg">
</p>

<br>
<p align="center">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Timing_Diagrams/Top_Level_Component_Part_1.jpg">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Timing_Diagrams/Top_Level_Component_Part_2.jpg">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Timing_Diagrams/Top_Level_Component_Part_3.jpg">
</p>
<br>

<h2>Testing Final Design on Basys3 Board ⏩</h2>
<br>
<p align="center">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Testing%20on%20Basys3%20Board.jpg">
<img src="https://github.com/Sharada001/Nanoprocessor_Design/blob/c14f64fbc7d531036ec550dc26e1c5b2252e273f/Testing%20on%20Basys3_Board.jpg">
</p>
<br>

<h2>Top Level Component Interface ⏩</h2>

<pre>
<code>
-- Top Level Component Interface
COMPONENT Nanoprocessor_Design
     Port ( Clk : in STD_LOGIC;
         reset : in STD_LOGIC;
         Register7 : out STD_LOGIC_VECTOR (3 downto 0);
         OverflowFlag : out STD_LOGIC;
         ZeroFlag : out STD_LOGIC;
         To7Segment : out STD_LOGIC_VECTOR (6 downto 0);
         Display : out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;  
</code>
</pre>

<br>
<h4><b>➡Bitstream file (.bit format) is located at ❝Nanoprocessor_Design.runs/impl_2/Nanoprocessor_Design.bit❞ ✨✨</b></h4>
<br>

