module tb_parity_generator_4bit;
    reg [3:0] data;
    wire parity;

    parity_generator_4bit uut (
        .data(data),
        .parity(parity)
    );

    initial begin
        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0110; #10;
        data = 4'b1111; #10;
        $finish;
    end
endmodule
