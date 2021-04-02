module Mux_dataflow(
input i0,i1,i2,i3,s0,s1,
output y);

assign y= s1?(s0?i3:i2) : (s0?i1:i0);

endmodule
