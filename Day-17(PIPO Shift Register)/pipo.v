`timescale 1ns / 1ps
module pipo(clk,reset,pi,po);
input clk,reset;
input [3:0]pi;          //parallel input
output reg [3:0]po;     //parallel output 
always @ (posedge clk or posedge reset)
begin
if (reset) begin
po <= 4'b0000; end
else begin
po <= pi; end
end
endmodule
