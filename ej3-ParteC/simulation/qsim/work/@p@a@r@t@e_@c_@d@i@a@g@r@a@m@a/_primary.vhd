library verilog;
use verilog.vl_types.all;
entity PARTE_C_DIAGRAMA is
    port(
        S3              : out    vl_logic;
        VCC             : in     vl_logic;
        clk             : in     vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        CIN             : in     vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        S2              : out    vl_logic;
        S1              : out    vl_logic;
        S0              : out    vl_logic;
        Z               : out    vl_logic;
        V               : out    vl_logic;
        C               : out    vl_logic;
        S               : out    vl_logic
    );
end PARTE_C_DIAGRAMA;
