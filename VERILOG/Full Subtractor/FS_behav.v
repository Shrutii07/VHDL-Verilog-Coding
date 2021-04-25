module fullsubtbeh(diff,borrow,a,b,c);

output diff,borrow;

input a,b,c;

reg diff,borrow;
  always@(a,b,c)

borrow=(~a&b)|(~(a^b)&c);
diff = a^b^c;
endmodule
