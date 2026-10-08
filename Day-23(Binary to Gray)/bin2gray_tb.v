`timescale 1ns / 1ps
module bin2gray_tb();
parameter N=4;
reg [N-1:0]bin;
wire [N-1:0]gray;
bin2gray #(.N(4))DUT(.bin(bin),.gray(gray));
integer i;
initial begin
for(i=0;i<2**N;i=i+1)begin
    bin = i;
    #10;
end
if(gray==bin^(bin>>1)) begin
    $display("PASS");
end else begin
    $display("FAIL");
end
$finish;
end
endmodule
