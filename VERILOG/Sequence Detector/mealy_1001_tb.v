`timescale 10ps / 1ps
module mealy_tb;
// Inputs
reg clk ;
reg reset;
reg d_in;
// Outputs
wire y;
// Instantiate the Unit Under Test (UUT)
SequenceDetectorMealy uut (
.clk(clk),
.reset(reset),
.din(d_in),
.y(y)
);

integer i;
initial
begin

clk = 0;
for(i =0; i<=40; i=i+1)
begin
#10 clk = ~clk;
end
end

initial
begin
d_in = 0; reset =1;
#2 d_in = 1;reset = 0;
#2 reset =0;
#20 d_in = 1;
#20 d_in = 1;
#20 d_in = 0;
#20 d_in = 1;
#20 d_in = 0;
#20 d_in = 0;
#20 d_in = 1;
#20 d_in = 1;
#20 d_in =0;
end

initial begin
$monitor("clk=%d d_in=%d,y=%d",clk,d_in, y);
end

endmodule
