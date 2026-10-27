module encoder_4to2_tb;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;

    encoder_4to2 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        $finish;
    end
endmodule
