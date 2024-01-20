`timescale 1ns / 1ps
module ring_tb();
reg clk;
reg rst;
wire [3:0]count;
ring DUT(clk,rst,count);
always 
begin #5
clk=~clk;
end
initial
begin
clk=0;rst=1;#100
rst=0;#100
$finish;
end
endmodule
