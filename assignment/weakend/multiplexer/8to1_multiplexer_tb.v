module tb_mux_8to1;
    reg [7:0] d;
    reg [2:0] sel;
    wire y;

    mux_8to1 uut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        d = 8'b10101010;
        sel = 3'd0; #10;
        sel = 3'd1; #10;
        sel = 3'd3; #10;
        sel = 3'd7; #10;
        $finish;
    end
endmodule
