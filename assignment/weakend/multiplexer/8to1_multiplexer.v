module mux_8to1 (
input [7:0] d,
inpur [2:0] sel,
output y
);
assign y= d[sel];
endmodule
