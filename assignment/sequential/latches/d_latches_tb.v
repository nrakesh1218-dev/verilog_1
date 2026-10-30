`timescale 1ns / 1ps

module d_latch_tb;

    reg enable;
    reg reset;
    reg d;
    wire q;

    d_latch uut (
        .enable(enable), 
        .reset(reset), 
        .d(d), 
        .q(q)
    );

    initial begin
        $dumpfile("d_latch_wave.vcd");
        $dumpvars(0, d_latch_tb);

        enable = 0;
        reset = 1;
        d = 0;

        #10;
        reset = 0;

        #10 d = 1;
        #10 d = 0;

        #10 enable = 1;
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;

        #10 enable = 0;
        #10 d = 0;
        #10 d = 1;

        #20;
        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | Reset = %b | Enable = %b | D = %b | Q = %b", $time, reset, enable, d, q);
    end

endmodule
