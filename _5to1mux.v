`timescale 1ns / 1ps
module _5to1mux(
input [31:0] input1,input2,input3,input4,input5,
output [31:0] value,
input [2:0] select_line
    );
always @ (*)
begin
case(select_line)
3'b000: value=input1;
3'b001: value=input2;
3'b010: value=input3;
3'b011: value=input4;
3'b100: value=input5; 
endcase
end
endmodule
