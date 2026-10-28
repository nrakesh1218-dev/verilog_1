```verilog
module full_subtractor(a, b, bin, diff, bout);

    input a, b, bin;
    output reg diff, bout;

    always @(*) begin
        diff = a ^ b ^ bin;
        bout = (~a & b) | (~a & bin) | (b & bin);
    end

endmodule
```
