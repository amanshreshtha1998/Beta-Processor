module program_counter(
input clk,PC_in
output reg [31:0] PC,
);
PC=32'd0;
always @ (posedge(clk))
begin
if(PC_in==32'd100000000)
PC<=32'd0;
else 
PC<=PC_in+32'd4;
end
endmodule
