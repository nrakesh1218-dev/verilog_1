module tb_subtractor_8bit;
    reg [7:0] a;
    reg [7:0] b;
    reg bin;
    wire [7:0] diff;
    wire bout;

    subtractor_8bit uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        a = 8'd50; b = 8'd20; bin = 0; #10;
        a = 8'd10; b = 8'd20; bin = 0; #10;
        a = 8'd100; b = 8'd100; bin = 0; #10;
        a = 8'd255; b = 8'd0; bin = 1; #10;
        $finish;
    end
endmodule

