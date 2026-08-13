`timescale 1ns / 1ps
module tlc_tb();
reg clk,reset_n;
wire [2:0]AS,AT,BS,BT,CL,CR; 
tlc DUT(
.clk(clk),
.reset_n(reset_n),
.AS(AS),.AT(AT),
.BS(BS),.BT(BT),
.CL(CL),.CR(CR)
);
initial begin
    clk = 0;
end
always #5 clk = ~clk;
initial begin
    reset_n = 0; 
    #12;
    reset_n = 1;
    #700;
    reset_n = 0;
    #7;
    reset_n = 700;
    #700
    $finish;
end
endmodule
