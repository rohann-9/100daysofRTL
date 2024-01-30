`timescale 1ns / 1ps
module sync_tb();
reg clk,rst,up;
wire [3:0]count;
sync DUT(clk,rst,up,count);
always 
begin #5 clk=~clk;
end
initial
begin
clk=0;rst=1;up=0;#50
rst=0;up=1;#150
up=0;#150
$finish;
end
endmodule
