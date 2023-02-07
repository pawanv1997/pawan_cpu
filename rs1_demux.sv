module rs1_demux(op_code,rs1_in,inp1);
  input [15:0]rs1_in;
  output reg [15:0]inp1;
  input [3:0]op_code;
  always@(op_code)begin
    case(op_code)
      4'b0000 : inp1 = rs1_in;
      4'b0001 : inp1 = rs1_in;
      4'b0010 : inp1 = rs1_in;
      4'b0011 : inp1 = rs1_in;
      default : begin 
        inp1= 0 ;
      end
    endcase
  end

endmodule

