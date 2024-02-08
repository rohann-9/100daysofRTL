`timescale 1ns / 1ps
module piso(clk,reset,pi,so);
input clk,reset;
input [3:0]pi;
output reg so;
reg [3:0]temp;
always @ (posedge clk or posedge reset)
begin
if (reset) begin
temp <= 4'b0000;
so <= 1'b0; end
else begin
temp <= {temp[2:0],pi[0]};
so <= temp[3];
end
end
endmodule
