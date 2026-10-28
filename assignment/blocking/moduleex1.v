module ex1;
    reg [3:0] a;
    reg [3:0] b;

    initial begin
        a = 12;
        b = 14;
        $display("a=%d b=%d", a, b);
    end
endmodule
