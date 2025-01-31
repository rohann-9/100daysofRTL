`timescale 1ns / 1ps
module comp(a,b,greater,equal,less);
input [1:0]a,b;
output greater,equal,less;
wire w1gt,w1eq,w1ls;
wire w0gt,w0eq,w0ls;
assign w1gt = a[1]&~b[1];
assign w1eq = ~a[1]&~b[1] | a[1]&b[1];
assign w1ls = ~a[1]&b[1];
assign w0gt = a[0]&~b[0];
assign w0eq = ~a[0]&~b[0] | a[0]&b[0];
assign w0ls = ~a[0]&b[0];
assign greater = w1gt | w1eq & w0gt;
assign equal = w1eq & w0eq;
assign less = w1ls | w1eq & w0ls;
endmodule
