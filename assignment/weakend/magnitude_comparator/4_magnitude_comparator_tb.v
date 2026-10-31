module tb_magnitude_comparator_4bit;
    reg [3:0] a;
    reg [3:0] b;
    wire gt;
    wire eq;
    wire lt;

    magnitude_comparator_4bit uut (
        .a(a),
        .b(b),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );

    initial begin
        a = 4'd5; b = 4'd5; #10;
        a = 4'd9; b = 4'd3; #10;
        a = 4'd2; b = 4'd8; #10;
        $finish;
    end
endmodule
