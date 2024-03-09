`timescale 1ns / 1ps
module fact_tb();
parameter N=6;
reg [N-1:0]i;
wire [31:0]o;
fact DUt(i,o);
initial
begin
i=3;#5
i=4;#5
i=5;#5
i=6;#5
$finish;
end
endmodule
