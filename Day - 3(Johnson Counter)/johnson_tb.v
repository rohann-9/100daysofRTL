`timescale 1ns / 1ps
module johnson_tb();
reg clk,clr;
wire [3:0]y;
johnson DUT(clk,clr,y);
always 
begin #5 clk=~clk;
end
initial 
begin
clk=0;clr=1;#100
clr=0;#100
$finish;
end
endmodule
