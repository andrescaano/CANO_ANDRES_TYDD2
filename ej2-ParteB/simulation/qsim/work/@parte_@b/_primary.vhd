library verilog;
use verilog.vl_types.all;
entity Parte_B is
    port(
        input_A         : in     vl_logic;
        input_B         : in     vl_logic;
        input_Cin       : in     vl_logic;
        clk             : in     vl_logic;
        output_Cout     : out    vl_logic;
        output_S        : out    vl_logic
    );
end Parte_B;
