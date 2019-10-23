`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2018 01:57:40
// Design Name: 
// Module Name: solution_r1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module solution_r1(
output clk_div1,clk_div2,
	input clk,
    input rst
    );
    led_1 l1(clk_div1,clk,rst);
    led_2 l2(clk_div2,clk,rst);
endmodule
