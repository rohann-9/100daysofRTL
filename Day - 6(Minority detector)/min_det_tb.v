`timescale 1ns / 1ps
module min_det_tb();
reg a,b,c;
wire y;
min_det DUT(a,b,c,y);
initial
begin
a=0;b=0;c=0;#5
a=0;b=0;c=1;#5
a=0;b=1;c=0;#5
a=0;b=1;c=1;#5
a=1;b=0;c=0;#5
a=1;b=0;c=1;#5
a=1;b=1;c=0;#5
a=1;b=1;c=1;#5
$finish;
end
endmodule
