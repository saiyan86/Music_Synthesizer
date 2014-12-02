module soundGen	(clk,reset,en1,en2,freq1,freq2,LRDATA);
input clk,reset,en1,en2;
input [10:0]freq1;
input [10:0]freq2;
output [15:0]LRDATA;
//wire [15:0]sine1;
wire [15:0]sine2;
//sine_cos sine_1(.clk(clk), .reset(reset), .en(1), .freq(freq1), .sine_o(sine1));
sine_cos sine_2(.clk(clk), .reset(reset), .en(1), .freq(freq2), .sine_o(sine2));

assign LRDATA = /*sine1 + */sine2;

endmodule