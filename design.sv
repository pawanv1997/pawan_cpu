module division(x0,x1,y0,y1,z0,z1,z2,z3);
  input x0,x1,y0,y1;
  output reg z0,z1,z2,z3;
  wire a1,a3,a4,b1;
  and a(a1,x0,y1);
  and b(z0,x0,y0);
  and c(a3,y0,x1);
  and d(a4,y1,x1);
  xor aa(z1,a1,a3);
  and bb(b1,a1,a3);
  xor c3(z2,b1,a4);
  and d3(z3,b1,a4);
endmodule
