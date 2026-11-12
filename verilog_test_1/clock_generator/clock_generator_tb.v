`timescale 1ns/1ps
module tb;
reg clk = 0, rst_n = 0;
wire clk_100hz;
clk_div_100hz dut (.clk_50m(clk), .rst_n(rst_n), .clk_100hz(clk_100hz));
always #10 clk = ~clk;
initial begin
#100 rst_n = 1;
#25_000_000 
$finish;
end
initial $monitor("%t clk_100hz=%b", $time, clk_100hz);
endmodule
