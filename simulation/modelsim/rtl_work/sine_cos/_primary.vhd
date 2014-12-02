library verilog;
use verilog.vl_types.all;
entity sine_cos is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        freq            : in     vl_logic_vector(10 downto 0);
        sine_o          : out    vl_logic_vector(15 downto 0);
        cos_o           : out    vl_logic_vector(15 downto 0)
    );
end sine_cos;
