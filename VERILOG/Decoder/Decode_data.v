module decoder38df(z,a0,a1,a2);

output [7:0] z;

input a0,a1,a2;

assign z[0] = ~a0 & ~a1 & ~a2; 
assign z[1] = ~a0& ~a1& a2;
assign z[2] = ~a0& a1& ~a2;
assign z[3] = ~a0& a1& a2; 
assign z[4] = a0& ~a1& ~a2;

assign z[5] = a0& ~a1& a2;
assign z[6] = a0& a1& ~a2; 
assign z[7] = a0& a1& a2; 

endmodule
