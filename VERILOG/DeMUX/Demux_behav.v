module demux14beh( din,sel,dout ); 
output [3:0] dout ;
reg [3:0] dout ;

wire din ;
 input [1:0] sel ;
wire [1:0] sel ;
always @ (din or sel) begin
case (sel)
0 : dout = {din,3'b000};
1 : dout = {1'b0,din,2'b00};
2 : dout = {2'b00,din,1'b0};

default : dout = {3'b000,din};
endcase
end
endmodule
