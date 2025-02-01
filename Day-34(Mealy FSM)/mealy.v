`timescale 1ns / 1ps
module mealy(
    input in,clk,areset,
    output out
);
reg [1:0]state,next_state;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
always @ (*)begin
    state <= next_state;
end
always @ (posedge clk or posedge areset)begin
    if(areset) begin
        next_state <= s0;end
    else begin
        case(state)
            s0:begin
                if(in==1)begin
                    next_state <= s1; end
                else begin
                    next_state <= s0; end
            end
            s1:begin
                if(in==1)begin
                    next_state <= s1; end
                else begin
                    next_state <= s2; end
            end
            s2:begin
                if(in==1)begin
                    next_state <= s3; end
                else begin
                    next_state <= s0; end
            end
            s3:begin
                if(in==1)begin
                    next_state <= s1; end
                else begin
                    next_state <= s0; end
            end
            default:next_state <= s0;
        endcase   
    end
end
assign out = (state == s3 && in == 0)?1:0;
endmodule