`timescale 1ns / 1ps

module tb_top_module;
    // Declare testbench signals
    reg in;
    wire out;

    // Instantiate the Unit Under Test (UUT)
    top_module uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Monitor signals
        $monitor("Time=%0t | in=%b -> out=%b", $time, in, out);

        // Apply test vectors
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        $finish;
    end

endmodule
