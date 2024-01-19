`timescale 1ns / 1ps
module prio_tb();
reg [3:0]i;
wire [1:0]y;
prio DUT(i,y);
initial
begin
i=4'b0000;#5
i=4'b0001;#5
i=4'b0011;#5
i=4'b0101;#5
i=4'b1001;#5
$finish;
end
endmodule
