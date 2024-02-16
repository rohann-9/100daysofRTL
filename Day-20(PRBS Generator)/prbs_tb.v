`timescale 1ns / 1ps
module prbs_tb();
reg clk,reset;
wire [3:0]prbs;
prbs DUT(clk,reset,prbs);
always #5 clk=~clk;
initial
begin
clk=0;reset=1;#10
reset=0;#100
$finish;
end
endmodule
