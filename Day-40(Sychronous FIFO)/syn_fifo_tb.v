`timescale 1ns / 1ps
module syn_fifo_tb();
reg clk,wr,rd,rst;
reg [7:0]data_in;
wire [7:0]data_out;
wire full,empty;
syn_fifo DUT(.clk(clk),.wr(wr),.rd(rd),.rst(rst),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));
initial clk=0;
always #5 clk=~clk;
integer i;
initial begin
    wr = 0;
    rd = 0;
    data_in = 8'h00;
    rst = 1;#20
    rst = 0;
    for (i = 0; i < 17; i = i + 1) begin
      @(posedge clk);
      wr <= 1;
      data_in <= i;
    end
    @(posedge clk);
    wr = 0;
    @(posedge clk);
    for (i = 0; i < 17; i = i + 1) begin
      @(posedge clk);
      rd = 1;
    end
    @(posedge clk);
    rd = 0;#50
    $finish;
end
endmodule
