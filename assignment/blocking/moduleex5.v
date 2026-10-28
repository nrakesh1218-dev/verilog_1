module t5;
    reg [3:0] a, b;

    initial begin
        a = 9;
        b = a - 4;
        $display("a=%0d b=%0d", a, b);
    end
endmodule
