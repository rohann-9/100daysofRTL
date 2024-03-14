`timescale 1ns / 1ps
module bin2gray_tb();
reg [3:0]b;
wire [3:0]g;
bin2gray DUT(b,g);
initial
begin
b=4'b1011;#50
b=4'b0111;#50
b=4'b1101;#50
b=4'b0001;#50
$stop;
end
endmodule
