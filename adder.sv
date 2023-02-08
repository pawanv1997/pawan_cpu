module full_adder_16(inp1, inp2, cin, sum, cout);
  parameter N=16;
  input cin;
  input [N-1:0] inp1,inp2;
  wire [N:0]c;
  wire [N-1:0]sum1;
  output [N-1:0] sum;
output cout;
genvar i;
  generate
    for(i=0; i<=N-1; i++)begin
      assign c[0]=cin;
      full_adder fa0(.inp1(inp1[i]), .inp2(inp2[i]),.cin(c[i]), .sum(sum1[i]),.cout(c[i+1]));
  assign cout= c[N];
      assign sum=sum1;
    end
  endgenerate
endmodule

//////////////////////////////
//1bit Full Adder
/////////////////////////////
module full_adder(inp1,inp2,cin,sum, cout);
input inp1,inp2,cin;
output sum, cout;
  wire x,y,z;
  half_adder h1(.inp1(inp1), .inp2(inp2), .sum(x), .cout(y));
  half_adder h2(.inp1(x), .inp2(cin), .sum(sum), .cout(z));
or or_1(cout,z,y);
endmodule

///////////////////////////
// 1 bit Half Adder
//////////////////////////
module half_adder( inp1,inp2, sum, cout );
input inp1,inp2;
output sum, cout;
  xor xor_1 (sum,inp1,inp2);
  and and_1 (cout,inp1,inp2);
endmodule


