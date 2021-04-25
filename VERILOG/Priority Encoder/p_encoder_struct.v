module prior_otb_enco(DOUT, D);
 output [2:0] DOUT;
 input [7:0] din;
 wire din7_not, din6_not, din5_not,
din4_not, din2_not;
 wire wa0, wa1, wa2, wa3, wa4;;
 //instanitate gates
 not g0 (din7_not, din[7]),
 g1 (din6_not, din[6]),
 g2 (din5_not, din[5]),
 g3 (din4_not, din[4]),
 g4 (din2_not, din[2]);
 and g5 (wa0, din6_not, din4_not, din[3]),
 g6 (wa1, din5_not, din4_not, din[3]),
 g7 (wa2, din5_not, din4_not, din[2]),
 g8 (wa3, din6_not, din[5]),
 g9 (wa4, din6_not, din4_not,
din2_not, din[1]);
 or g11(dout[2], din[7], din[6], din[5],
din[4]),
 g12(dout[1], din[7], din[6], wa1, wa2),
 g13(dout[0], din[7], wa0, wa3, wa4),
 g14(V, din[0], din[1], din[2], din[3],
din[4], din[5], din[6], din[7]);
endmodule
