`timescale 1ns / 1ps

module universal_shift_register_tb;

    reg clk;
    reg reset;
    reg [1:0] ctrl;
    reg serial_in_left;
    reg serial_in_right;
    reg [3:0] parallel_in;
    wire [3:0] q;

    universal_shift_register uut (
        .clk(clk), 
        .reset(reset), 
        .ctrl(ctrl), 
        .serial_in_left(serial_in_left), 
        .serial_in_right(serial_in_right), 
        .parallel_in(parallel_in), 
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("univ_shift_reg_wave.vcd");
        $dumpvars(0, universal_shift_register_tb);

        clk = 0;
        reset = 1;
        ctrl = 2'b00;
        serial_in_left = 0;
        serial_in_right = 0;
        parallel_in = 4'b0000;

        #12;
        reset = 0;

        #10 ctrl = 2'b11; parallel_in = 4'b1010; // Parallel load
        #10 ctrl = 2'b01; serial_in_left = 1;   // Shift right
        #10 ctrl = 2'b10; serial_in_right = 1;  // Shift left
        #10 ctrl = 2'b00;                       // Hold
        #10 ctrl = 2'b01; serial_in_left = 0;   // Shift right

        #20;
        $finish;
    end

    initial begin
        $monitor("Time = %0t ns | Reset = %b | Ctrl = %b | Q = %b", $time, reset, ctrl, q);
    end

endmodule
