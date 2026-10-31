module tb_demux_1to8;
    reg din;
    reg [2:0] sel;
    wire [7:0] y;

    demux_1to8 uut (
        .din(din),
        .sel(sel),
        .y(y)
    );

    initial begin
        din = 1; sel = 3'd0; #10;
        din = 1; sel = 3'd4; #10;
        din = 0; sel = 3'd4; #10;
        din = 1; sel = 3'd7; #10;
        $finish;
    end
endmodule
