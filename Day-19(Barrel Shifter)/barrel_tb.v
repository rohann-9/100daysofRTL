`timescale 1ns / 1ps
module barrel_tb();
reg [3:0]din;
reg [1:0]shift;
reg dir;
wire [3:0]dout;
barrel DUT(din,shift,dir,dout);
initial
begin
din=4'b0101;shift=2'b01;dir=0;#50
din=4'b0111;shift=2'b11;dir=1;#50
din=4'b1100;shift=2'b00;dir=0;#50
din=4'b1011;shift=2'b10;dir=1;#50
$finish;
end
endmodule
