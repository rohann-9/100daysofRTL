`timescale 1ns / 1ps
module alu_tb();
reg [3:0]a,b;
reg [2:0]op;
wire [7:0]y;
alu DUT(a,b,op,y);
initial
begin
a=4'b0100;b=4'b0101;op=3'b000;#50
a=4'b1100;b=4'b0100;op=3'b001;#50
a=4'b0110;b=4'b0111;op=3'b010;#50
a=4'b0001;b=4'b0100;op=3'b011;#50
a=4'b0101;b=4'b1101;op=3'b100;#50
a=4'b1100;b=4'b0111;op=3'b101;#50
$finish;
end
endmodule
