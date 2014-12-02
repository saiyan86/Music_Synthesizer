library verilog;
use verilog.vl_types.all;
entity soundGen is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en1             : in     vl_logic;
        en2             : in     vl_logic;
        freq1           : in     vl_logic_vector(10 downto 0);
        freq2           : in     vl_logic_vector(10 downto 0);
        LRDATA          : out    vl_logic_vector(15 downto 0)
    );
end soundGen;
