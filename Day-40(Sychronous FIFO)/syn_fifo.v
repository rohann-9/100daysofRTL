`timescale 1ns / 1ps
module syn_fifo(
input clk, wr, rd, rst,
input [7:0] data_in,
output reg [7:0] data_out,
output full, empty
);
  reg [7:0] fifo[15:0];       // 16 memory locations each 8-bit wide
  reg [4:0] wr_ptr, rd_ptr;   // 4-bit pointers for 16 entries and an extra bit for wrap flag
always @(posedge clk) begin
    if (rst) begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        data_out <= 0;
    end else begin
        if (wr && !full) begin
            fifo[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
        end
        if (rd && !empty) begin
            data_out <= fifo[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
    end
end
assign full = ((wr_ptr[3:0] == rd_ptr[3:0]) && (wr_ptr[4] != rd_ptr[4]));
assign empty = ((wr_ptr == rd_ptr));
endmodule
