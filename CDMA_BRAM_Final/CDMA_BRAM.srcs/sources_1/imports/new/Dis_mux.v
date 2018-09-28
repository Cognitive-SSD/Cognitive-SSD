`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/29 21:50:48
// Design Name: 
// Module Name: Dis_mux
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


module Dis_mux
    #(
    parameter ID_WIDTH       = 32,
    parameter HASHCODE_WIDTH = 48,
    parameter DISTANCE_WIDTH = 6,
    parameter RAM_COUNTER    = 10 
    )
    (
    input wire iSys_Clk,
    input wire iSys_Rst_n,
    input wire iData_Valid,
    input wire [ID_WIDTH-1:0]               iId_Number,
    input wire [DISTANCE_WIDTH-1:0]         iDistance_Value,
    
    output reg [RAM_COUNTER-1:0]            oRam_Wen,
    output reg [ID_WIDTH-1:0]               oID_Number
    );
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oRam_Wen   <= 0;        
        end else if(iData_Valid) begin
            case(iDistance_Value)
                0:begin
                    oRam_Wen <= 10'b0000000001;
                  end
                1:begin
                    oRam_Wen <= 10'b0000000010;
                  end
                2:begin
                    oRam_Wen <= 10'b0000000100;
                  end
                3:begin
                    oRam_Wen <= 10'b0000001000;
                  end
                4:begin
                    oRam_Wen <= 10'b0000010000;
                  end
                5:begin
                    oRam_Wen <= 10'b0000100000;
                  end
                6:begin
                    oRam_Wen <= 10'b0001000000;
                  end
                7:begin
                    oRam_Wen <= 10'b0010000000;
                  end 
                8:begin
                    oRam_Wen <= 10'b0100000000;
                  end
                9:begin
                    oRam_Wen <= 10'b1000000000;
                  end
          default:begin
                    oRam_Wen <= 10'b0000000000;
                  end
            endcase
        end else begin
            oRam_Wen   <= 0;
        end
    end 
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oID_Number <= 0;
        end else begin
            oID_Number <= iId_Number;
        end
    end
      
    //assign oID_Number = iId_Number;
endmodule
