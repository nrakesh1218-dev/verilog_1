module majority_voter (
    input [4:0] in,
    output majority
);
    wire [2:0] sum;
    assign sum = in[0] + in[1] + in[2] + in[3] + in[4];
    assign majority = (sum >= 3);
endmodule
