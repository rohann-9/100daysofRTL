`timescale 1ns / 1ps
module dp_ram
#(parameter DATA_WIDTH=8,
parameter ADDRESS_WIDTH=4,
parameter DEPTH=64
)(
input [DATA_WIDTH-1:0]data_1,data_2,
input [ADDRESS_WIDTH-1:0]add_1,add_2,
input clk,en,wr1,wr2,          // 1 for write and 0 for read
output [DATA_WIDTH-1:0]out_1,out_2
);
reg [DATA_WIDTH-1:0]memory[DEPTH-1:0];
reg [DATA_WIDTH-1:0]out_1,out_2;
always @ (posedge clk)begin
    if(en)begin
        if(wr1)begin
            memory[add_1]<=data_1;
        end else begin
            out_1<=memory[add_1];
        end
        if(wr2)begin
            memory[add_2]<=data_2;
        end else begin
            out_2<=memory[add_2];
        end
    end else begin
        out_1<='hz;
        out_2<='hz;
    end    
end
endmodule
