module leap_year_tb;

reg [15:0] year;
wire leap;

leap_year uut (
    .year(year),
    .leap(leap)
);

initial begin
    $dumpfile("leap_year.vcd");
    $dumpvars(0, leap_year_tb);

    year = 2024; #10;
    $display("Year=%d Leap=%b", year, leap);

    year = 2025; #10;
    $display("Year=%d Leap=%b", year, leap);

    year = 2000; #10;
    $display("Year=%d Leap=%b", year, leap);

    year = 1900; #10;
    $display("Year=%d Leap=%b", year, leap);

    $finish;
end

endmodule
