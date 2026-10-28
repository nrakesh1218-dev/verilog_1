module alu_8bit_gateflow (
    input [7:0] a,
    input [7:0] b,
    input [2:0] opcode,
    output [7:0] result,
    output carry_out,
    output overflow
);

    wire [7:0] add_result;
    wire [7:0] sub_result;
    wire [7:0] and_result;
    wire [7:0] or_result;
    wire [7:0] xor_result;
    
    wire add_cout;
    wire sub_cout;

    assign {add_cout, add_result} = {1'b0, a} + {1'b0, b};
    assign {sub_cout, sub_result} = {1'b0, a} - {1'b0, b};
    assign and_result = a & b;
    assign or_result  = a | b;
    assign xor_result = a ^ b;

    assign result = (opcode == 3'b000) ? add_result :
                    (opcode == 3'b001) ? sub_result :
                    (opcode == 3'b010) ? and_result :
                    (opcode == 3'b011) ? or_result  :
                    (opcode == 3'b100) ? xor_result : 8'h00;

    assign carry_out = (opcode == 3'b000) ? add_cout : 
                       (opcode == 3'b001) ? ~sub_cout : 1'b0;

    assign overflow = (opcode == 3'b000) ? ((a[7] & b[7] & ~result[7]) | (~a[7] & ~b[7] & result[7])) :
                      (opcode == 3'b001) ? ((a[7] & ~b[7] & ~result[7]) | (~a[7] & b[7] & result[7])) : 1'b0;

endmodule
