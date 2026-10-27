module bcd_adder_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    bcd_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("bcd_adder.vcd");
        $dumpvars(0, bcd_adder_tb);

        a = 4'b0010; b = 4'b0100; cin = 0; #10; 
        a = 4'b1000; b = 4'b0101; cin = 0; #10; 
        a = 4'b1001; b = 4'b1001; cin = 0; #10; 
        $finish;
    end
endmodule
