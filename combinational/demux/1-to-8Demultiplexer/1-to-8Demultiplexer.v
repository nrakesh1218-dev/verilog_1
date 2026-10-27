module demux_1to8 (
    input in,
    input [2:0] sel,
    output reg [7:0] out
);

    always @(*) begin
        out = 8'b00000000;
        out[sel] = in;
    end

endmodule
