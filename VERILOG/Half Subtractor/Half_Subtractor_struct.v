module halfsubtstr(diff,borrow,a,b);

output diff,borrow; 
input a,b; 
xor(diff,a,b); 
and( borrow,~a,b); 
endmodule
