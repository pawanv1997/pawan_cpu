module top(op_code,rs1_in,rs2_in,cin,bin,result);
  input [3:0] op_code;
  input [15:0] rs1_in,rs2_in;
  output reg [15:0] result;
  wire [15:0]sum,sub,mulo,Res,inp1,inp2;
  input cin, bin;
  rs1_demux de1(.op_code(op_code),.rs1_in(rs1_in),.inp1(inp1));
  rs2_demux de2(.op_code(op_code),.rs2_in(rs2_in),.inp2(inp2));
  full_adder_16 ad1(.inp1(inp1), .inp2(inp2), .cin(cin),.sum(sum), .cout(cout));
  a16bitsub su1(.inp1(inp1),.inp2(inp2),.bin(bin),.sub(sub),.bo(bo));
  mul mu1(.inp1(inp1),.inp2(inp2),.mulo(mulo));
  div di1(.inp1(inp1),.inp2(inp2),.Res(Res));
  mux4x1_out ou1(.sum(sum),.mulo(mulo),.sub(sub),.Res(Res),.op_code(op_code),.result(result));
endmodule

`include "rs1_demux.sv"
`include "rs2_demux.sv"
`include "adder.sv"
`include "sub.sv"
`include "mul.sv"
`include "div.sv"
`include "mux4x1_result.sv"

