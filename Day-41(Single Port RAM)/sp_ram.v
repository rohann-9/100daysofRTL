`timescale 1ns / 1ps
module sp_ram
#(parameter ADDRESS_WIDTH=4,
parameter DATA_WIDTH=8,
parameter DEPTH=16
)(
input clk,en,w_r,             // w_r : 1 for write and 0 for read operation              
input [ADDRESS_WIDTH-1:0]add,
input [DATA_WIDTH-1:0]data_in,
output [DATA_WIDTH-1:0]data_out
);
reg [DATA_WIDTH-1:0]memory[DEPTH-1:0];
reg [DATA_WIDTH-1:0]temp_data;
always @ (posedge clk)begin
    if(en) begin
        if(w_r)begin
            memory[add]<=data_in;
        end else begin
            temp_data<=memory[add];end
    end
end
assign data_out=(en&~w_r)?temp_data:'hz;
endmodule
