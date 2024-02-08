`timescale 1ns / 1ps
module piso_tb();
reg clk,reset;
reg [3:0]pi;
wire so;
piso DUT(clk,reset,pi,so);
always #5 clk=~clk;
initial begin
clk=0;reset=1;pi=1;#50
reset=0;pi=2;#50
reset=0;pi=3;#50
reset=0;pi=4;#50
$finish;
end
endmodule
