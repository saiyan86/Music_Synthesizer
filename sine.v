module sine_cos(clk, reset, en, freq, sine_o, cos_o/*, sin8_o, cos8_o, nClk, ctr, freqCounter*/);
   input clk, reset, en;
	input [10:0] freq;
   output [15:0] sine_o,cos_o;
//	output [7:0] sin8_o, cos8_o;
//	output nClk;
//	output [17:0]ctr;
//	output [13:0] freqCounter;
   reg [7:0] sine_r, cos_r; 
	wire [7:0] sine, cos;
	reg [13:0]freqCount = 0;
//----------------------FREQ-FREQCOUNTER LOOKUP TABLE----------------------//
//since the default sine wave frequency is 10MHz(due to 50MHz clock),
//the freqCount = 10M/freq.
always@ (posedge clk)
case(freq)
0 :freqCount=0;//assign some irrelevant value.
65:freqCount=15288;//x041, can't hear. C2
69:freqCount=14430;
73:freqCount=13620;
78:freqCount=12856;
82:freqCount=12134;
87:freqCount=11453;
93:freqCount=10810;
98:freqCount=10204;
104:freqCount=9631; 
110:freqCount=9090;//x06E,good A2
117:freqCount=8580;
123:freqCount=8099;
131:freqCount=7644;
139:freqCount=7215;
147:freqCount=6810;
156:freqCount=6428;
165:freqCount=6067;
175:freqCount=5727;
185:freqCount=5405;
196:freqCount=5102;
208:freqCount=4815;
220:freqCount=4545;
233:freqCount=4290;
247:freqCount=4049;
262:freqCount=3822;
277:freqCount=3608;
294:freqCount=3405;
311:freqCount=3214;
330:freqCount=3034;
349:freqCount=2863;
370:freqCount=2703;
392:freqCount=2551;//x188,good G4
415:freqCount=2408;
440:freqCount=2273;//x1B8,good A4
466:freqCount=2145;
494:freqCount=2025;//x1EE,good B4
523:freqCount=1911;
554:freqCount=1804;
587:freqCount=1703;
622:freqCount=1607;
659:freqCount=1517;
698:freqCount=1432;
740:freqCount=1351;
784:freqCount=1275;
831:freqCount=1204;
880:freqCount=1136;
932:freqCount=1073;
988:freqCount=1012;
1047:freqCount=956;
1109:freqCount=902;
1175:freqCount=851;
1245:freqCount=803;
1319:freqCount=758;
1397:freqCount=716;
1480:freqCount=676;
1568:freqCount=638;
1661:freqCount=602;
1760:freqCount=568;
1865:freqCount=536;
1976:freqCount=506;//x7B8, good B6

default:freqCount=0;
endcase		
	
//-------------------FREQ-FREQCOUNTER LOOKUP TABLE ENDS-----------------------//	


//code below is based on CORDIC algorithm, modified from code given on http://www.edaboard.com/thread39599.html.
	
	assign 		freqCounter = freqCount;
   assign      sine_o = {sine_r + {cos_r[7], cos_r[7], cos_r[7], cos_r[7:3]},8'b0};
   assign      cos_o  = {cos_r - {sine[7], sine[7], sine[7], sine[7:3]},8'b0};
   assign      sine = sine_r + {cos_r[7], cos_r[7], cos_r[7], cos_r[7:3]};
   assign      cos  = cos_r - {sine[7], sine[7], sine[7], sine[7:3]};
//	assign		sin8_o = sine;
//	assign		cos8_o = cos;
	reg [17:0] counter = 0;
	reg noteClk = 0;

	always @(posedge clk) 
		begin
			/*if(!freqCount)*/
			begin
			counter <= counter+1;
			noteClk = 0;
			end
			if (counter == freqCount/* && !freqCount*/)
			begin
				noteClk = 1;
				counter <= 0;
			end	
		end
//	assign nClk = noteClk;
//	assign ctr = counter;

   always@(posedge noteClk or negedge reset)
     begin
         if (!reset) begin
             sine_r <= 0;
             cos_r <= 120;
         end else begin
             if (en) begin
                 sine_r <= sine;
                 cos_r <= cos;
             end
         end
     end

	  
endmodule // sine_cos