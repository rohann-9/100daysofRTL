`timescale 1ns / 1ps
module barrel_tb();
parameter width=4;
reg [7:0]in;
reg [width-1:0]k;
reg dir;
wire [7:0]out;
barrel DUT (.in(in),.k(k),.dir(dir),.out(out));
initial begin
in = 8'b01010101;k=4'b0001;dir=1;#50
in = 8'b01010101;k=4'b0001;dir=0;#50
in = 8'b01010101;k=4'b0010;dir=1;#50
in = 8'b01010101;k=4'b0010;dir=0;#50
in = 8'b01010101;k=4'b0100;dir=1;#50
in = 8'b01010101;k=4'b0100;dir=0;#50
$finish;
end
endmodule
