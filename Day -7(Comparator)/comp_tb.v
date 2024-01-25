`timescale 1ns / 1ps
module comp_tb();
parameter N=8;
reg [N-1:0]a,b;
wire gr,eq,ls;
comp DUT(a,b,eq,gr,ls);
initial
begin
a=11;
b=7;#10
a=14;
b=14;#10
a=12;
b=15;#10
a=34;
b=45;#10
$finish;
end
endmodule
