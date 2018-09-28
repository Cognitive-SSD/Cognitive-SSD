`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/24 21:24:06
// Design Name: 
// Module Name: Communciate
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


module Communciate(
    input iSys_Clk,
    input iSys_Rst_n,
    input [31:0] iInfo_rev,
    output [31:0] oInfo_send,
    output  oBuffer_ready,
    output  oQuery_ready
    );
    
    localparam Reg_Width = 32;
    
    (* mark_debug = "true" *) reg [Reg_Width-1:0]   oInfo_send;
    (* mark_debug = "true" *) reg                   oBuffer_ready;
    (* mark_debug = "true" *) reg                   oQuery_ready;       
    (* mark_debug = "true" *) reg [1:0]             rState;

    always @(posedge iSys_Clk or negedge iSys_Rst_n ) begin 
        if(!iSys_Rst_n) begin
            oInfo_send<=0;
            oBuffer_ready <= 1'b0;
            oQuery_ready <= 1'b0;
            rState <= 2'b00;
        end
        else begin
            case(rState)
                2'b00:begin
                    if(iInfo_rev[0])begin
                        rState <= 2'b01;
                        oInfo_send[0] <=1'b0;
                        oBuffer_ready <=1'b1;
                        oQuery_ready  <=1'b0;
                    end else if(iInfo_rev[2])begin
                        rState <= 2'b10;
                        oInfo_send[2] <= 1'b0;
                        oQuery_ready  <= 1'b1;
                        oBuffer_ready <= 1'b0;
                    end else begin
                        rState <= 2'b00;
                        oBuffer_ready <=1'b0;
                        oQuery_ready  <=1'b0;                       
                    end
                end
                2'b01:begin
                    if(iInfo_rev[1])begin
                        rState <= 2'b00;
                        oInfo_send[1] <= 1'b0;
                        oBuffer_ready <= 1'b0;
                        oQuery_ready  <= 1'b0;
                    end else begin
                        rState <= 2'b01;
                        oBuffer_ready <= 1'b1;
                        oQuery_ready  <= 1'b0;
                    end
                end
                2'b10:begin
                    if(iInfo_rev[3])begin
                        rState <= 2'b00;
                        oInfo_send[3] <= 1'b0;
                        oQuery_ready  <= 1'b0;
                        oBuffer_ready <= 1'b0;
                    end else begin
                        rState <= 2'b10;
                        oQuery_ready  <= 1'b1;
                        oBuffer_ready <= 1'b0;
                    end
                end
                default:begin
                    rState <= 2'b00;
                    oInfo_send <= 0;
                    oBuffer_ready <= 0;
                end
                
            endcase
        end
    end
                      
endmodule
