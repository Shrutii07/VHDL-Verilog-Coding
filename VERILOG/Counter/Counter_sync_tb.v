`timescale 10ps / 1ps
module Counter_sync_tb;
// Inputs
reg clock ;
reg reset;
// Output
wire[3:0] out;
// Instantiate the Binary Counter
Counter_sync #(4) uut1 (
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

$dumpfile("test1.vcd");
$dumpvars(0,Counter_sync_tb);

reset = 0;
//reset =1;
//#2 reset = 0;
#20 reset =1;
end

initial begin
$monitor("clock=%d binary=%4b",clock,out);
end

endmodule
