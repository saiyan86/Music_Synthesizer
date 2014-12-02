module testbench();
timeunit 10ns;
timeprecision 1ns;

logic CLOCK_50 = 0;
logic [8:0]NoteStream1_out;
logic [8:0]NoteStream2_out;
logic [1:0]octaveChange = 0;
logic [5:0]Notes1_in;
logic [5:0]Notes2_in;
logic reset;
logic en;


NoteStreamGen main0(.*, .clk (CLOCK_50));

always begin : CLOCK_GENERATION
		#1 CLOCK_50 = ~CLOCK_50;
end

initial begin : CLOCK_INITIALIZATION
		CLOCK_50 = 0;
end

initial begin: TEST_VECTORS
	reset = 0;

	Notes1_in = 10;
	Notes2_in = 11;
	#50 reset = 1;
	
	#50 $stop;

end
endmodule	