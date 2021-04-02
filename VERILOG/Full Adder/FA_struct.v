module FA_struct
  (  
 input A, B, Cin,  
 output S, Cout);  
  
wire a1, a2, a3;  
xor u1(a1,A,B); 
and u2(a2,A,B); 
and u3(a3,a1,Cin); 
or u4(Cout,a2,a3); 
xor u5(S,a1,Cin);  
endmodule 
