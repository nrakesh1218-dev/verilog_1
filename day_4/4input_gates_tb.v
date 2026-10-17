`timescale 1ns / 1ps

module tb_top_module();
    reg  [3:0] tb_in;
    wire       tb_out_and;
    wire       tb_out_or;
    wire       tb_out_xor;

    top_module uut (
        .in(tb_in),
        .out_and(tb_out_and),
        .out_or(tb_out_or),
        .out_xor(tb_out_xor)
    );

    initial begin
        tb_in = 4'b0000;
        #10;
        
        tb_in = 4'b1010;
        #10;
        
        tb_in = 4'b1111;
        #10;
        
        tb_in = 4'b0110;
        #10;
        
        $finish;
    end

    initial begin
        $monitor("Time=%0t ns | in = 4'b%b | out_and = %b | out_or = %b | out_xor = %b", 
                 $time, tb_in, tb_out_and, tb_out_or, tb_out_xor);
    end

endmodule
