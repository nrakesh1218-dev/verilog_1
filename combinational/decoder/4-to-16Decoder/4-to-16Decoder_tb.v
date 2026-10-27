module decoder_4to16_tb;
    reg [3:0] in;
    reg enable;
    wire [15:0] out;

    decoder_4to16 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
        enable = 0; in = 4'b0000; #10;
        enable = 1; 
        
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;
        
        enable = 0; in = 4'b0000; #10;
        $finish;
    end
endmodule
