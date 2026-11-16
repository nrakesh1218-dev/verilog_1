
module leap_year(
    input [15:0] year,
    output reg leap
);

always @(*) begin
    if ((year % 400 == 0) ||
        ((year % 4 == 0) && (year % 100 != 0)))
        leap = 1;
    else
        leap = 0;
end

endmodule

