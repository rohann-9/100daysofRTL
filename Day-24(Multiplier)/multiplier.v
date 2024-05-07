`timescale 1ns / 1ps
module ha(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule
module fa(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s=a^b^ci;
assign co=a&b|b&ci|ci&a;
endmodule
module v1(a,b,y);
input [3:0]a,b;
output [7:0]y;
wire hc1,fs1,fc1,hc2,fs2,fc2,fs3,fc3,hs1,hc3,fs4,fc4,fc5,fs5,fc6,fc7;
assign y[0]=a[0]&b[0];
ha u1(a[0]&b[1],a[1]&b[0],y[1],hc1);
fa u2(a[1]&b[1],a[2]&b[0],hc1,fs1,fc1);
ha u3(fs1,a[0]&b[2],y[2],hc2);
fa u4(a[2]&b[1],a[3]&b[0],fc1,fs2,fc2);
fa u5(fs2,a[1]&b[2],hc2,fs3,fc3);
ha u6(fs3,a[0]&b[3],y[3],hc3);
ha u7(0,a[3]&b[1],hs1,hc3);
fa u8(hs1,a[2]&b[2],fc3,fs4,fc4);
fa u9(fs4,a[1]&b[3],hc3,y[4],fc5);
fa u10(a[3]&b[2],hc3,fc4,fs5,fc6);
fa u11(fs5,a[2]&b[3],fc5,y[5],fc7);
fa u12(a[3]&b[3],fc6,fc7,y[6],y[7]);
endmodule
