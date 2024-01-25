`timescale 1ns/1ps
module comp(a,b,eq,gr,ls);
parameter N=8;
input [N-1:0]a,b;
output reg eq,gr,ls; // a equal,a greater,a lesser
always @(a or b)
begin
eq=0;
gr=0;
ls=0;
if(a==b)
 eq=1;
else if(a>b)
 gr=1;
else
 ls=1;
end
endmodule