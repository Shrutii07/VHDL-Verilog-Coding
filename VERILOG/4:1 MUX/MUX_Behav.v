module Mux_behav(
input i0,i1,i2,i3,s0,s1,
output reg y);

always @(i0 or i1 or i2 or i3 or s0, s1)
begin
if(s1 & s0)
y<=i3;
else if(s1 & (~(s0)))
y<=i2;
else if(~(s1) & s0)
y<=i1;
else
y<=i0;
end
endmodule
