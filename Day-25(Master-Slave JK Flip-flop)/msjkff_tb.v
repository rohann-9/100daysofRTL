`timescale 1ns / 1ps
module msjkff_tb();
reg j,k,clk;
wire qn,qnb;
msjkff DUT(j,k,clk,qn,qnb);
always #5 clk=~clk;
initial
begin
clk=0;
j=0;k=0;#50
j=0;k=1;#50
j=1;k=0;#50
j=1;k=1;#50
$finish;
end
endmodule
