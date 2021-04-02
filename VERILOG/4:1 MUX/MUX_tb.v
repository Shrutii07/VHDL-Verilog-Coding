`timescale 1ps/1ps
module Mux_tb;

wire out;
reg a;
reg b;
reg c;
reg d;
reg s0, s1;
wire y;
reg i0,i1,i2,i3;


Mux_struct tb_struct(.out(out), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
initial
begin

a=1'b0; b=1'b0; c=1'b0; d=1'b0;
s0=1'b0; s1=1'b0;
#500 $finish;

end

always #40 a=~a;
always #20 b=~b;
always #10 c=~c;
always #5 d=~d;
always #5 s0=~s0;
always #10 s1=~s1;

always@(a or b or c or d or s0 or s1)
$monitor("At time = %t, Output = %d", $time, out);

// for data flow
Mux_dataflow tb_df(.y(y), .s0(s0), .s1(s1),
.i0(i0), .i1(i1), .i2(i2), .i3(i3));
initial
begin

i0=1'b0; i1=1'b0; i2=1'b0; i3=1'b0;
s0=1'b0; s1=1'b0;
#500 $finish;

end

always #40 i0=~i0;
always #20 i1=~i2;
always #10 i2=~i2;
always #5 i3=~i3;
always #5 s0=~s0;
always #10 s1=~s1;

always@(i0 or i1 or i2 or i3 or s0 or s1)
$monitor("At time = %t, Output = %d", $time, out);

// for behav
reg s01,s11,i01,i11,i21,i31;
wire y1;
Mux_behav tb_behav(.y(y1), .s0(s01), .s1(s11),
.i0(i01), .i1(i11), .i2(i21), .i3(i31));
initial
begin

i01=1'b0; i11=1'b0; i21=1'b0; i31=1'b0;
s01=1'b0; s11=1'b0;
#500 $finish;

end

always #40 i01=~i01;
always #20 i11=~i11;
always #10 i21=~i21;
always #5 i31=~i31;
always #5 s01=~s01;
always #10 s11=~s11;

always@(i01 or i11 or i21 or i31 or s01 or s11)
$monitor("At time = %t, Output = %d", $time, y1);

endmodule;
