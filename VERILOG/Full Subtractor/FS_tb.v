`timescale 1ns / 1ps

module fs_tb;
 reg a, b, bin;
 wire d, bout; 
 full_subtractor (.a(a), .b(b), .c(bin), .diff(d), .borrow(bout));
 initial
 begin
   $dumpfile("xyz.vcd");
   $dumpvars;
   a=0; 
   b=0; 
   bin=0;
   #100 $finish;
 end

always #40 a=~a;
always #20 b=~b;
always #10 bin=~bin;
always @(a or b or bin)

   $monitor("At TIME(in ns)=%t, A=%d B=%d Bin=%d D = %d Bout = %d", $time, a, b, bin, d, bout);

endmodule
