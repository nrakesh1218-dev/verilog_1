
module diamond_tb;
reg clk, rst;  wire [3:0] n;
wire dir, done;
integer j;
diamond_gen dut(.clk(clk), .rst(rst), .n(n), .dir(dir), .done(done));
initial clk = 0;
always #5 clk = ~clk;
task print_row(input integer i);
begin
for (j = 0; j < 5 - i; j = j + 1)
$write(" ");
for (j = 1; j <= i; j = j + 1)
$write("%0d", j);
for (j = i - 1; j >= 1; j = j - 1)
$write("%0d", j);
$write("\n");
end
endtask
initial begin
rst = 1;
@(posedge clk);
@(negedge clk);
rst = 0;
while (!done) begin
print_row(n);
@(negedge clk);
end
$finish;
end
endmodule
