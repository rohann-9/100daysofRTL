`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 15:58:21
// Design Name: 
// Module Name: edge_detector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module edge_detector_tb();
reg in;
reg clk;
wire pedge,nedge;
edge_detector DUT(.in(in),.clk(clk),.pedge(pedge),.nedge(nedge));
initial begin
clk=0;
end
always #5 clk = ~clk;
initial begin
#10 in=1'b0;
#10 in=1'b1;
#10 in=1'b1;
#10 in=1'b0;
#10 in=1'b0;
#10 in=1'b1;
#10 in=1'b0;
#10 in=1'b1;
#10 in=1'b1;
#10 in=1'b0;
#10 in=1'b1;
#10 in=1'b0;
#10 $finish;
end
endmodule
