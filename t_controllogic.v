module t_controllogic ;
reg [5:0] opcode;
wire [14:0] oprt;
controllogic cl(opcode,oprt);
initial
fork
opcode=6'b100100;
#5 opcode=6'b011000;
join
endmodule