module bidirectional_shift_register (
    input wire clk,
    input wire reset,
    input wire dir,
    input wire serial_in,
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0000;
        end else if (dir) begin
            q <= {q[2:0], serial_in};
        end else begin
            q <= {serial_in, q[3:1]};
        end
    end

endmodule
