`timescale 1ns / 1ps

module t_flipflop_tb;

    reg clk;
    reg rst_n;
    reg t;

    wire q;

    t_flipflop uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .t(t), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        t = 0;

        #15;
        rst_n = 1;

        t = 0;
        #20;

        t = 1;
        #40;

        t = 0;
        #20;

        t = 1;
        #40;

        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | rst_n = %b | t = %b | q = %b", $time, rst_n, t, q);
    end

endmodule
