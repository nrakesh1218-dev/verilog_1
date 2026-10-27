module decoder_2to4 (
    input [1:0] in,
    input enable,
    output [3:0] out
);

    assign out = enable ? (4'b1 << in) : 4'b0000;

endmodule
