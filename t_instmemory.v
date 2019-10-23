module t_instmemory;
reg [31:0] pc;
wire [31:0] inst;
InstMemory instmem(pc,inst);
initial
fork
#50 pc=32'd2;
#60 pc=32'd8;
join 
endmodule