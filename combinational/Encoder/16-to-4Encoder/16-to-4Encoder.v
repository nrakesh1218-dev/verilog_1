module encoder_16to4 (
    input [15:0] in,
    output reg [3:0] out,
    output reg valid
);

    always @(*) begin
        valid = 1'b1;
        case (in)
            16'h0001: out = 4'd0;
            16'h0002: out = 4'd1;
            16'h0004: out = 4'd2;
            16'h0008: out = 4'd3;
            16'h0010: out = 4'd4;
            16'h0020: out = 4'd5;
            16'h0040: out = 4'd6;
            16'h0080: out = 4'd7;
            16'h0100: out = 4'd8;
            16'h0200: out = 4'd9;
            16'h0400: out = 4'd10;
            16'h0800: out = 4'd11;
            16'h1000: out = 4'd12;
            16'h2000: out = 4'd13;
            16'h4000: out = 4'd14;
            16'h8000: out = 4'd15;
            default: begin
                out = 4'd0;
                valid = 1'b0;
            end
        endcase
    end

endmodule
