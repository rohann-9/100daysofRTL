`timescale 1ns / 1ps
module siso_tb();
reg clk;
reg si;
wire so;
siso DUT(clk,si,so);
always #5 clk=~clk;
initial
begin
clk=0;si=0;#10
si=1;#10
si=0;#10
si=1;#10
si=0;#10
si=1;#10
$finish;
end
endmodule
