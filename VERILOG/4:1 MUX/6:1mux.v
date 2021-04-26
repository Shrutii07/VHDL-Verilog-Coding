module m61(din,s,y);
  input [2:0]s;
  input [5:0]din;
  output y;
  wire out1,out2;
  m41 m1(out1, din[0],din[1],din[2],din[3],s[0],s[1]);
  m41 m2(out2, din[4],din[5],x,x,s[0],s[1]);
  m21 m3(y, out1,ou12, s[2]);
endmodule
  
  
  
  
module m21(Y, D0, D1, S);
output Y;
input D0, D1, S;
assign Y=(S)?D1:D0;
endmodule
  
module m41 ( output out,
              input a, 
              input b, 
              input c, 
              input d, 
              input s0, 
              input s1); 
 assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 
endmodule
