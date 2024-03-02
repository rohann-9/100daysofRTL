`timescale 1ns / 1ps
module bsr_tb();
parameter N=4;
reg m,dir,en,rst,clk;
wire [N-1:0]out;
bsr DUT(m,dir,clk,en,rst,out);
always 
begin #5 clk=~clk;
end
initial
begin
clk=0;rst=1;
m=0;dir=0;en=1;rst=0;#50
m=0;dir=1;en=1;rst=0;#50
m=1;dir=0;en=1;rst=0;#50
m=1;dir=1;en=1;rst=0;#50
$finish;
end 
endmodule
