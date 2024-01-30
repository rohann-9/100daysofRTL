`timescale 1ns / 1ps
module sync(clk,rst,up,count);
input clk,rst,up;
output reg [3:0]count;
reg [3:0]temp;
always @ (posedge clk or posedge rst)
begin
if(rst) 
begin temp<=0;
end
else
if(up)
begin temp<=temp+1;
end
else
begin temp<=temp-1;
end
end
initial begin
assign count=temp;
end
endmodule
