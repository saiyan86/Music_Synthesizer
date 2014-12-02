module testbench();
timeunit 10ns;
timeprecision 1ns;

logic CLOCK_50 = 0;
logic [15:0] sine_o;
logic reset;
logic en;


sine_cos main0(.clk (CLOCK_50), .reset (reset), .en (en), .sine_o (sine_o));

always begin : CLOCK_GENERATION
		#1 CLOCK_50 = ~CLOCK_50;
end

initial begin : CLOCK_INITIALIZATION
		CLOCK_50 = 0;
end

initial begin: TEST_VECTORS
	reset = 0;

	#50 reset = 1;
	
	#20 en = 0;
	
	#50 $stop;

end
endmodule	