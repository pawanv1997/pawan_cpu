module div(inp1,inp2,Res);

    //the size of input and output ports of the division module is generic.
    parameter N = 16;
    //input and output ports.
  input [N-1:0] inp1;
  input [N-1:0] inp2;
  output reg[N-1:0] Res=0;
    //internal variables    
 // reg [N-1:0] Res = 0;
  reg [N-1:0] a1,b1;
  reg [N:0] p1;   
    integer i;

  always@ (inp1 or inp2)
    begin
        //initialize the variables.
        a1 = inp1;
        b1 = inp2;
        p1= 0;
      for(i=0;i < N;i=i+1)    begin //start the for loop
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
    end 

endmodule

