module encoder (din, dout);
input [7:0] din;
output [2:0] dout;
reg [2:0] dout;
always @(din)
begin
if (din ==8'b00000001) dout=3'b000;
else if (din==8'b00000010) dout=3'b001;
else if (din==8'b00000100) dout=3'b010;
else if (din==8'b00001000) dout=3'b011;
else if (din==8'b00010000) dout=3'b100;
else if (din ==8'b00100000) dout=3'b101;
else if (din==8'b01000000) dout=3'b110;
else if (din==8'b10000000) dout=3'b111;
else dout=3'bX;
end
endmodule
