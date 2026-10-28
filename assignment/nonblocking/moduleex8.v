module swap_nonblocking (
input clk,
input [7:0] a_in,
input [7:0] b_in,
output reg [7:0] a_out,
output reg [7:0] b_out,
);
always@(posedge clk) begin
a_out <= b_in;
b_out <= a_in;
end
endmodule

