module Datamemory(
input [31:0] address,Wd,
input  Wr,
input clock,
output reg [31:0] Rd 
);

reg [7:0] datamemory[0:100000000];
always @(posedge clock) begin
if(Wr) 
      { datamemory[address+3],datamemory[address+2] ,datamemory[address+1],datamemory[address]}<=Wd ;
	
end
always @(*) 
if(Wr==1'b0)
 Rd={datamemory[address+3],datamemory[address+2] ,datamemory[address+1],datamemory[address]};

endmodule