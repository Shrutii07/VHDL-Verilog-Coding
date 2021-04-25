module Half_Subtractor_tb;
// Inputs
reg a;
reg b;

// Outputs
wire difference;
wire borrow;

// Instantiate the Unit Under Test (UUT)
HalfSubstractor uut (
.a(a),
.b(b),
.difference(difference),
.borrow(borrow)
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
