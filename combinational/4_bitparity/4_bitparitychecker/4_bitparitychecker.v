module parity_checker_4bit (
input [3:0] A,
input P,
output Error
);
 
assign Error = A[3] ^ A[2] ^ A[1] ^ A[0] ^ P;
 
endmodule
