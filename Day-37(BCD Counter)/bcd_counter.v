`timescale 1ns / 1ps
module bcd_counter(
    input clk,reset,en,
    output reg [3:0]bcd1,bcd0
);
always @ (posedge clk) begin
    if(reset) begin
        bcd1<=0;
        bcd0<=0;
    end
    else if(en) begin
        if(bcd0==4'b1001)begin
            bcd0<=0;
            if(bcd1==4'b1001)begin
                bcd1<=0;
            end
            else begin
                bcd1<=bcd1+1;
            end
        end
        else begin
            bcd0<=bcd0+1;
        end
    end
end
endmodule
