module t_df(q,q,1,t,c);
output q,q1;
input t,c;
wire w1,w2; 
 assign w1 = t&c&q;
 assign w2 = t&c&q1;
 assign q = ~(w1|q1); 
 assign q1 = ~(w2|q); 
endmodule
