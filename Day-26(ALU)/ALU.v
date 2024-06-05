`timescale 1ns / 1ps
module alu(a,b,op,y);
input [3:0]a,b;
input [2:0]op;
output reg [7:0]y;
parameter add=3'b000,
sub=3'b001,
mul=3'b010,
and_=3'b011,
or_=3'b100,
xor_=3'b101;
always @ (a or b or op)
begin
case(op)
add : y=a+b;
sub : y=a-b;
mul : y=a*b;
and_ : y=a&b;
or_ : y=a|b;
xor_ : y=a^b;
endcase
end
endmodule
