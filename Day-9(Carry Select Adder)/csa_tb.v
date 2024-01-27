`timescale 1ns / 1ps
module csa_tb();
reg [7:0]a,b;
reg c1;
wire [7:0]s;
wire c0;
csa DUT(a,b,c1,s,c0);
initial
begin
c1=0;
a=8'b00000001;
b=8'b00100111;#5
c1=1;
a=8'b00100011;
b=8'b00000011;#5
c1=1;
a=8'b00001000;
b=8'b00010001;#5
$finish;
end
endmodule
