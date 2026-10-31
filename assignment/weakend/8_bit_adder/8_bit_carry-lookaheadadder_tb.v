module tb_carry_lookahead_adder_8bit;
    reg [7:0] a;
    reg [7:0] b;
    reg cin;
    wire [7:0] sum;
    wire cout;

    carry_lookahead_adder_8bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 8'd0; b = 8'd0; cin = 0; #10;
        a = 8'd123; b = 8'd45; cin = 0; #10;
        a = 8'd255; b = 8'd1; cin = 0; #10;
        a = 8'd100; b = 8'd200; cin = 1; #10;
        $finish;
    end
endmodule
