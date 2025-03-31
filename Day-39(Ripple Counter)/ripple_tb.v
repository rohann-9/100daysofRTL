`timescale 1ns / 1ps
module ripple_tb();
reg clk,reset;
wire [3:0]q;
ripple DUT(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
reset=1;
clk=0;#20
reset=0;#200
$finish;
end
endmodule
