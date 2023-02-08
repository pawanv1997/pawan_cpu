module div(inp1,inp2,Res);

    
    parameter N = 16;
   
  input [N-1:0] inp1;
  input [N-1:0] inp2;
  output reg[N-1:0] Res=0;
  reg [N-1:0] a1,b1;
  reg [N:0] p1;   
    genvar i;

 generate
        a1 = inp1;
        b1 = inp2;
        p1= 0;
      for(i=0;i < N;i=i+1)    begin
        p1 = {p1[N-2:0],a1[N-1]};
        a1[N-1:1] = a1[N-2:0];
            p1 = p1-b1;
        if(p1[N-1] == 1)    begin
                a1[0] = 0;
                p1 = p1 + b1;   end
            else
                a1[0] = 1;
        end
        Res = a1;   
    endgenerate

endmodule
