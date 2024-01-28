`timescale 1ns / 1ps
module cla(a,b,c1,s,c0);
input [3:0]a,b;
input c1;
output [3:0]s;
output c0;
wire [3:0]g;//carry generation
wire [3:0]p;//carry propagation
wire [4:0]c;
assign g=a&b;
assign p=a^b;
assign c[0]=c1;
genvar i;
generate 
for (i=0;i<4;i=i+1) begin
assign c[i+1]=g[i]|p[i]&c[i];
assign s[i]=p[i]^c[i];
end
endgenerate
assign c0=c[4];
endmodule
