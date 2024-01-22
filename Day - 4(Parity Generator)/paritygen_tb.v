`timescale 1ns / 1ps
module paritygen_tb();
parameter N=6;
reg [N-1:0]i;
wire evenpar,oddpar;
paritygen DUT(i,evenpar,oddpar);
initial
begin
i=6'b101100;#5
i=6'b001001;#5
i=6'b111000;#5
i=6'b110000;#5
$finish;
end
endmodule
