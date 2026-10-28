module parity_generator_4bit (
    input  [3:0] A,
    output P
);

assign P = A[3] ^ A[2] ^ A[1] ^ A[0];

endmodule
