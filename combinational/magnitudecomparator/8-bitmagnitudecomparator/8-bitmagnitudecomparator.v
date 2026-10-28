module comparator_8bit_conditional (
    input [7:0] a,
    input [7:0] b,
    output greater,
    output equal,
    output less
);

    assign greater = (a > b) ? 1'b1 : 1'b0;
    assign equal   = (a == b) ? 1'b1 : 1'b0;
    assign less    = (a < b) ? 1'b1 : 1'b0;

endmodule
