`timescale 1ns / 1ps
module cla_tb();
reg [3:0]a,b;
reg c1;
wire [3:0]s;
wire c0;
cla DUT(a,b,c1,s,c0);
reg clk=0;
always #5 clk=~clk;
initial
begin
a=4;b=9;c1=0;#10
a=7;b=13;c1=0;#10
a=13;b=14;c1=1;#10
a=15;b=10;c1=1;#10
$finish;
end
always #5 clk=~clk;
endmodule
