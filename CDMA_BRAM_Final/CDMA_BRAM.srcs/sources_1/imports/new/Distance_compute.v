`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/30 13:28:52
// Design Name: 
// Module Name: Distance_compute
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


module Distance_compute 
    #(
    parameter ID_WIDTH       = 32,
    parameter HASHCODE_WIDTH = 48,
    parameter DISTANCE_WIDTH = 6,
    parameter RAM_COUNTER    = 10 
    )
    (
    input wire  iSys_Clk,
    input wire  iSys_Rst_n,
    input wire  iData_Enable,                      //when new id enter compute engine and this signal will be set active 
    input wire  [ID_WIDTH-1:0]       iId_Number,
    input wire  [HASHCODE_WIDTH-1:0] iQuery_Code,
    input wire  [HASHCODE_WIDTH-1:0] iHash_Code,
    
    output wire                      oValid,       // when iStart_Compute active ,after 4 cycle this signal will be set active
    output wire [ID_WIDTH-1:0]       oId_Number,
    output wire [DISTANCE_WIDTH-1:0] oDistance_Value
    
    );
    
    localparam M1  = 48'h555555555555;
    localparam M2  = 48'h333333333333;
    localparam M4  = 48'h0f0f0f0f0f0f;
    localparam H01 = 48'h010101010101;
    
    localparam ENABLE = 1'b1;
    
    localparam IDLE    = 2'b00;
    localparam RUNNING = 2'b01;
    localparam FINISH  = 2'b10;
    
    reg [HASHCODE_WIDTH-1:0] rLevel_0;
    reg [ID_WIDTH-1:0]       rLevel_0_Id;
    reg                      rLevel_0_Valid;
    reg [HASHCODE_WIDTH-1:0] rLevel_1;
    reg [ID_WIDTH-1:0]       rLevel_1_Id;
    reg                      rLevel_1_Valid;
    reg [HASHCODE_WIDTH-1:0] rLevel_2;
    reg [ID_WIDTH-1:0]       rLevel_2_Id;
    reg                      rLevel_2_Valid;
    reg [HASHCODE_WIDTH-1:0] rLevel_3;
    reg [ID_WIDTH-1:0]       rLevel_3_Id;
    reg                      rLevel_3_Valid;
    
    reg                      rActive_Cmp;  //active compute engine
    reg [1:0]                rCounter;     //this signal is to compute the end compute                      
    reg [1:0]                rState = IDLE;
    /*always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
        end else begin
            case (rState) 
                IDLE  :begin
                        if(iStart_Compute) begin
                            rState <= RUNNING;
                        end else begin
                            rState <= IDLE;
                        end
                       end
               RUNNING:begin
                        if(iStart_Compute) begin
                            rState   <= RUNNING;
                            if(rCounter == 3 ) begin
                                oValid <= 1;
                            end else begin
                                oValid <= oValid;
                            end
                            rCounter <= rCounter + 1'b1;
                        end else begin
                            rState   <= WAITING;
                        end

                       end
               WAITING:begin
                        if(iStart_Compute) begin
                            rState   <= RUNNING;
                        end else if( begin
                            rState   <= WAITING;
                        end
                       end
                FINISH:begin
                        oValid <= 1;
                        if(iStart_Compute) begin
                            rState <= RUNNING;
                        end else begin
                        end
                       end
        end
    end*/
    
    
    
    
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rLevel_0       <= 0;
            rLevel_0_Id    <= 0;
            rLevel_0_Valid <= 0;
        end else begin
            rLevel_0        <= iQuery_Code ^ iHash_Code;
            rLevel_0_Id     <= iId_Number;
            rLevel_0_Valid  <= iData_Enable;
        end
    end
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rLevel_1    <= 0;
            rLevel_1_Id <= 0;
            rLevel_1_Valid <= 0;
        end else begin
            rLevel_1        <= rLevel_0 - ((rLevel_0 >> 1) & M1);
            rLevel_1_Id     <= rLevel_0_Id; 
            rLevel_1_Valid  <= rLevel_0_Valid; 
        end
    end
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rLevel_2    <= 0;
            rLevel_2_Id <= 0;
            rLevel_2_Valid <= 0;
        end else begin
            rLevel_2        <= (rLevel_1 & M2) + ((rLevel_1>>2) & M2);
            rLevel_2_Id     <= rLevel_1_Id;
            rLevel_2_Valid  <= rLevel_1_Valid; 
        end            
    end
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rLevel_3    <= 0;
            rLevel_3_Id <= 0;
            rLevel_3_Valid <= 0;
        end else begin
            rLevel_3        <= (rLevel_2 + (rLevel_2>>4)) & M4;
            rLevel_3_Id     <= rLevel_2_Id;
            rLevel_3_Valid  <= rLevel_2_Valid; 
        end 
    end
    
    assign oDistance_Value = (rLevel_3 * H01) >> 40;
    assign oId_Number      = rLevel_3_Id;
    assign oValid          = rLevel_3_Valid;
    
endmodule
