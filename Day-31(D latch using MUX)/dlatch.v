`timescale 1ns / 1ps
module dlatch(d,clk,out);
input d,clk;
inout out;
mux m1(.i0(out),.i1(d),.s(clk),.y(out));
endmodule
module mux(i0,i1,s,y);
input i0,i1;
input s;
output reg y;
always @ (s)
begin
case(s)
1'b0:y=i0;
1'b1:y=i1;
endcase
end
endmodule