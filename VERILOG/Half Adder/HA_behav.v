module halfaddbeh(sum,carry,a,b);
output sum,carry;
input a,b;
reg sum,carry;
always @(a,b);
sum = a ^ b;
carry = a&b;
endmodule
