module t3;
    reg [3:0] a, b;

    initial begin
        a = 2;
        b = a + 1;
        $display("a=%0d b=%0d", a, b);
    end
endmodule
