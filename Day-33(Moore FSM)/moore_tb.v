`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 22:58:45
// Design Name: 
// Module Name: moore_tb
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


module moore_tb();
reg in,clk,areset;
wire out;
moore dut(.in(in),.clk(clk),.areset(areset),.out(out));
always #5 clk = ~clk;
initial begin
clk=0;
areset=1;
#30 areset=0;
#10 in=1;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;
#10 $finish;
end
endmodule
