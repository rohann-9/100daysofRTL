`timescale 1ns / 1ps
module modncount(clk,clr,q,qb);
parameter n=3;
parameter count=8;   //mod8 counter
input clk,clr;
output [n-1:0]q,qb;
reg [n-1:0]c;
always @ (posedge clk)
begin
if(clr)
    c<=0;
else
    c<=(c+1)%count;
end
assign q=c;   // D flipflop
assign qb=~c;
endmodule
