module regfile(input clk,
   input [3:0] rs1,
   input [3:0] rs2,
   input [3:0] rd,
   input [15:0] wdata,
   input wen,
   output reg [15:0] rdata1,
   output reg [15:0] rdata2);

reg [15:0] regfile [0:15];

   always @(posedge clk) begin
      if (wen) begin
         regfile[rd] <= wdata;
      end
   end

   assign rdata1 = regfile[rs1];
   assign rdata2 = regfile[rs2];

endmodule
