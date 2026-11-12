`timescale 1ns/1ps
module tb;
parameter N = 4;
reg  [N-1:0] a, b;
reg  cin;
wire [N-1:0] sum;
wire cout;
integer i, j, errors;
ripple_carry_adder #(.N(N)) dut (a, b, cin, sum, cout);
initial begin
errors = 0;
for (i = 0; i < 2**N; i = i + 1)
for (j = 0; j < 2**N; j = j + 1) begin
a = i; b = j; cin = 0; #1;
if ({cout, sum} !== a + b) errors = errors + 1;
cin = 1; #1;
if ({cout, sum} !== a + b + 1) errors = errors + 1;
end
if (errors == 0) $display("PASS");
else            
$display("FAIL: %0d errors", errors);
$finish;
end
endmodule
