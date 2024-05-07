`timescale 1ns / 1ps
module v1_tb();
reg [3:0]a,b;
wire [7:0]y;
v1 DUT(a,b,y);
initial
begin
a=4'b0011;b=4'b0110;#10
a=4'b1000;b=4'b1000;#10
a=4'b0101;b=4'b0110;#10
a=4'b1011;b=4'b1110;#10
a=4'b1011;b=4'b1000;#10
$finish;
end
endmodule
