module  demux14df(in,d0,d1,d2,d3,s0,s1); 

output d0,d1,d2,d3; 
input in,s0,s1; 

assign s0 = in & (~s0) & (~s1); 
assign d1= in & (~s0) & s1; 
assign d2= in & s0 & (~s1); 
assign d3= in & s0 & s1; 
endmodule
