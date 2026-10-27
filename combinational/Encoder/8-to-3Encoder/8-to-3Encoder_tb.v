module priority_encoder_8to3_tb;
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
        in = 8'b00000001; #10;
        in = 8'b00001000; #10;
        in = 8'b10101010; #10; // Highest bit active is bit 7
        $finish;
    end
endmodule
