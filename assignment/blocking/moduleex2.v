module t2;
    reg [3:0] a, b;

    initial begin
        a = 5;
        b = a;
        $display("a=%0d b=%0d", a, b);
    end
endmodule
