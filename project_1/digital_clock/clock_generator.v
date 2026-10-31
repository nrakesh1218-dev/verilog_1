module clock(
    input clk,rst,
    output reg[5:0],sec,min
);
always(@posedge clk)begin
    if (rst)begin
    sec <= 0;
    min <= 0;
end 
else if (sec<59)
    sec <=sec+1;
else if (min <59)
    min <= min+1;
    sec <=0;5
else begin
    sec =0;
     min =0;
     end
end
endmodule
