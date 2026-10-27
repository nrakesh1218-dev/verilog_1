module carry_save_adder_tb;
    reg [3:0] a, b, c;
    wire [3:0] sum, carry;

    carry_save_adder uut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("carry_save_adder.vcd");
        $dumpvars(0, carry_save_adder_tb);

        a = 4'b0000; b = 4'b0000; c = 4'b0000; #10;
        a = 4'b0101; b = 4'b0011; c = 4'b0001; #10;
        a = 4'b1111; b = 4'b1010; c = 4'b0101; #10;
        $finish;
    end
endmodule
