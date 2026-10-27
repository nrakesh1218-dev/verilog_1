module carry_lookahead_adder_4bit_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    carry_lookahead_adder_4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("carry_lookahead_adder_4bit.vcd");
        $dumpvars(0, carry_lookahead_adder_4bit_tb);

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0110; b = 4'b0011; cin = 0; #10;
        a = 4'b1101; b = 4'b1011; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
        $finish;
    end
endmodule
