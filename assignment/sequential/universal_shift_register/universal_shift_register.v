module universal_shift_register (
    input wire clk,
    input wire reset,
    input wire [1:0] ctrl,
    input wire serial_in_left,
    input wire serial_in_right,
    input wire [3:0] parallel_in,
    output reg [3:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0000;
        end else begin
            case (ctrl)
                2'b00: q <= q;                      // Hold
                2'b01: q <= {serial_in_left, q[3:1]}; // Shift Right
                2'b10: q <= {q[2:0], serial_in_right}; // Shift Left
                2'b11: q <= parallel_in;            // Parallel Load
            endcase
        end
    end

endmodule
