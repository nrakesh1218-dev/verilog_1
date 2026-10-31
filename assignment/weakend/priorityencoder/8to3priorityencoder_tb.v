module tb_priority_encoder_8to3;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;

    priority_encoder_8to3 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        in = 8'b00000000; #10;
        in = 8'b00000101; #10;
        in = 8'b01001000; #10;
        in = 8'b10000000; #10;
        $finish;
    end
endmodule
