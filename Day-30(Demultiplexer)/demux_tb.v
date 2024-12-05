`timescale 1ns / 1ps
module demux_tb();
parameter n=3;
reg in;
reg [n-1:0]s;
wire y0,y1,y2,y3,y4,y5,y6,y7;
demux DUT(in,s,y0,y1,y2,y3,y4,y5,y6,y7);
initial
begin
in=1;s=3'b001;#20
in=1;s=3'b101;#20
in=1;s=3'b100;#20
in=1;s=3'b011;#20
in=1;s=3'b111;#20
$finish;
end
endmodule
