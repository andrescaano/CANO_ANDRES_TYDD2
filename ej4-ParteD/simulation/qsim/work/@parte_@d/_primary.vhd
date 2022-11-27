library verilog;
use verilog.vl_types.all;
entity Parte_D is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        z               : out    vl_logic_vector(0 to 3)
    );
end Parte_D;
