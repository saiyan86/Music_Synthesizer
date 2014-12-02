module keybuffer	(input clk,
						 input reset,
						 input [7:0]keycode,
						 output [15:0]keybuffer);

wire state;//state==0:just modified lowerbuffer state==1:just modified upperbuffer		
logic [25:0]count = 0;
wire slowclk;

always @ (posedge clk)
begin 
	if(reset)
	begin
	count = 0;
	end
	else
	begin
		if(count==2500000)//for 50MHz clock, count=2.5M=>50ms. This can make the sound to last 50ms.
		begin
			slowclk = 1;
			count <= 0;
		end
		else
		begin
			count = count + 1;
			slowclk = 0;
		end
	end
end
				 
always @ (posedge clk)
begin
	if(reset)
	begin
	keybuffer = 0;
	end
	else
	begin
		if(1)//key pressed
		begin
			if(!keybuffer[7:0])//lower_keybuffer empty
			begin
				if(keybuffer[15:8]!=keycode)
				begin
				keybuffer[7:0] = keycode;
				end
			end
			else if((!keybuffer[15:8] && keybuffer[7:0]!=keycode)||(!keycode))//upper_keybuffer empty or released key
			begin
			keybuffer[15:8] = keybuffer[7:0];
			keybuffer[7:0] = keycode;
			end
			else if(keybuffer[15:8])//upper_keybuffer not empty
			begin
				if(keybuffer[15:8]!=keycode)//not same key as upper buffer
				begin
				keybuffer[7:0] = keycode;
				state = 0;
				end
			end
		end
		if(slowclk)
		begin
		keybuffer = 0;
		end
	end	
end
						 
endmodule