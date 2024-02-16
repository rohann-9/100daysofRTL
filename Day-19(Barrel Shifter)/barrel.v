`timescale 1ns / 1ps
module barrel(din,shift,dir,dout);
input [3:0]din;
input [1:0]shift;                    //shift
input dir;                           //direction : 0 for left and 1 for right
output reg [3:0]dout;
always @ (*)
begin
case(dir)
0: dout = (shift == 2'b00) ? din :        
                      (shift == 2'b01) ? {din[2:0], 1'b0} :
                      (shift == 2'b10) ? {din[1:0], 2'b00} :
                      (shift == 2'b11) ? {din[0], 3'b000} :
                      4'bxxxx; 
1: dout = (shift == 2'b00) ? din :
                      (shift == 2'b01) ? {1'b0, din[3:1]} :
                      (shift == 2'b10) ? {2'b00, din[3:2]} :
                      (shift == 2'b11) ? {3'b000, din[3]} :
                      4'bxxxx; 
default:dout=4'bxxxx;
endcase    
end                
endmodule
