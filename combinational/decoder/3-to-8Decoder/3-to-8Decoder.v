module decoder_3to8 (
    input [2:0] in,
    input enable,
    output [7:0] out
);

    assign out = enable ? (8'b1 << in) : 8'b00000000;

endmodule
