module shift_nonblocking (
    input  wire clk,
    input  wire d,
    output reg  q1, q2, q3
);
    always @(posedge clk) begin
        q1 <= d;   
        q2 <= q1;   
        q3 <= q2;
    end
endmodule
