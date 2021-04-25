module prio_enco_8x3(dout, din);
 output [2:0] dout;
 input [7:0] din ;
assign dout = (din[7] ==1'b1 ) ? 3'b111:
 (din[6] ==1'b1 ) ? 3'b110:
 (din[5] ==1'b1 ) ? 3'b101:
 (din[4] ==1'b1) ? 3'b100:
 (din[3] ==1'b1) ? 3'b011:
 (din[2] ==1'b1) ? 3'b010:
 (din[1] ==1'b1) ? 3'b001:
 (din[0] ==1'b1) ? 3'b000: 3'bxxx;
endmodule
