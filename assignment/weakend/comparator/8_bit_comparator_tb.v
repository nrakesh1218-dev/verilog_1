module tb_comparator_8bit;
    reg [7:0] a;
    reg [7:0] b;
    wire gt;
    wire eq;
    wire lt;

    comparator_8bit uut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );

    initial begin
        a = 8'd45; b = 8'd45; #10;
        a = 8'd90; b = 8'd30; #10;
        a = 8'd12; b = 8'd88; #10;
        $finish;
    end
endmodule
