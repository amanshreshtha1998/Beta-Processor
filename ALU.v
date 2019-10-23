`timescale 1ns / 1ps

module ALU(
input [31:0] A,B,
input [3:0] ALUFN,
output reg [31:0] C
    );
reg prop;
always @(*) begin
case(ALUFN)
    4'b0000: C = A+B;
    4'b0001: C = A-B;
    4'b0010: C = A*B;
    4'b0011: C = A/B;
    4'b0100: begin
             if(A==B) C=1;
             else C=0;
             end
    4'b0101: begin
             if(A<B) C=1;
             else C=0;
             end
    4'b0110: begin
             if(A<=B) C=1;
             else C=0;
             end
    //4'b0111: ;
    4'b1000: C= A&B;
    4'b1001: C=A|B;
    4'b1010: C=A^B;
    4'b1011: C=~(A^B);
    4'b1100: C=A<<B[4:0];
    4'b1101: C=A>>B[4:0];
    4'b1110: begin
             ;
             end
    default: C=A;
    //4'b1111: ;
endcase    
end

endmodule
