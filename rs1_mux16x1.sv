module rs1_mux16x1(rs1,rs1_regf,rs1_out);
  input [3:0]rs1;
  input [15:0]rs1_regf;
  output reg [15:0]rs1_out;
  assign rs1_out=rs1_regf[rs1];
endmodule
