`timescale 1ns / 1ps
module jk(j,k,clk,clr,q,qb);
input j,k,clk,clr;
output reg q;
output qb;
always @ (posedge clk)
begin
if(clr==1)
q=0;
else
case({j,k})
2'b00 : q<=q;
2'b01 : q<=0;
2'b10 : q<=1;
2'b11 : q<=~q;
endcase
end
assign qb=~q;
endmodule
