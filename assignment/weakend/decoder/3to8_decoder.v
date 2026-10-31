module decoder_3to8 (
    input [2:0] in;
    input en,
    output reg [7:0] out
);
always @(*) begin
    out = 8'bo;
  if (en) begin
      out[in]= 1'b1;
   end 
end
endmodule
