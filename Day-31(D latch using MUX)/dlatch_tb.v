`timescale 1ns / 1ps
module dlatch_tb();
reg d,clk;
wire out;
dlatch DUT(.d(d),.clk(clk),.out(out));
always #5 clk=~clk;
initial begin
clk=0;
d=0;#50
d=1;#50
$finish;
end
endmodule
