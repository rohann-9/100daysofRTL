`timescale 1ns / 1ps
module johnson(clk,clr,y);
input clk,clr;
output reg [3:0]y;
always @ (posedge clk or posedge clr)
begin
if (clr)
begin y<=0;
end
else
begin y<={y[2:0],~y[3]};
end
end
endmodule
