module fullsubdat(diff,borrow,a,b,c);
 
output diff,borrow;

input a,b,c;
assign diff = a^b^c; outputdiff,borrow;

assign borrow=(~a&b)|(~(a^b)&c); always@(a,b,)

endmodule
