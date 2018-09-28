`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/05 09:44:34
// Design Name: 
// Module Name: One_Clock
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


module One_Clock(
    input wire iSys_Clk,
    input wire iSys_Rst_n,
    input wire iEnable,
    output reg oWave
    );
    
    reg        rCount;
    reg        rCount_Enable;
    always @(posedge iEnable or negedge rCount) begin
        if(!rCount) begin
            rCount_Enable = 0;
            oWave         = 0;
        end else if(iEnable) begin
            rCount_Enable = 1;
            oWave         = 1;
        end
    end
    
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rCount <= 1'b1;
        end else if(!rCount) begin
            rCount <= 1'b1;
        end else if(rCount_Enable) begin
            rCount <= rCount - 1'b1;
        end
    end
endmodule
