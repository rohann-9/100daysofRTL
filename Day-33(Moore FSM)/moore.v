`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 22:32:48
// Design Name: 
// Module Name: moore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module moore(
    input in,clk,areset,
    output out
);
reg [1:0]state,next_state;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
always @ (*) begin
    state <= next_state;
end
always @ (posedge clk or posedge areset) begin
    if(areset) begin
        next_state <= s0; end
    else begin
        case(state) 
            s0:begin
                if(in==1)begin
                    next_state <= s1;end
                else begin
                    next_state <= s0;end
            end
            s1:begin
                if(in==1)begin
                    next_state <= s2;end
                else begin
                    next_state <= s0;end                    
            end
            s2:begin
                if(in==1)begin
                    next_state <= s2;end
                else begin
                    next_state <= s3;end
            end
            s3:begin
                if(in==1)begin
                    next_state <= s1;end
                else begin
                    next_state <= s0;end
            end
            default:next_state <= s0;
        endcase
    end
end
assign out = (state == s3)?1:0;
endmodule
