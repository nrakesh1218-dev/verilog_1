`timescale 1ns / 1ps

module simple_counter_tb;

    reg clk;
    reg rst_n;
    wire [3:0] q;

    simple_counter uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;

        #15;
        rst_n = 1;

        #100;
        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | rst_n = %b | q = %b", $time, rst_n, q);
    end

endmodule
