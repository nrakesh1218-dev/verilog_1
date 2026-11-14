module tb;

reg clk,we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;

ram uut(clk,we,addr,din,dout);

always #5 clk=~clk;

initial begin
$dumpfile("ram.vcd");
$dumpvars(0,tb);
$monitor("we=%b addr=%d din=%d dout=%d",we,addr,din,dout);

clk=0;
we=1;

addr=0; din=25; #10;
addr=1; din=50; #10;
addr=2; din=75; #10;

we=0;

addr=0; #10;
addr=1; #10;
addr=2; #10;

$finish;
end

endmodule
