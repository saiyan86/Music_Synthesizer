module freq_choose(  input clk,
       input[8:0] noteStream1, //bit 8-6 are octaves. bit 5-0 are notes.
		 input[8:0] noteStream2,
		 output en1,
		 output en2,
       output[10:0] freq1,
		 output[10:0] freq2);	

assign en1 = 1;
assign en2 = 1;
always @(posedge clk)
begin
case(noteStream1[8:6])
3'd2: begin 
   case(noteStream1[5:0])
   6'd1: freq1  = 65; //C2
   6'd2: freq1  = 69; //C#2/Db2 
   6'd3: freq1  = 73; //D2
   6'd4: freq1  = 78; //D#2/Eb2
   6'd5: freq1  = 82; //E2
   6'd6: freq1  = 87; //F2
   6'd7: freq1  = 93; //F#2/Gb2
   6'd8: freq1  = 98; //G2
   6'd9: freq1  = 104; //G#2/Ab2  
   6'd10: freq1  = 110; //A2
   6'd11: freq1  = 117; //A#2/Bb2
   6'd12: freq1  = 123; //B2
   default: freq1  = 0;// should never happen
    endcase
   end

3'd3: begin 
   case(noteStream1[5:0])
   6'd1: freq1  = 131; //C3
   6'd2: freq1  = 139; //C#3/Db3 
   6'd3: freq1  = 147; //D3
   6'd4: freq1  = 156; //D#3/Eb3
   6'd5: freq1  = 165; //E3
   6'd6: freq1  = 175; //F3
   6'd7: freq1  = 185; //F#3/Gb3
   6'd8: freq1  = 196; //G3
   6'd9: freq1  = 208; //G#3/Ab3  
   6'd10: freq1  = 220; //A3
   6'd11: freq1  = 233; //A#3/Bb3
   6'd12: freq1  = 247; //B3
   default: freq1  = 0;// should never happen
   endcase
    end
    
3'd4: begin 
   case(noteStream1[5:0])
   6'd1: freq1  = 262; //C4
   6'd2: freq1  = 277; //C#4/Db4 
   6'd3: freq1  = 294; //D4
   6'd4: freq1  = 311; //D#4/Eb4
   6'd5: freq1  = 330; //E4
   6'd6: freq1  = 349; //F4
   6'd7: freq1  = 370; //F#4/Gb4
   6'd8: freq1  = 392; //G4
   6'd9: freq1  = 415; //G#4/Ab4  
   6'd10: freq1  = 440; //A4
   6'd11: freq1  = 466; //A#4/Bb4
   6'd12: freq1  = 494; //B4
   default: freq1  = 0;// should never happen
   endcase
    end
    
3'd5: begin 
   case(noteStream1[5:0])
   6'd1: freq1  = 523; //C5
   6'd2: freq1  = 554; //C#5/Db5 
   6'd3: freq1  = 587; //D5
   6'd4: freq1  = 622; //D#5/Eb5
   6'd5: freq1  = 659; //E5
   6'd6: freq1  = 698; //F5
   6'd7: freq1  = 740; //F#5/Gb5
   6'd8: freq1  = 784; //G5
   6'd9: freq1  = 831; //G#5/Ab5  
   6'd10: freq1  = 880; //A5
   6'd11: freq1  = 932; //A#5/Bb5
   6'd12: freq1  = 988; //B5
   default: freq1  = 0;// should never happen
   endcase
    end
    
3'd6: begin 
   case(noteStream1[5:0])
   6'd1: freq1  = 1047; //C6
   6'd2: freq1  = 1109; //C#6/Db6 
   6'd3: freq1  = 1175; //D6
   6'd4: freq1  = 1245; //D#6/Eb6
   6'd5: freq1  = 1319; //E6
   6'd6: freq1  = 1397; //F6
   6'd7: freq1  = 1480; //F#6/Gb6
   6'd8: freq1  = 1568; //G6
   6'd9: freq1  = 1661; //G#6/Ab6  
   6'd10: freq1  = 1760; //A6
   6'd11: freq1  = 1865; //A#6/Bb6
   6'd12: freq1  = 1976; //B6
   default: freq1  = 0;// should never happen
   endcase
    end
    
default:freq1  = 0;// should never happen
endcase 
end



always @(posedge clk)
begin
case(noteStream2[8:6])
3'd2: begin 
   case(noteStream2[5:0])
   6'd1: freq2  = 65; //C2
   6'd2: freq2  = 69; //C#2/Db2 
   6'd3: freq2  = 73; //D2
   6'd4: freq2  = 78; //D#2/Eb2
   6'd5: freq2  = 82; //E2
   6'd6: freq2  = 87; //F2
   6'd7: freq2  = 93; //F#2/Gb2
   6'd8: freq2  = 98; //G2
   6'd9: freq2  = 104; //G#2/Ab2  
   6'd10: freq2  = 110; //A2
   6'd11: freq2  = 117; //A#2/Bb2
   6'd12: freq2  = 123; //B2
   default: freq2  = 0;// should never happen
    endcase
   end

3'd3: begin 
   case(noteStream2[5:0])
   6'd1: freq2  = 131; //C3
   6'd2: freq2  = 139; //C#3/Db3 
   6'd3: freq2  = 147; //D3
   6'd4: freq2  = 156; //D#3/Eb3
   6'd5: freq2  = 165; //E3
   6'd6: freq2  = 175; //F3
   6'd7: freq2  = 185; //F#3/Gb3
   6'd8: freq2  = 196; //G3
   6'd9: freq2  = 208; //G#3/Ab3  
   6'd10: freq2  = 220; //A3
   6'd11: freq2  = 233; //A#3/Bb3
   6'd12: freq2  = 247; //B3
   default: freq2  = 0;// should never happen
   endcase
    end
    
3'd4: begin 
   case(noteStream2[5:0])
   6'd1: freq2  = 262; //C4
   6'd2: freq2  = 277; //C#4/Db4 
   6'd3: freq2  = 294; //D4
   6'd4: freq2  = 311; //D#4/Eb4
   6'd5: freq2  = 330; //E4
   6'd6: freq2  = 349; //F4
   6'd7: freq2  = 370; //F#4/Gb4
   6'd8: freq2  = 392; //G4
   6'd9: freq2  = 415; //G#4/Ab4  
   6'd10: freq2  = 440; //A4
   6'd11: freq2  = 466; //A#4/Bb4
   6'd12: freq2  = 494; //B4
   default: freq2  = 0;// should never happen
   endcase
    end
    
3'd5: begin 
   case(noteStream2[5:0])
   6'd1: freq2  = 523; //C5
   6'd2: freq2  = 554; //C#5/Db5 
   6'd3: freq2  = 587; //D5
   6'd4: freq2  = 622; //D#5/Eb5
   6'd5: freq2  = 659; //E5
   6'd6: freq2  = 698; //F5
   6'd7: freq2  = 740; //F#5/Gb5
   6'd8: freq2  = 784; //G5
   6'd9: freq2  = 831; //G#5/Ab5  
   6'd10: freq2  = 880; //A5
   6'd11: freq2  = 932; //A#5/Bb5
   6'd12: freq2  = 988; //B5
   default: freq2  = 0;// should never happen
   endcase
    end
    
3'd6: begin 
   case(noteStream2[5:0])
   6'd1: freq2  = 1047; //C6
   6'd2: freq2  = 1109; //C#6/Db6 
   6'd3: freq2  = 1175; //D6
   6'd4: freq2  = 1245; //D#6/Eb6
   6'd5: freq2  = 1319; //E6
   6'd6: freq2  = 1397; //F6
   6'd7: freq2  = 1480; //F#6/Gb6
   6'd8: freq2  = 1568; //G6
   6'd9: freq2  = 1661; //G#6/Ab6  
   6'd10: freq2  = 1760; //A6
   6'd11: freq2  = 1865; //A#6/Bb6
   6'd12: freq2  = 1976; //B6
   default: freq2  = 0;// should never happen
   endcase
    end
    
default:freq2  = 0;// should never happen
endcase 
end

/*
always @(posedge clk)
begin
	if(!freq1)
		en1 = 0;
	else
		en1 = 1;
	if(!freq2)
		en2 = 0;
	else 
		en2 = 1;
end
*/

endmodule