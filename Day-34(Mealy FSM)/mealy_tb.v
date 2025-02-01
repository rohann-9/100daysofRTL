`timescale 1ns / 1ps
module mealy_tb();
reg in,clk,areset;
wire out;
mealy DUT(.in(in),.areset(areset),.clk(clk),.out(out));
always #5 clk=~clk;
initial 
begin
clk=0;
areset=1;
#30 areset=0;
#10 in = 1;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 1;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 0;
#10 $finish;
end
endmodule