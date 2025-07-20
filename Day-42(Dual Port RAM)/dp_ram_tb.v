`timescale 1ns / 1ps
module dp_ram_tb();
parameter DATA_WIDTH=8;
parameter ADDRESS_WIDTH=6;
parameter DEPTH=64;
reg [DATA_WIDTH-1:0]data_1,data_2;
reg [ADDRESS_WIDTH-1:0]add_1,add_2;
reg clk,en,wr1,wr2;
wire [DATA_WIDTH-1:0]out_1,out_2;
dp_ram DUT(.data_1(data_1),.data_2(data_2),.clk(clk),.en(en),.wr1(wr1),.wr2(wr2),.add_1(add_1),.add_2(add_2),.out_1(out_1),.out_2(out_2));
initial begin clk=0; end
always #5 clk=~clk;
initial begin
en=0;#5
en=1;
data_1=8'hab;add_1=4'd1;wr1=1;data_2=8'hbc;add_2=4'd2;wr2=1;#50 //Both Port-1 & Port-2 writes data
data_1=8'hcd;add_1=4'd3;wr1=1;add_2=4'd1;wr2=0;#50              //Port-1 writes and Port-2 reads data
add_1=4'd2;wr1=0;data_2=8'hde;add_2=4'd4;wr2=1;#50              //Port-1 reads and Port-2 writes data
add_1=4'd3;wr1=0;add_2=4'd4;wr2=0;#50                           //Both Port-1 & Port-2 reads data
$finish;
end
endmodule
