module m61(din,s,y);
  input [2:0]s;
  input [5:0]din;
  output y;
  wire out1,out2;
  m41 m1(out1, din[0], din[1], din[2], din[3], s[0], s[1]);
  m41 m2(out2, din[4], din[5], 1'bx, 1'bx, s[0], s[1]);
  m21 m3(y, out1, out2, s[2]);
endmodule
  
module m21(Y, D0, D1, S);
  input D0, D1, S;
  output Y;
  assign Y=(S)?D1:D0;
endmodule
  
module m41 (out,a, b, c,  d,  s0, s1); 
  input a,b,c,d;
  input s0,s1;
  output out;
  assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 
endmodule
