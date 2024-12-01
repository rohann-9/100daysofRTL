`timescale 1ns / 1ps
module mux_tb();
parameter n=16;
parameter m=4;
reg [n-1:0]in;
reg [m-1:0]s;
wire out;
mux DUT(in,s,out);
initial begin
in=16'b00000000000110101;s=4'b0001;#50
in=16'b00001100100110101;s=4'b0100;#50
in=16'b00011000000111101;s=4'b0011;#50
in=16'b00000001000110101;s=4'b1001;#50
$finish;
end
initial begin
$monitor("in=%b|s=%b|out=%b",in,s,out);#500
$finish;
end
endmodule
