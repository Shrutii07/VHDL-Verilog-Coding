module Half_Adder_tb;
// Inputs
reg a;
reg b;

// Outputs
wire cout;
wire sum;

// Instantiate the Unit Under Test (UUT)
HalfAdder HA_Tb (
.a(a),
.b(b),
.sum(sum),
.cout(cout)
);

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#100;

a = 1;
b = 0;
  
#100;

a = 0;
b = 1;
  
#100;

a = 1;
b = 1;

end
endmodule
