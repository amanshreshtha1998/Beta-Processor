
module _3to1mux(
input [31:0] input1,input2,input3,
output [31:0] value,
input [1:0] select_line
    );
always @ (*)
begin
case(select_line)
2'b00: value=input1;
2'b01: value=input2;
2'b10: value=input3;
endcase
end
endmodule
