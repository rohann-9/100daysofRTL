`timescale 1ns / 1ps
module prbs(clk,reset,prbs);
input clk,reset;
output wire [3:0]prbs;
reg [3:0]temp;
always @ (posedge clk or posedge reset)
begin
if (reset) begin
temp <= 4'b0001; end
else begin
temp <= {temp[0]^temp[1],temp[3],temp[2],temp[1]};
end
end
assign prbs = temp;
endmodule
