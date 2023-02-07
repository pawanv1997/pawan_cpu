module rs2_mux16x1(rs2,rs2_regf,rs2_out);
  input [3:0]rs2;
  input [15:0]rs2_regf;
  output reg [15:0]rs2_out;
  assign rs2_out=rs2_regf[rs2];
endmodule
