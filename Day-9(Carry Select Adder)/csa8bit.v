`timescale 1ns / 1ps
module muxs(a,b,s,y);
input a,b;
input s;
output y;
assign y=s?b:a;
endmodule
module muxv(a,b,s,y);
input [3:0]a,b;
input s;
output [3:0]y;
assign y=s?b:a;
endmodule
module fa(a,b,c1,s,c0);
input a,b;
input c1;
output s;
output c0;
xor u1(w1,a,b);
xor u2(s,w1,c1);
and u3(w2,w1,c1);
and u4(w3,a,b);
or u5(c0,w2,w3);
endmodule
module rca(a,b,c1,s,c0);
input [3:0]a,b;
input c1;
output [3:0]s;
output c0;
wire w1,w2,w3;
fa u1(a[0],b[0],c1,s[0],w1);
fa u2(a[1],b[1],w1,s[1],w2);
fa u3(a[2],b[2],w2,s[2],w3);
fa u4(a[3],b[3],w3,s[3],c0);
endmodule
module csa(a,b,c1,s,c0);
input [7:0]a,b;
input c1;
output [7:0]s;
output c0;
wire w1,w4,w5;
wire [3:0]w2,w3;
rca u1(a[3:0],b[3:0],c1,s[3:0],w1);
rca u2(a[7:4],b[7:4],1'b0,w2,w4);
rca u3(a[7:4],b[7:4],1'b1,w3,w5);
muxs u4(w4,w5,w1,c0);
muxv u5(w2,w3,w1,s[7:4]);
endmodule

