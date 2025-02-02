`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2025 15:55:47
// Design Name: 
// Module Name: edge_detector
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
module edge_detector(
    input in,
    input clk,
    output reg pedge,nedge
);
reg temp;
always @ (posedge clk)begin
    temp <= in;
    nedge <= temp & ~in;
    pedge <= ~temp & in;
end

endmodule
