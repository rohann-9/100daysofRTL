`timescale 1ns / 1ps
module jk_tb();
reg j,k,clk,clr;
wire q,qb;
jk DUT(j,k,clk,clr,q,qb);
initial clk=0;
always #5 clk=~clk;
initial
begin
clr=1;j=0;k=1;#10
clr=0;j=0;k=0;#10
clr=0;j=0;k=1;#10
clr=0;j=1;k=0;#10
clr=0;j=1;k=1;#10
$stop;
end
endmodule
