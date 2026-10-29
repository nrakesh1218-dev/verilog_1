module sr_flipflop (
    input wire clk,
    input wire rst_n,
    input wire s,
    input wire r,
    output reg q
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 1'b0;
        end else begin
            case ({s, r})
                2'b00: q <= q;
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1;
                2'b11: q <= 1'bx;
            endcase
        end
    end

endmodule
