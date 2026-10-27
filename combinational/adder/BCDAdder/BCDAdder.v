module bcd_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg cout
);

    reg [4:0] binary_sum;

    always @(*) begin
        binary_sum = a + b + cin;
        if (binary_sum > 9) begin
            sum = binary_sum + 6;
            cout = 1;
        end else begin
            sum = binary_sum[3:0];
            cout = 0;
        end
    end

endmodule
