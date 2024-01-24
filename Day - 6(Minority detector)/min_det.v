`timescale 1ns / 1ps
module min_det(a,b,c,y);
input a,b,c;
output y;
assign y=~((a&b)|(b&c)|(a&c));
endmodule
