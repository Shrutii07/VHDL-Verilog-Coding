module Counter_sync #(parameter N=4) (
input clock,
input reset,
output reg [3:0] out
);

always @(posedge clock)
begin
if (!reset)
out <= 0;
else
out <= out+1;
end
endmodule
