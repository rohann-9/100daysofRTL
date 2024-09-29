`timescale 1ns / 1ps
module bcd2ssd_tb();
reg [3:0]bcd;
wire [6:0]ssd;
bcd2ssd DUT(bcd,ssd);
initial
begin
bcd=0;#50
bcd=1;#50
bcd=2;#50
bcd=3;#50
bcd=4;#50
bcd=5;#50
bcd=6;#50
bcd=7;#50
bcd=8;#50
bcd=9;#50
$finish;
end
endmodule
