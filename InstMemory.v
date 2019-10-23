module InstMemory(
input [31:0] PC_in,
output [31:0] instruction
);
reg [7:0] instmemory[0:100000000];
assign instruction={ instmemory[PC_in+3],instmemory[PC_in+2],instmemory[PC_in+1],instmemory[PC_in] } ;
// initial begin
// instmemory[2]=8'd10;
// instmemory[3]=8'd0;
// instmemory[4]=8'd0;
// instmemory[5]=8'd0;
// end
endmodule