`timescale 10ps / 1ps
module Counter_async_tb;
// Inputs
reg clock ;
reg reset;
// Output
wire[3:0] out;
// Instantiate the Binary Counter
Counter_async #(4) uut (
.clock(clock),
.reset(reset),
.out(out)
);

integer i;
initial
begin

clock = 0;
for(i =0; i<=40; i=i+1)
begin
#10 clock = ~clock;
end
end

initial
begin

$dumpfile("test.vcd");
$dumpvars(0,Counter_async_tb);

reset =1;
#2 reset = 0;
#2 reset =1;
end

initial begin
$monitor("clock=%d binary=%4b",clock,out);
end

endmodule
