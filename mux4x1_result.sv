module mux4x1_out(sum,mulo,sub,Res,comp,op_code,result);
  parameter N=16;
  input [N-1:0]sum,mulo,sub,Res;
  input comp;
  input [3:0]op_code;
  output reg [N-1:0]result;
  always@(*)begin
    case(op_code)
      4'b0000 : result=sum;
      4'b0001 : result=sub;
      4'b0010 : result=mulo;
      4'b0011 : result=Res;
      4'b0100 : result=comp;
      default : begin
        result =0;
      end
    endcase
  end
endmodule
