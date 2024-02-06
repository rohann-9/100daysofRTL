`timescale 1ns / 1ps
module dff(d,clk,q);
input clk,d;
output reg q;
always @ (posedge clk) begin
q<=d;
end
endmodule
module siso(clk,si,so);
input clk;
input si;
output so;
wire w1,w2,w3;
dff u1(si,clk,w1);
dff u2(w1,clk,w2);
dff u3(w2,clk,w3);
dff u4(w3,clk,so);
endmodule
