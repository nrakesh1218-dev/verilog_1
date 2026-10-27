module decoder_4to16 (
    input [3:0] in,
    input enable,
    output [15:0] out
);

    assign out = enable ? (16'b1 << in) : 16'h0000;

endmodule
