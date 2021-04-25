`timescale 10ps / 1ps
module SR_sync_reset_tb;
// Inputs
reg clk ;
reg reset;
// Outputs
reg s_in;
wire s_out;
// Instantiate the Unit Under Test (UUT)
SR_sync_reset #(4) uut (
.clk(clk),
.reset(reset),
.s_in(s_in),
.s_out(s_out)
);

integer i, j;
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

$dumpfile("test.vcd");
$dumpvars(0,SR_sync_reset_tb);

s_in = 0; reset =1;
#2 s_in = 0 ; reset = 0;
#2 reset =1;
for(i =0; i<=10; i=i+1)
begin
#20 s_in = ~s_in;
end
#20 s_in =1;
#20 s_in = 1;
#20 s_in =0;
#20 s_in =1;
#20 s_in = 1;
#20 s_in =0;
#20 s_in =1;
#20 s_in = 1;
#20 s_in =0;
end

initial begin
$monitor("clk=%d s_in=%d,s_out=%d",clk,s_in, s_out);
end

endmodule
