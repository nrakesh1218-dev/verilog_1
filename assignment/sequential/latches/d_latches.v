module d_latch (
    input wire enable,
    input wire reset,
    input wire d,
    output reg q
);

    always @(enable or reset or d) begin
        if (reset) begin
            q <= 1'b0; 
        end else if (enable) begin
            q <= d;    
        end
        
    end

endmodule
