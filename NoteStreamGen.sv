module NoteStreamGen	(input 	clk,reset,
							input   [2:0]octave,
							input   [5:0]Notes1_in,
							input   [5:0]Notes2_in,
							output logic [8:0]NoteStream1_out,
							output logic [8:0]NoteStream2_out);
//wire [2:0]octave;
always @ (posedge clk or negedge reset)
begin
if(!reset)
	begin
		NoteStream1_out <= 0;
		NoteStream2_out <= 0;
	end
else
begin
	NoteStream1_out = {octave,Notes1_in};
	NoteStream2_out = {octave,Notes2_in};
end
end
endmodule