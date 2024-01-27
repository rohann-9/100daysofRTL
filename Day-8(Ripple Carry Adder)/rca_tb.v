`timescale 1ns / 1ps
module rca_tb();
reg [3:0]a,b;
reg c1;
wire [3:0]s;
wire c0;
rca_4 DUT(a,b,c1,s,c0);
initial
begin
a=3;
b=7;
c1=0;#10
a=9;
b=2;
c1=1;#10
a=8;
b=6;
c1=1;#10
$finish;
end
endmodule
