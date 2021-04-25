module  demux14str(in,d0,d1,d2,d3,s0,s1); 

output d0,d1,d2,d3; 
input in,s0,s1; 

and g1(d0,in,s0,s1);

and g2(d1,in,(~s0),s1); 

and g3(d2,in,s0,(~s1)); 

and g4(d3,in,(~s0),(~s1)); 
endmodule
