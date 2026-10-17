`timescale 1ns / 1ps

module tb_top_module();
    reg  [15:0] tb_in;
    wire [7:0]  tb_out_hi;
    wire [7:0]  tb_out_lo;
    wire [15:0] tb_out_contra;

    top_module uut (
        .in(tb_in),
        .out_hi(tb_out_hi),
        .out_lo(tb_out_lo),
        .out_contra(tb_out_contra)
    );

    initial begin
        tb_in = 16'h1234;
        #10;
        
        tb_in = 16'hABCD;
        #10;
        
        tb_in = 16'h5678;
        #10;
        
        $finish;
    end

    initial begin
        $monitor("Time=%0t ns | in = 16'h%h | out_hi = 8'h%h | out_lo = 8'h%h | out_contra = 16'h%h", 
                 $time, tb_in, tb_out_hi, tb_out_lo, tb_out_contra);
    end

endmodule
