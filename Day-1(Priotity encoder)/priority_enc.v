`timescale 1ns / 1ps
module prio(i,y);
input [3:0]i;
output reg [1:0]y;
always @(i)
begin
casex(i)
4'b0000:y=2'bxx;
4'b0001:y=0;
4'b001x:y=1;
4'b01xx:y=2;
4'b1xxx:y=3;
endcase
end
endmodule
