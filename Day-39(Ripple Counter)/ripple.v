`timescale 1ns / 1ps
module dff(
input d,clk,reset,
output reg q,
output qn
);
always @ (posedge clk or posedge reset) begin
    if(reset) begin
        q <= 0;
    end
    else begin
        q <= d;
    end
end
assign qn = ~q;
endmodule

module ripple(
input reset,clk,
output [3:0]q
);
wire q0,qn0,q1,qn1,q2,qn2,q3,qn3;
dff in1(.d(qn0),.clk(clk),.reset(reset),.q(q0),.qn(qn0));
dff in2(.d(qn1),.clk(q0),.reset(reset),.q(q1),.qn(qn1));
dff in3(.d(qn2),.clk(q1),.reset(reset),.q(q2),.qn(qn2));
dff in4(.d(qn3),.clk(q2),.reset(reset),.q(q3),.qn(qn3));
assign q = {qn3,qn2,qn1,qn0};
endmodule
