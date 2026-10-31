module parity_checker_4bit (
    input [3:0] data,
    input parity_in,
    output error
);
    assign error = (^data) ^ parity_in;
endmodule
