`timescale 1ns / 1ps

module t_processor();
reg clock;
wire [31:0] out;
 processor p(clock,out);
 always #5 clock=~clock;
 initial 
 clock=1'b0;
 
endmodule
