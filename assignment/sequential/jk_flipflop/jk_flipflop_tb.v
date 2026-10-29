`timescale 1ns / 1ps

module jk_flipflop_tb;

    reg clk;
    reg rst_n;
    reg j;
    reg k;

    wire q;

    jk_flipflop uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .j(j), 
        .k(k), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        j = 0;
        k = 0;

        #15;
        rst_n = 1;

        j = 0; k = 0;
        #20;

        j = 1; k = 0;
        #20;

        j = 0; k = 0;
        #20;

        j = 0; k = 1;
        #20;

        j = 0; k = 0;
        #20;

        j = 1; k = 1;
        #40;

        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | rst_n = %b | j = %b | k = %b | q = %b", $time, rst_n, j, k, q);
    end

endmodule
