`timescale 1ns / 1ps
module pipo_tb();
reg clk,reset;
reg [3:0]pi;
wire [3:0]po;
pipo DUT(clk,reset,pi,po);
always #5 clk=~clk;
initial
begin
clk=0;reset=1;#10
reset=0;pi=1;#30
reset=0;pi=2;#30
reset=0;pi=3;#30
reset=0;pi=4;#30
reset=0;pi=5;#30
reset=0;pi=6;#30
$finish;
end
endmodule
