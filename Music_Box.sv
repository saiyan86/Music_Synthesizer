module musicBox	(input clk, reset,en,
						 output logic[10:0]freq1,
						 output logic[10:0]freq2);

logic [25:0]durationCount = 0;
logic [9:0]noteCounter = 0;	
					 
always @ (posedge clk)
begin 
	if(!reset)
	begin
	durationCount = 0;
	noteCounter = 0;
	end
	else if(en)
	begin
		if(durationCount==12500000)//for 50MHz clock, count=12.5M=>250ms. This can make the sound to last 250ms.
		begin
			noteCounter = noteCounter+1;
			durationCount <= 0;
		end
		else
		begin
			durationCount = durationCount + 1;
		end
	end
end

always @ (posedge clk)
begin
	case(noteCounter)
	0: freq2 = 0;
	1: freq2 = 349;
	2: freq2 = 330;
	3: freq2 = 294;
	5: freq2 = 440;
	7: freq2 = 349;
	8: freq2 = 294;
	9: freq2 = 330;
	11: freq2 = 466;
	13: freq2 = 440;
	14: freq2 = 392;
	15: freq2 = 0;
	17: freq2 = 349;
	18: freq2 = 392;
	19: freq2 = 349;
	20: freq2 = 392;
	21: freq2 = 440;
	23: freq2 = 349;
	24: freq2 = 330;
	25: freq2 = 294;
	27: freq2 = 392;
	29: freq2 = 349;
	30: freq2 = 330;
	32: freq2 = 349;
	34: freq2 = 294;
	36: freq2 = 440;
	38: freq2 = 349;
	40: freq2 = 392;
	42: freq2 = 587;
	44: freq2 = 523;
	46: freq2 = 466;
	48: freq2 = 440;
	49: freq2 = 392;
	50: freq2 = 440;
	54: freq2 = 0;
	59: freq2 = 349;
	60: freq2 = 330;
	61: freq2 = 294;
	63: freq2 = 440;
	65: freq2 = 0;
	
	default: freq2 = 0;
	endcase
end

assign freq1 = 0;
endmodule