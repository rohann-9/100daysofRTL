`timescale 1ns / 1ps
module sipo(clk,clr,si,po);
input clk,si,clr;
output reg [3:0]po;
reg [3:0]temp;
always @(posedge clk)
begin
if (clr)
temp <= 4'b0000;
else
temp <= temp << 1;
temp[0] <= si;
po = temp;
end
endmodule