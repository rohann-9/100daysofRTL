`timescale 1ns / 1ps
/*
AS - A Straight
AT - A Turn
BS - B Straight
BT - B Turn
CL - C Left
CR - C Right 
*//*
Outputs are in the order {R,Y,G} 
*/
module tlc(
    input clk,reset_n,
    output reg [2:0]AS,AT,BS,BT,CL,CR
);
localparam S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101;
localparam delay5=5,delay2=2;
reg [3:0]count;
reg [2:0]present_state,next_state;
always @ (posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        present_state <= S0;
        count <= 0;
    end
    else begin
        present_state <= next_state;
        if(next_state!=present_state)
            count <= 0;
        else 
            count <= count + 1;
    end
end
always @ (*) begin
    case(present_state)
        S0:begin
            next_state = (count<delay5)?S0:S1;
        end
        S1:begin
            next_state = (count<delay2)?S1:S2;
        end
        S2:begin
            next_state = (count<delay5)?S2:S3;
        end
        S3:begin
            next_state = (count<delay2)?S3:S4;
        end
        S4:begin
            next_state = (count<delay5)?S4:S5;
        end
        S5:begin
            next_state = (count<delay2)?S5:S0;
        end
        default:begin
            next_state = S0;
        end
    endcase
end
always @ (*)begin
    case(present_state)
        S0: begin 
            AS = 3'b001;
            AT = 3'b001;
            BS = 3'b100; 
            BT = 3'b100;      
            CL = 3'b001;
            CR = 3'b100;
        end
        S1: begin
            AS = 3'b001;
            AT = 3'b010;
            BS = 3'b100; 
            BT = 3'b100;      
            CL = 3'b010;
            CR = 3'b100;
        end
        S2: begin
            AS = 3'b001;
            AT = 3'b100;
            BS = 3'b001; 
            BT = 3'b001;      
            CL = 3'b100;
            CR = 3'b100;
        end
        S3: begin
            AS = 3'b010;
            AT = 3'b100;
            BS = 3'b010; 
            BT = 3'b001;      
            CL = 3'b100;
            CR = 3'b100;
        end
        S4: begin
            AS = 3'b100;
            AT = 3'b100;
            BS = 3'b100; 
            BT = 3'b001;      
            CL = 3'b001;
            CR = 3'b001;
        end
        S5: begin
            AS = 3'b100;
            AT = 3'b100;
            BS = 3'b100; 
            BT = 3'b010;      
            CL = 3'b001;
            CR = 3'b010;
        end
        default: begin 
            AS = 3'b001;
            AT = 3'b001;
            BS = 3'b100; 
            BT = 3'b100;      
            CL = 3'b001;
            CR = 3'b100;
        end               
    endcase
end
endmodule