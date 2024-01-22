`timescale 1ns / 1ps
module paritygen(i,evenpar,oddpar);
parameter N=6; //6-bit parity generator
input [N-1:0]i;
output evenpar,oddpar;
assign evenpar=^i;
assign oddpar=~evenpar;
endmodule
