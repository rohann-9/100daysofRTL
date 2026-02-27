`timescale 1ns / 1ps
module tb_gcd();
parameter n = 8;
reg clk;
reg reset;
reg [n-1:0] x;
reg [n-1:0] y;
wire [n-1:0] gcd;
gcd_using_fsm #(.n(n))DUT (
        .clk(clk), 
        .reset(reset), 
        .x(x), 
        .y(y), 
        .gcd(gcd)
);
initial begin 
    clk=0;
end
always #5 clk = ~clk;
initial begin
reset = 1;#20
reset = 0;x = 5;y = 7;#250
reset = 0;x = 4;y = 26;#250
reset = 0;x = 9;y = 63;#250
$finish;
end
endmodule