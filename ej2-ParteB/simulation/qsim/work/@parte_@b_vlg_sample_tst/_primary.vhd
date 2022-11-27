library verilog;
use verilog.vl_types.all;
entity Parte_B_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        input_A         : in     vl_logic;
        input_B         : in     vl_logic;
        input_Cin       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Parte_B_vlg_sample_tst;
