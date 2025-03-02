`timescale 1ns / 1ps
module bin2bcd_tb();
reg [13:0]bin;
wire [15:0]bcd;
bin2bcd DUT(bin,bcd);
initial begin
bin=34;#30
bin=456;#30
bin=9875;#30
$finish;
end
endmodule
