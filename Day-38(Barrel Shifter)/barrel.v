`timescale 1ns / 1ps
module barrel #(parameter width=4)(
input [7:0]in,
input [width-1:0]k,
input dir,// dir ==1 for left shift and dir==0 for right shift
output reg [7:0]out
);
always @ (*) begin
    if(dir==1) begin  //left shift
        out <= in << k;
    end
    else begin      //right shift
        out <= in >> k;
    end
end
endmodule
