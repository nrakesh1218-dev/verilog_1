module half_adder_nblk (
    input  clk,
    input  a, b,
    output reg sum, carry
);
    always @(posedge clk) begin
        sum   <= a ^ b;
        carry <= a & b;
    end
endmodule
