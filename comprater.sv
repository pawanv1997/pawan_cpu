module comp(inp1,inp2,a_less,a_greater,equal);
  //parameter N=16;
  input inp1,inp2;
  output reg a_less,a_greater,equal;
  wire t1,t2;
  
  not n1(t1,inp2);
  and a1(a_greater,t1,inp1);
  xnor x1(equal,inp1,inp2);
  not n2(t2,inp1);
  and a2(a_less,t2,inp2);
endmodule

module comp_4_bit(inp1,inp2,a_less,a_greater,equal);
  input [3:0]inp1,inp2;
  output reg a_less,a_greater,equal;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6;
  
  comp c1(.inp1(inp1[0]),.inp2(inp2[0]),.a_less(t1),.a_greater(t2),.equal(t3));
  comp c2(.inp1(inp1[1]),.inp2(inp2[1]),.a_less(t4),.a_greater(t5),.equal(t6));
  comp c3(.inp1(inp1[2]),.inp2(inp2[2]),.a_less(t7),.a_greater(t8),.equal(t9));
  comp c4(.inp1(inp1[3]),.inp2(inp2[3]),.a_less(t10),.a_greater(t11),.equal(t12));
  
  //assign y1= t2 & t6 & t9 & t12; 
  and b1(y1,t2,t6,t9,t12);
 // assign y2= t1 & t6 & t9 & t12; 
  and b2(y2,t1,t6,t9,t12);
  //assign y3= t5 & t9 & t12;
  and b3(y3,t5,t9,t12);
  //assign y4= t4 & t9 & t12;
  and b4(y4,t4,t9,t12);
  //assign y5= t8 & t12;
  and b5(y5,t8,t12);
  //assign y6= t7 & t12;
  and b6(y6,t7,t12);
  
 // assign = 
  
 // assign equal = t3 & t6 & t9 & t12;
  and b7(equal,t3,t6,t9,t12);
  //assign a_greater= y1 | y3 | y5 |t11;
  or b8(a_greater,y1,y3,y5,t11);
 // assign a_less = y2 | y4 | y6| t10;
  or b9(a_less,y2,y4,y6,t10);
  
endmodule
 
module comp_16_bit(inp1,inp2,a_less,a_greater,equal);
  input [15:0]inp1,inp2;
  output reg a_less,a_greater,equal;
  wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;
  wire y1,y2,y3,y4,y5,y6;
  
  comp_4_bit c1(.inp1(inp1[3:0]),.inp2(inp2[3:0]),.a_less(t1),.a_greater(t2),.equal(t3));
  comp_4_bit c2(.inp1(inp1[7:4]),.inp2(inp2[7:4]),.a_less(t4),.a_greater(t5),.equal(t6));
  comp_4_bit c3(.inp1(inp1[11:8]),.inp2(inp2[11:8]),.a_less(t7),.a_greater(t8),.equal(t9));
  comp_4_bit c4(.inp1(inp1[15:12]),.inp2(inp2[15:12]),.a_less(t10),.a_greater(t11),.equal(t12));
  
  
  //assign y1= t2 & t6 & t9 & t12; 
  and b1(y1,t2,t6,t9,t12);
 // assign y2= t1 & t6 & t9 & t12; 
  and b2(y2,t1,t6,t9,t12);
  //assign y3= t5 & t9 & t12;
  and b3(y3,t5,t9,t12);
  //assign y4= t4 & t9 & t12;
  and b4(y4,t4,t9,t12);
  //assign y5= t8 & t12;
  and b5(y5,t8,t12);
  //assign y6= t7 & t12;
  and b6(y6,t7,t12);
  
 // assign = 
  
 // assign equal = t3 & t6 & t9 & t12;
  and b7(equal,t3,t6,t9,t12);
  //assign a_greater= y1 | y3 | y5 |t11;
  or b8(a_greater,y1,y3,y5,t11);
 // assign a_less = y2 | y4 | y6| t10;
  or b9(a_less,y2,y4,y6,t10);
  
endmodule
 
