module comparator_4bit_conditional (
    input [3:0] a,
    input [3:0] b,
    output greater,
    output equal,
    output less
);

    assign greater = (a > b) ? 1'b1 : 1'b0;
    assign equal   = (a == b) ? 1'b1 : 1'b0;
    assign less    = (a < b) ? 1'b1 : 1'b0;

endmodule
