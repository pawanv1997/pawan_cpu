`include"design.sv"
module tb;
  reg [15:0] rs1_in,rs2_in;
  reg [3:0] op_code;
  reg cin,bin;
  wire [15:0]result;
  top t1(.op_code(op_code),.rs1_in(rs1_in),.cin(cin),.bin(bin),.rs2_in(rs2_in),.result(result));
  initial begin
    rs1_in=16'b110;
    rs2_in=16'b100000000000001;
    op_code=4'b10;
    cin=0;
    bin=0;
    $monitor("rs1_in=%0d rs2_in=%0d  op_code=%0p result=%0p",rs1_in,rs2_in,op_code,result);
  end
endmodule
