module d_ff_nb_tb;
    reg clk;
    reg rst;
    reg d;
    wire q;

    d_ff_nb uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, d_ff_nb_tb);

        clk = 1'b0;
        rst = 1'b1;
        d = 1'b0;

        #12 rst = 1'b0;
        #10 d = 1'b1;
        #10 d = 1'b0;
        #10 d = 1'b1;
        #15 d = 1'b0;
        #10 d = 1'b1;
        #20 $finish;
    end
endmodule
