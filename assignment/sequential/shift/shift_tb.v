module tb_shift_register;
    reg  clk = 0, d = 0;
    wire b1, b2, b3;
    wire n1, n2, n3;

    b_shift_register  dut_b  (.clk(clk), .d(d), .q1(b1), .q2(b2), .q3(b3));
    nb_shift_register dut_nb (.clk(clk), .d(d), .q1(n1), .q2(n2), .q3(n3));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("shift_register.vcd");
        $dumpvars(0, tb_shift_register);
        $monitor("t=%0t d=%b | b1b2b3: %b%b%b | n1n2n3: %b%b%b",
                  $time, d, b1, b2, b3, n1, n2, n3);
        #12 d = 1;
        #10 d = 0;
        #40 $finish;
    end
endmodule 
