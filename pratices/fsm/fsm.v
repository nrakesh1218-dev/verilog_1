module ram(clk,we,addr,din,dout);

input clk,we;
input [3:0] addr;
input [7:0] din;
output reg [7:0] dout;

reg [7:0] mem[0:15];

always @(posedge clk)
begin
    if(we)
        mem[addr] <= din;
    else
        dout <= mem[addr];
end

endmodule
