`timescale 1ns / 1ps
module demux(in,s,y0,y1,y2,y3,y4,y5,y6,y7);
parameter n=3;
input in;
input [n-1:0]s;
output reg y0,y1,y2,y3,y4,y5,y6,y7;
always @ (in or s)
begin
case(s)
3'b000:{y0,y1,y2,y3,y4,y5,y6,y7}={in,7'b0};
3'b001:{y0,y1,y2,y3,y4,y5,y6,y7}={1'b0,in,6'b0};
3'b010:{y0,y1,y2,y3,y4,y5,y6,y7}={2'b0,in,5'b0};
3'b011:{y0,y1,y2,y3,y4,y5,y6,y7}={3'b0,in,4'b0};
3'b100:{y0,y1,y2,y3,y4,y5,y6,y7}={4'b0,in,3'b0};
3'b101:{y0,y1,y2,y3,y4,y5,y6,y7}={5'b0,in,2'b0};
3'b110:{y0,y1,y2,y3,y4,y5,y6,y7}={6'b0,in,1'b0};
3'b111:{y0,y1,y2,y3,y4,y5,y6,y7}={7'b0,in};
endcase
end
endmodule
