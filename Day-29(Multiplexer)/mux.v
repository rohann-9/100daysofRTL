`timescale 1ns / 1ps
module mux(in,s,out);
parameter n=16;
parameter m=4;
input [n-1:0]in;
input [m-1:0]s;
output reg out;
always @ (in or s)
begin
case(s)
4'b0000:out=in[0];
4'b0001:out=in[1];
4'b0010:out=in[2];
4'b0011:out=in[3];
4'b0100:out=in[4];
4'b0101:out=in[5];
4'b0110:out=in[6];
4'b0111:out=in[7];
4'b1000:out=in[8];
4'b1001:out=in[9];
4'b1010:out=in[10];
4'b1011:out=in[11];
4'b1100:out=in[12];
4'b1101:out=in[13];
4'b1110:out=in[14];
4'b1111:out=in[n-1];
default: out=0;
endcase
end
endmodule
