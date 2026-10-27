module demux_1to16 (
    input in,
    input [3:0] sel,
    output reg [15:0] out
);

    always @(*) begin
        out = 16'h0000;
        out[sel] = in;
    end

endmodule
