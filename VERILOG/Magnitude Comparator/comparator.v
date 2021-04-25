module comparator(a_in, b_in, L_op,g_op,e_op);

input [3:0] a_in;
input [3:0] b_in;
output L_op;
output g_op;
output e_op;
reg L_op,g_op,e_op;
always @ (a_in,b_in) begin
if (a_in < b_in)
L_op=1'b1;
else
L_op=1'b0;
if (a_in > b_in)
g_op=1'b1;
else
g_op=1'b0;
if (a_in == b_in)
e_op=1'b1;
else
e_op=1'b0;
end
endmodule
