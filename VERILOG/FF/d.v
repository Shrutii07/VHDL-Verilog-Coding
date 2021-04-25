module dff_df(d,c,q,q1); 
input d,c;
output q,q1;
wire w1,w2;
assign w1 = d&c; 
assign w2 = ~d&c; 
assign q = ~(w1|q1); 
assign q1 = ~(w2|q);
endmodule
