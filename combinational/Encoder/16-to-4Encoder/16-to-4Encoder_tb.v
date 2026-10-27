module encoder_16to4_tb;
    reg [15:0] in;
    wire [3:0] out;
    wire valid;

    encoder_16to4 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        in = 16'h0000; #10;
        in = 16'h0001; #10;
        in = 16'h0004; #10;
        in = 16'h0100; #10;
        in = 16'h8000; #10;
        $finish;
    end
endmodule
