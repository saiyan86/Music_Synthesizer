library verilog;
use verilog.vl_types.all;
entity lab7_usb is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        OTG_DATA        : inout  vl_logic_vector(15 downto 0);
        OTG_ADDR        : out    vl_logic_vector(1 downto 0);
        OTG_CS_N        : out    vl_logic;
        OTG_RD_N        : out    vl_logic;
        OTG_WR_N        : out    vl_logic;
        OTG_RST_N       : out    vl_logic;
        OTG_INT         : in     vl_logic;
        sdram_wire_addr : out    vl_logic_vector(12 downto 0);
        sdram_wire_dq   : inout  vl_logic_vector(31 downto 0);
        sdram_wire_ba   : out    vl_logic_vector(1 downto 0);
        sdram_wire_dqm  : out    vl_logic_vector(3 downto 0);
        sdram_wire_ras_n: out    vl_logic;
        sdram_wire_cas_n: out    vl_logic;
        sdram_wire_cke  : out    vl_logic;
        sdram_wire_we_n : out    vl_logic;
        sdram_wire_cs_n : out    vl_logic;
        sdram_clk       : out    vl_logic;
        keybuffer       : out    vl_logic_vector(15 downto 0)
    );
end lab7_usb;
