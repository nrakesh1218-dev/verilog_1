module demux_1to2 (
    input in,
    input sel,
    output [1:0] out
);

    assign out[0] = in & ~sel;
    assign out[1] = in & sel;

endmodule
