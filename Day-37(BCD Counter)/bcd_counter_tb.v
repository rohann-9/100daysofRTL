`timescale 1ns / 1ps
module bcd_counter_tb();
reg clk,reset,en;
wire [3:0]bcd1,bcd0;
bcd_counter DUT (.clk(clk),.reset(reset),.en(en),.bcd1(bcd1),.bcd0(bcd0));
initial begin
clk=0;
end
always #5 clk=~clk;
initial begin
reset=1;en=0;#50
reset=0;en=1;#300
$finish;
end
endmodule
