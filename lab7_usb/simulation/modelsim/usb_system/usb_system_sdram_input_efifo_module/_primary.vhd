library verilog;
use verilog.vl_types.all;
entity usb_system_sdram_input_efifo_module is
    port(
        clk             : in     vl_logic;
        rd              : in     vl_logic;
        reset_n         : in     vl_logic;
        wr              : in     vl_logic;
        wr_data         : in     vl_logic_vector(61 downto 0);
        almost_empty    : out    vl_logic;
        almost_full     : out    vl_logic;
        empty           : out    vl_logic;
        full            : out    vl_logic;
        rd_data         : out    vl_logic_vector(61 downto 0)
    );
end usb_system_sdram_input_efifo_module;
