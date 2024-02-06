`timescale 1ns / 1ps
module sipo_tb();
reg clk,si,clr;
wire [3:0]po;
sipo DUT(clk,clr,si,po);
always #5 clk=~clk;
initial
begin
clk=0;clr=1;si=0;#10
clr=0;si=1;#10
si=0;#10
si=1;#10
si=0;#50
$finish;
end
endmodule
