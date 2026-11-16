
module tb;

reg [7:0] num;
wire d2, d4, d8;

divisible uut(num, d2, d4, d8);

initial begin
    $dumpfile("divisible.vcd");
    $dumpvars(0, tb);

    num = 16;
    #10;
    $display("Number=%0d | By 2=%b By 4=%b By 8=%b",num,d2,d4,d8);

    num = 12;
    #10;
    $display("Number=%0d | By 2=%b By 4=%b By 8=%b",num,d2,d4,d8);

    num = 10;
    #10;
    $display("Number=%0d | By 2=%b By 4=%b By 8=%b",num,d2,d4,d8);

    num = 7;
    #10;
    $display("Number=%0d | By 2=%b By 4=%b By 8=%b",num,d2,d4,d8);

    $finish;
end

endmodule

