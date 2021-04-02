module FA_behav(
input A, B, Cin,
output reg S, Cout
);

always @(*)
begin
S = A^B^Cin;
Cout = (A&B)|(B&Cin)|(A&Cin);
end
endmodule
