module alu_4bit_gateflow (
    input [3:0] a,
    input [3:0] b,
    input [2:0] opcode,
    output [3:0] result,
    output carry_out
);

    wire [3:0] add_result;
    wire [3:0] sub_result;
    wire [3:0] and_result;
    wire [3:0] or_result;
    wire [3:0] xor_result;
    
    wire add_cout;

    // Operation implementations
    assign {add_cout, add_result} = {1'b0, a} + {1'b0, b};
    assign sub_result = a - b;
    assign and_result = a & b;
    assign or_result  = a | b;
    assign xor_result = a ^ b;

    // Multiplexing results based on opcode
    assign result = (opcode == 3'b000) ? add_result :
                    (opcode == 3'b001) ? sub_result :
                    (opcode == 3'b010) ? and_result :
                    (opcode == 3'b011) ? or_result  :
                    (opcode == 3'b100) ? xor_result : 4'b0000;

    assign carry_out = (opcode == 3'b000) ? add_cout : 1'b0;

endmodule

module tb_alu_4bit_gateflow;

    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] opcode;
    wire [3:0] result;
    wire carry_out;

    alu_4bit_gateflow uut (
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("alu_4bit_gateflow.vcd");
        $dumpvars(0, tb_alu_4bit_gateflow);

        a = 4'd5;    b = 4'd3;    opcode = 3'b000; #10;
        a = 4'd7;    b = 4'd4;    opcode = 3'b001; #10;
        a = 4'b1100; b = 4'b1010; opcode = 3'b010; #10;
        a = 4'b1100; b = 4'b1010; opcode = 3'b011; #10;
        a = 4'b1100; b = 4'b1010; opcode = 3'b100; #10;

        $finish;
    end

endmodule
