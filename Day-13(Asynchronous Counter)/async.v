`timescale 1ns / 1ps
module async(clk,clr,count);
input clk,clr;
output [3:0]count;
reg [3:0]count;
always @(negedge clk or posedge clr)
count[0]<=~count[0];
always @(negedge count[0] or posedge clr)
count[1]<=~count[1];
always @(negedge count[1] or posedge clr)
count[2]<=~count[2];
always @(negedge count[2] or posedge clr)
begin
if(clr)
count <=4'b0000;
else begin
count[3]<=~count[3];
end
end
endmodule
