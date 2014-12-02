module HumanComputerMux	(input [10:0]h_freq1,
								 input [10:0]h_freq2,
								 input [10:0]c_freq1,
								 input [10:0]c_freq2,
								 input select,//0 for human 1 for computer
								 output logic [10:0]freq1,
								 output logic [10:0]freq2);
always @ (*)
begin
case(select)
  1'b0:begin
      freq1 <= h_freq1;
		freq2 <= h_freq2;
		end 
  1'b1:begin
      freq1 <= c_freq1;
		freq2 <= c_freq2;
		end
endcase
end


endmodule