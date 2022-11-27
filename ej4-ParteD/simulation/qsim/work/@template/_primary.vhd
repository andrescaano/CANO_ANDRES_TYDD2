library verilog;
use verilog.vl_types.all;
entity Template is
    port(
        clk             : in     vl_logic;
        entrada         : in     vl_logic;
        reset           : in     vl_logic;
        salida          : out    vl_logic_vector(3 downto 0)
    );
end Template;
