`timescale 1ns / 1ps
module comp_tb();
reg [1:0]a,b;
wire greater,equal,less;
comp DUT(a,b,greater,equal,less);
initial begin
a=2'b00;b=2'b00;#20;
a=2'b00;b=2'b01;#20;
a=2'b11;b=2'b10;#20;
a=2'b01;b=2'b01;#20;
a=2'b10;b=2'b00;#20;
a=2'b11;b=2'b00;#20;
$finish;
end
endmodule
