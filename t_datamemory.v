module t_datamemory;
reg [31:0] address,wd;
reg we,clock;
wire [31:0] rd;
Datamemory dm(address,wd,we,clock,rd);
initial begin
clock=0;
we=0;
wd=32'd0;
end
always #10 clock=~clock;
initial 
fork
#11 begin address=32'd100000; wd=32'd154869; we=1'b1; end
#31 begin address=32'd50; wd=32'd392544;  we=1'b1; end
#52 begin address=32'd24; wd=32'd456564; we=1'b0; end
#65 begin address=32'd50; wd=32'd456; we=1'b0; end
#95  begin address=32'd100000 ; wd=32'd456; we=1'b0; end
join
endmodule
