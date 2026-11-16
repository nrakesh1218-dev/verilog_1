
module divisible(
    input [7:0] num,
    output reg d2, d4, d8
);

always @(*) begin

    if(num % 2 == 0)
        d2 = 1;
    else
        d2 = 0;

    if(num % 4 == 0)
        d4 = 1;
    else
        d4 = 0;

    if(num % 8 == 0)
        d8 = 1;
    else
        d8 = 0;

end

endmodule

