`timescale 1ns / 1ps
module usr_tb();
reg clk,reset;
reg [1:0]s;
reg [3:0]pi;
reg sli,sri;
wire [3:0]po;
wire slo,sro;
usr DUT(clk,reset,s,pi,sli,sri,po,slo,sro);
always #5 clk=~clk;
initial
begin
clk=0;reset=1;#50
reset=0;
pi=12;sli=1;sri=0;
s=2'h3;#50
s=2'h1;#50
s=2'h0;#50
pi=12;sli=0;sri=1;
s=2'h3;#50
s=2'h1;#50
s=2'h0;#50
$finish;
end
endmodule
