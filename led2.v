module led_2(
    output reg clk_div,
	input clk,
    input rst
    );
	localparam constantNumber = 30000000;
	localparam cc=28000000;
	reg [34:0] count;
 
always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 35'b0;
    else if (count == constantNumber - 1)
        count <= 35'b0;
    else
        count <= count + 1;
end
always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div <= 1'b0;
    else if(count==cc-1)
        clk_div=1'b1;
    else if (count == constantNumber - 1)
        clk_div <= 1'b0;
    else
        clk_div <= clk_div;
end

endmodule
