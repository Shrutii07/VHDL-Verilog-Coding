module fullsubtstruct(diff,borrow,a,b,c); 

output diff,borrow; 

input a,b,c; 
assign diff = a^b^c; ;
wire a0,q,r,s,t;

not(a0,a);
xor(x,a,b);
xor(diff,x,c);
and(y,a0,b);
and(z,~x,c);
or(borrow,y,z);
  
endmodule
