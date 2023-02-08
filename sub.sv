module a16bitsub(inp1,inp2,bin,sub,bo);
  parameter N=16;
  input [N-1:0]inp1,inp2;
  input bin;
  output reg [N-1:0]sub;
  output reg bo;
  wire [N:0]b;
  genvar i;
  generate
    assign b[0]=bin;
    for(i=0; i<=N-1; i++)begin
  fullsubtractor f0(.inp1(inp1[i]),.inp2(inp2[i]),.bin(b[i]),.sub(sub[i]),.bo(b[i+1]));
      
    end
    assign bo=b[N];
  endgenerate
endmodule
//full subtractor

module fullsubtractor(inp1,inp2,bin,sub,bo);
  input inp1,inp2,bin;
  output reg sub,bo;
  wire b,b1,sub1;
  Half_Subtractor h1(.inp1(inp1),.inp2(inp2),.bo(b),.sub(sub1));
  Half_Subtractor h2(.inp1(sub1),.inp2(bin),.bo(b1),.sub(sub));
  or last(bo,b1,b);
endmodule
//half subtarctor
module Half_Subtractor(input inp1, inp2,output reg sub, bo);
assign sub = inp1 ^ inp2;
assign bo = ~inp1 & inp2;
endmodule
