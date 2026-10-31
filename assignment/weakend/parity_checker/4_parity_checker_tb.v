module tb_parity_checker_4bit;
    reg [3:0] data;
    reg parity_in;
    wire error;

    parity_checker_4bit uut (
        .data(data),
        .parity_in(parity_in),
        .error(error)
    );

    initial begin
        data = 4'b0110; parity_in = 1'b0; #10;
        data = 4'b0110; parity_in = 1'b1; #10;
        data = 4'b1111; parity_in = 1'b0; #10;
        data = 4'b1111; parity_in = 1'b1; #10;
        $finish;
    end
endmodule
