`timescale 1ns / 1ps
module sp_ram_tb();
parameter DATA_WIDTH=8;
parameter ADDRESS_WIDTH=4;
parameter DEPTH=16;
reg clk,en,w_r;
reg [DATA_WIDTH-1:0]data_in;
wire [DATA_WIDTH-1:0]data_out;
reg [ADDRESS_WIDTH-1:0]add;
sp_ram DUT(.clk(clk),.en(en),.w_r(w_r),.data_in(data_in),.data_out(data_out),.add(add));
initial begin clk=0;end
always #5 clk=~clk;
initial begin
en=0;#20
en=1;
w_r=1;data_in=8'hab;add=4'd1;#50
w_r=1;data_in=8'hbc;add=4'd2;#50
w_r=1;data_in=8'hcd;add=4'd3;#50
w_r=0;add=4'd1;#50
w_r=0;add=4'd2;#50
w_r=0;add=4'd3;#50
$finish;
end
endmodule
