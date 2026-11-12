module rand_m100_100 (
input  wire clk,
input  wire rst_n,
output reg  signed [7:0] rand_out,
output reg  valid
);
reg  [15:0] lfsr;
wire        feedback = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];
wire [7:0]  sample   = lfsr[7:0];
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
lfsr <= 16'hACE1;
rand_out <= 8'sd0;
valid    <= 1'b0;
end else begin
lfsr <= {lfsr[14:0], feedback};
if (sample <= 8'd200) begin
rand_out <= $signed({1'b0, sample}) - 9'sd100;
valid <= 1'b1;
end else begin
valid    <= 1'b0;
end
end
end
endmodule
