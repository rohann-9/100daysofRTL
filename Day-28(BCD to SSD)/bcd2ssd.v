`timescale 1ns / 1ps
module bcd2ssd(bcd,ssd);
input [3:0]bcd;
output reg [6:0]ssd;
always @ (bcd)
begin
case (bcd) // led g as MSB and a as LSB
0 : ssd = 7'b0111111;
1 : ssd = 7'b0000011;
2 : ssd = 7'b1101101;
3 : ssd = 7'b1100111;
4 : ssd = 7'b1010011;
5 : ssd = 7'b1110110;
6 : ssd = 7'b1111110;
7 : ssd = 7'b0100011;
8 : ssd = 7'b1111111;
9 : ssd = 7'b1110111;
default : ssd = 7'b0000000;
endcase
end
endmodule
