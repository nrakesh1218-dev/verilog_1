module clk_div_100hz (
input  wire clk_50m,
input  wire rst_n,
output reg  clk_100hz
);
localparam integer HALF_PERIOD = 250000;
reg [17:0] cnt;
always @(posedge clk_50m) begin
if (!rst_n) begin
cnt<= 18'd0;
clk_100hz <= 1'b0;
end else if (cnt == HALF_PERIOD - 1) begin
cnt<= 18'd0;
clk_100hz <= ~clk_100hz;
end else begin
cnt <= cnt + 1'b1;
end
end
endmodule
