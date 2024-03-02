`timescale 1ns / 1ps
module bsr(m,dir,clk,en,rst,out);
parameter N=4;
input clk,m,dir,en,rst;
output reg [N-1:0]out;
always @ (posedge clk or posedge rst)
begin
if(rst)
begin out<=0;
end
else
begin
    if(en)
        case(dir)
        0:out<={out[N-2:0],m};
        1:out<={m,out[N-1:1]};
        endcase
    else
    out<=out;
    end
end
endmodule
