module full_add #(parameter N=16)
  (
    input [N-1:0] inp1,
    input [N-1:0] inp2,
    output [N-1:0] mulo
);
  
  
  assign  mulo = inp1+inp2;
  
endmodule

module mul#(parameter N=16)( 
  input [N-1:0] inp1,
  input [N-1:0] inp2,
  output [2*N-1:0] mulo
);
  
  wire [N:0][N-1:0] temp1;// [N];
  wire [N:0][2*N-1:0] temp2;// [N];
  
  wire [N:0][2*N-1:0] temp3;// [N];
  
  //always_comb begin
  assign	temp1[0] = inp2[0] ? inp1 : 0;//& {N{inp2[0]}};
  assign	temp2[0] = temp1[0] << 0;
  assign	temp3[0] = temp2[0];
  //end
  
  genvar i;
  
  generate
    for(i=1; i<=N-1; i++)begin
      assign temp1[i] = inp2[i] ? inp1 : 0;
      assign temp2[i] = temp1[i] << i;
      full_add#(2*N) fa(
        .inp1(temp3[i-1]),
        .inp2(temp2[i]),
        .mulo(temp3[i])
      );
    end
  endgenerate

  assign mulo = temp3[N-1];
  
endmodule
