`timescale 1ns / 1ps
module rca_4(a,b,c1,s,c0);
input [3:0]a,b;
input c1;
output [3:0]s;
output c0;
wire w1,w2,w3;
full_add UUT1(a[0],b[0],c1,s[0],w1);
full_add UUT2(a[1],b[1],w1,s[1],w2);
full_add UUT3(a[2],b[2],w2,s[2],w3);
full_add UUT4(a[3],b[3],w3,s[3],c0);
endmodule
