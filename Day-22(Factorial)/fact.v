`timescale 1ns / 1ps
module fact(i,o);
parameter N=6;
input [N-1:0]i;
output [31:0]o;
reg [N-1:0]ind;
reg [31:0]temp;
always @ (*)
begin
temp=i;
for(ind=i-1;ind!=1;ind=ind-1)
temp=temp*ind;
end
assign o=temp;
endmodule
