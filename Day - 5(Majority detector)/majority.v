`timescale 1ns / 1ps
module majority(a,b,c,y);
input a,b,c;
output y;
assign y=(a&b)|(b&c)|(c&a);
endmodule
