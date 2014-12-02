module keyToNote (input clk,
						input [7:0]keycode,
						output [8:0]noteStream,
						output octaveChange);

logic [5:0] notes;						
always @(posedge clk)
case(keycode)

4	:begin
	 notes = 6'd1;  		//'A' = C    	1
	 octaveChange = 0;
	 end
26	:begin
	 notes = 6'd2;		//'W' = C#		1#	
	 octaveChange = 0;
	 end
22	:begin
	 notes = 6'd3;		//'S' = D		2	
	 octaveChange = 0;
	 end
8	:begin
	 notes = 6'd4;	   //'E' = D#		2#
	 octaveChange = 0;
	 end
7	:begin
	 notes = 6'd5;		//'D' = E		3
	 octaveChange = 0;
	 end
9	:begin
	 notes = 6'd6;		//'F' = F		4
	 octaveChange = 0;
	 end
23	:begin
	 notes = 6'd7;		//'T' = F#		4#
	 octaveChange = 0;
	 end
10	:begin
	 notes = 6'd8;		//'G' = G		5
	 octaveChange = 0;
	 end
28	:begin
	 notes = 6'd9;		//'Y' = G#		5#
	 octaveChange = 0;
	 end
11	:begin
	 notes = 6'd10;		//'H' = A		6
	 octaveChange = 0;
	 end
24	:begin
	 notes = 6'd11;		//'U' = A#		6#
	 octaveChange = 0;
	 end
13	:begin
	 notes = 6'd12;		//'J' = B		7
	 octaveChange = 0;
	 end
14	:begin
	 notes = 6'd13;		//'K' = Octave--
	 octaveChange = 1;
	 end
15	:begin
	 notes = 6'd14;     //'L' = Octave++
	 octaveChange = 1;
	 end
default: 
	begin
	notes = 0;
	octaveChange = 0;
	end
endcase

assign noteStream = {3'd4,notes};



endmodule
						