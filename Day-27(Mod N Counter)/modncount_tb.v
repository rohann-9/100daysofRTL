`timescale 1ns / 1ps
module modncount_tb();
parameter n=3;
parameter count=8;
reg clk,clr;
wire [n:1]q,qb;
modncount DUT(clk,clr,q,qb);
always #5 clk=~clk;
initial
begin
clk=0;clr=1;#50
clr=0;#80
$finish;
end
endmodule
