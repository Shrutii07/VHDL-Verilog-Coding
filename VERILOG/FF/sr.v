module sr_df (s, r, q, q_n); 
input s, r;
output q, q_n; 
assign q_n = ~(s | q); 
assign q = ~(r | q_n); 
endmodule
