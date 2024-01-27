`timescale 1ns / 1ps
module full_add(a,b,c1,s,c0);
input a,b,c1;
output s,c0;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(s,w1,c1);
and a1(w2,a,b);
and a2(w3,w1,c1);
or o1(c0,w2,w3);
endmodule

