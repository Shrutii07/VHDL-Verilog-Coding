module decoder38beh(sel, out1);

input [2:0] sel;

output reg [7:0] out1;
always @(sel,out1)
case (sel)

3’b000 : out1 = 8’b00000001;
3’b001 : out1 = 8’b00000010;
3’b010 : out1 = 8’b00000100;
3’b011 : out1 = 8’b00001000;
3’b100 : out1 = 8’b00010000;
3’b101 : out1 = 8’b00100000;
3’b110 : out1 = 8’b01000000;
default : out1 = 8’b10000000;
  
endcase
end
endmodule
