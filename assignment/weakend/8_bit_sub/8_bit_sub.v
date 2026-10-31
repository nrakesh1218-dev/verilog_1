module subtractor_8bit (
    input [7:0] a,
    input [7:0] b,
    input bin,
    output [7:0] diff,
    output bout
);
    wire [8:0] borrow;
    assign borrow[0] = bin;
    
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : sub_loop
            assign diff[i] = a[i] ^ b[i] ^ borrow[i];
            assign borrow[i+1] = (~a[i] & b[i]) | (~(a[i] ^ b[i]) & borrow[i]);
        end
    endgenerate
    assign bout = borrow[8];
endmodule

