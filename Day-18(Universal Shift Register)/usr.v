`timescale 1ns / 1ps
module usr(
 input clk, reset, 
 input [1:0]s, 
 input [3:0]pi,  // parallel data in 
 input sli,   // serial left data in
 input sri,  // serial right data in
 output reg [3:0]po, //parallel data out
 output slo, // serial left data out
 output sro// serial right data out
);
always @ (posedge clk or posedge reset) 
begin
if(reset) begin
po <= 0; end
else 
begin
case(s)
2'h1: po <= {sri,po[3:1]}; // Right Shift
2'h2: po <= {po[2:0],sli};  // Left Shift
2'h3: po <= pi; // Parallel in - Parallel out
default: po <= po; 
endcase
end
end
assign slo = po[0];
assign sro = po[3];
endmodule
