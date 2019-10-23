module Registerfile(
input [4:0] Ra,Rb,Rc,
input [31:0] Wd,
input WERF,clock,
output [31:0] Rd1,Rd2
) ;
reg [31:0] register[0:31];
assign Rd1=register[Ra];
assign Rd2=register[Rb];
always @(posedge clock)
 begin
 always @(*)
if(WERF)
   register[Rc]=Wd;
   end
 endmodule
 
