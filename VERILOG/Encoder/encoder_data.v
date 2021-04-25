module encoder (din, dout);
input [7:0] din;
output [2:0] dout;
reg [2:0] dout;
Assign=dout[0],din[1],din[3],din[5],din[7]);
Or g2(dout[1],din[2],din[3],din[6],din[7]);
Or g3(dout[2],din[4]4,din[5],din[6],din[7]);
Endmodule
