`timescale 1ns / 1ps
module jkff(j,k,clk,q,qb);
input j,k,clk;
output reg q;
output qb;
always @ (posedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
assign qb=~q;
endmodule
//
module msjkff(j,k,clk,qn,qnb);
input j,k,clk;
output qn,qnb;
wire mq;
wire mqb;
wire mclk;
assign mclk=~clk;
jkff master(j,k,clk,mq,mqb);
jkff slave(mq,mqb,mclk,qn,qnb);
endmodule