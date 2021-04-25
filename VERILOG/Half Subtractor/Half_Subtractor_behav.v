module halfsubtbeh(diff,borrow,a,b);
output diff,borrow;
input a,b;
reg diff,borrow;
always @(a,b)
diff = a ^ b;
borrow=(~a&b);
endmodule
