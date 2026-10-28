module gray_to_binary_gate (
    input [3:0] gray,
    output [3:0] bin
);
    xor g3 (bin[3], gray[3]);
    xor g2 (bin[2], bin[3], gray[2]);
    xor g1 (bin[1], bin[2], gray[1]);
    xor g0 (bin[0], bin[1], gray[0]);
endmodule
