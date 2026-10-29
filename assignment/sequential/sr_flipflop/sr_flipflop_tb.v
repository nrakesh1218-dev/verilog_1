`timescale 1ns / 1ps

module sr_flipflop_tb;

    reg clk;
    reg rst_n;
    reg s;
    reg r;

    wire q;

    sr_flipflop uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .s(s), 
        .r(r), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        s = 0;
        r = 0;

        #15;
        rst_n = 1;

        s = 0; r = 0;
        #20;

        s = 1; r = 0;
        #20;

        s = 0; r = 0;
        #20;

        s = 0; r = 1;
        #20;

        s = 0; r = 0;
        #20;

        s = 1; r = 1;
        #20;

        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | rst_n = %b | s = %b | r = %b | q = %b", $time, rst_n, s, r, q);
    end

endmodule
