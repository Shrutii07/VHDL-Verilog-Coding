module decoder38str(z0,z1,z2,z3,z4,z5,z6,z7,a0,a1,a2);

output z0,z1,z2,z3,z4,z5,z6,z7;
input a0,a1,a2;
wire s0,s1,s3;
  
not (s0,a0);
not (s1,a1); 
not (s2,a2); 
and (z0,s0,s1,s2); 
and (z1,a0,s1,s2); 
and (z2,s0,a1,s2); 
and (z3,a0,a1,s2); 
and (z4,s0,s1,a2); 
and (z5,a0,s1,a2);
and (z6,s0,a1,a2); 
and (z7,a0,a1,a2);
  
endmodule
