`timescale 1ns / 1ps
module async_tb();
reg clk,clr;
wire [3:0]count;
async DUT(clk,clr,count);
always begin
#5 clk=~clk;
end
initial
begin
clk=0;clr=0;#50
clr=1;#200
$finish;
end
endmodule
