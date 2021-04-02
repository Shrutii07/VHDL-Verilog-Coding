`timescale 100ps/ 10ps 
module FA_behav_tb(); 
reg A,B,Cin; 
wire S,Cout;  
FA_behav tb( 
 .A(A), 
 .B(B), 
 .Cin(Cin), 
 .S(S), 
 .Cout(Cout)  
 );
  
 initial 
 begin 
$monitor($time, "A=%b, B=%b, Cin=%b, S=%b, Cout=%b \n", A,B,Cin,S,Cout); end 
initial begin 
 A = 0; 
 B = 0; 
 Cin = 0; 
 #5; 
 A = 0; 
 B = 0; 
 Cin = 1; 
 #5;  
 A = 0; 
 B = 1; 
 Cin = 0; 
 #5; 
 A = 0; 
 B = 1; 
 Cin = 1; 
 #5; 
 A = 1; 
 B = 0; 
 Cin = 0; 
 #5; 
 A = 1; 
 B = 0; 
 Cin = 1; 
 #5; 
 A = 1;
 B = 1; 
 Cin = 0; 
 #5;  
 A = 1; 
 B = 1; 
 Cin = 1; 
 #5;  
 end 
  
endmodule 
