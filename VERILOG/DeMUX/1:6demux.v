
module D16(y,din,s);
  input din;
  input [2:0] s;
  output [5:0] y;
  wire out1,out2;
  D12 m1(out1,out2,din,s[2]);
  D41 m2(y[0],y[1],y[2],y[3],out1,s[0],s[1]);
  D41 m3(y[4],y[5],1'bx,1'bx,out2,s[0],s[1]);
endmodule

module  D14(d0,d1,d2,d3,in,s0,s1); 
output d0,d1,d2,d3; 
input in,s0,s1; 
assign d0 = in & (~s0) & (~s1); 
assign d1= in & (~s0) & s1; 
assign d2= in & s0 & (~s1); 
assign d3= in & s0 & s1; 
endmodule

module D12( y0, y1, d,s );
    input d,s;
    output y0,y1;
    assign y0 = ~s & d;
    assign y1 = s & d;

endmodule
