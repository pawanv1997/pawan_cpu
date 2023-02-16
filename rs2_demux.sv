module rs2_demux(op_code,rs2_in,inp2);
  parameter N=16;
  input [N-1:0]rs2_in;
  output reg [N-1:0]inp2;
  input [3:0]op_code;
  always @(*)begin
    case(op_code)
      4'b0000 : begin 
        inp2 = rs2_in;
      end
      4'b0001 : begin 
        inp2 = rs2_in;
      end
      4'b0010 : begin 
        inp2 = rs2_in;
      end
      4'b0011 : begin 
        inp2 = rs2_in; 
      end
     4'b0100 : begin
        inp2 = rs2_in;
      end
      default : begin 
        inp2 = 0 ;
      end
    endcase
  end

endmodule
  
