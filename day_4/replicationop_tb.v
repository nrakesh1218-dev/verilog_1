`timescale 1ns / 1ps

module tb_top_module();
    reg  [7:0]  tb_in;
    wire [31:0] tb_out;

    top_module uut (
        .in(tb_in),
        .out(tb_out)
    );

    initial begin
        tb_in = 8'h01;
        #10;
        
        tb_in = 8'h80;
        #10;
        
        tb_in = 8'h5A;
        #10;
        
        $finish;
    end

    initial begin
        $monitor("Time=%0t ns | in = 8'h%h | out = 32'h%h", $time, tb_in, tb_out);
    end

endmodule
