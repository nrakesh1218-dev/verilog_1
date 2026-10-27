module decoder_2to4_tb;
    reg [1:0] in;
    reg enable;
    wire [3:0] out;

    decoder_2to4 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
        enable = 0; in = 2'b00; #10;
        enable = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        enable = 0; in = 2'b00; #10;
        $finish;
    end
endmodule
