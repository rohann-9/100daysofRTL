`timescale 1ns / 1ps
module gcd_using_fsm #(
parameter n=8)(
input clk, reset,
input [n-1:0] x, y,
output reg [n-1:0] gcd
);
reg [2:0] state;
reg [n-1:0] temp_1, temp_2;
localparam s_load = 3'b000,
           s_compare = 3'b001,
           s_subx = 3'b010,
           s_suby = 3'b011,
           s_done = 3'b100;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= s_load;
        gcd <= 0; end
    else begin
        case(state)
            s_load: begin
                    temp_1 <= x;
                    temp_2 <= y;
                    state <= s_compare; 
            end
            s_compare: begin
                if (temp_1 == temp_2) begin
                    gcd <= temp_1; 
                    state <= s_done; end
                else if (temp_1 > temp_2) begin
                    state <= s_subx; end
                else if (temp_2 > temp_1) begin
                    state <= s_suby; end
            end
            s_subx:begin
                temp_1 <= temp_1 - temp_2;
                state <= s_compare; 
            end
            s_suby:begin
                temp_2 <= temp_2 - temp_1;
                state <= s_compare;
            end
            s_done: begin
                state <= s_load; 
            end
        default:state <= s_load;
        endcase 
   end
end
endmodule