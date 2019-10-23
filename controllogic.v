module controllogic(
  input [5:0] opcode,
  output reg [14:0] oprt
  );
  reg Z;
  always @(*) 
  begin
  casex(opcode) 
  6'b10xxxx: begin
              oprt[14:11]=opcode[3:0];
			  oprt[10:0]=11'b10010000000;
			  end
 6'b11xxxx: begin
              oprt[14:11]=opcode[3:0];
			  oprt[10:6]=5'b11010;
			  oprt[4:0]=5'b00000;
			  end
 6'b011000 : begin
              oprt[14:11]=4'b0000;
			  oprt[10:0]=11'b11100000000;
			  end
 6'b011001 : begin
             oprt[14:0]=15'b000001001100000;
			 end
6'b011011 : oprt[14:0]=15'b000010000001000;
6'b011100 : begin
               oprt[14:5]=4'b0000100000;
			   oprt[1:0]=2'b00;
              if(Z==1'b0) oprt[4:2]=3'b001;
			  else oprt[4:2]=3'b000;
			  end
6'b011101 : begin
              oprt[14:5]=4'b0000100000;
			  oprt[1:0]=2'b00;
			  if(Z) oprt[4:2]=3'b001;
			  else oprt[4:2]=3'b000;
			  end
6'b011111 : oprt[14:0]=15'b111110100000010;
default : oprt[14:0]=15'b000000000000000;
endcase
end
endmodule


