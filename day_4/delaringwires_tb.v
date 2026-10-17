`timescale 1ns / 1ps

module tb_top_module;
    reg a, b, c, d;
    wire out, out_n;

    top_module uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out),
        .out_n(out_n)
    );

    initial begin
        $monitor("Time=%0t | a=%b b=%b c=%b d=%b -> out=%b out_n=%b", 
                 $time, a, b, c, d, out, out_n);

        a = 0; b = 0; c = 0; d = 0;
        #10;
        a = 1; b = 1; c = 0; d = 0;
        #10;
        a = 0; b = 0; c = 1; d = 1;
        #10;
        a = 1; b = 0; c = 0; d = 1;
        #10;
        $finish;
    end

endmodule
