`timescale 1ns / 1ps

module bidirectional_shift_register_tb;

    reg clk;
    reg reset;
    reg dir;
    reg serial_in;
    wire [3:0] q;

    bidirectional_shift_register uut (
        .clk(clk), 
        .reset(reset), 
        .dir(dir), 
        .serial_in(serial_in), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("bidir_shift_reg_wave.vcd");
        $dumpvars(0, bidirectional_shift_register_tb);

        clk = 0;
        reset = 1;
        dir = 1;
        serial_in = 0;

        #12;
        reset = 0;

        #10 serial_in = 1; dir = 1;
        #10 serial_in = 0; dir = 1;
        #10 serial_in = 1; dir = 1;
        #10 serial_in = 1; dir = 1;
        
        #10 serial_in = 0; dir = 0;
        #10 serial_in = 1; dir = 0;
        #10 serial_in = 0; dir = 0;

        #30;
        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | Reset = %b | Dir = %b | Serial_In = %b | Q = %b", $time, reset, dir, serial_in, q);
    end

endmodule
