module t4;
    reg [3:0] a;

    initial begin
        a = 1;
        $display("a=%0d", a);
        a = 9;
        $display("a=%0d", a);
    end
endmodule
