
module _2to1mux(
input [31:0] input1,input2,
output [31:0] value,
input select_line
    );
always @ (*)
begin
case(select_line)
1'b0: value=input1;
1'b1: value=input2;
endcase
end
endmodule
