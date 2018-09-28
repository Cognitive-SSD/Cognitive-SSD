`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/02 14:11:20
// Design Name: 
// Module Name: SGID_Control
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


module SGID_Control
    #(
    parameter WEIGHT_DATA_WIDTH = 512,
    parameter ID_WIDTH       = 32,
    parameter HASHCODE_WIDTH = 48
    )
    (
    input wire iSys_Clk,
    input wire iSys_Rst_n,
    input wire [WEIGHT_DATA_WIDTH*4-1:0] iWeight_Data,
    input wire                           iQuery_Enable,
    input wire                           iFinish_Enable,
    input wire                           iCDMA_Finish,
    input wire                           iCDMA_Valid,
    input wire [ID_WIDTH-1:0]            iGenerate_ID,
    input wire                           iGenerate_Enable,

    output reg [ID_WIDTH-1:0]            oId_Number,
    output reg [HASHCODE_WIDTH-1:0]      oHash_Code,
    output reg                           oBuffer_Ready,
    output reg                           oGenerate_ID_Enable,
    
    output reg [ID_WIDTH-1:0]            oSource_Addr,
    output reg [ID_WIDTH-1:0]            oDest_Addr,
    output reg                           oCDMA_Enable
);
    localparam ID_HASH_WIDTH        = 80;
    localparam ID_HASH_REG_WIDTH    = 2048;
    localparam NEIGHBOR_NUMBER      = 25;
    reg [ID_WIDTH-1:0]                        rId_Number [NEIGHBOR_NUMBER-1:0];
    reg [HASHCODE_WIDTH-1:0]                  rHash_Code [NEIGHBOR_NUMBER-1:0];
    
    reg [7:0]                                 rInitial_Counter;
    reg [7:0]                                 rCounter;
    reg [31:0]                                rBuffer_Offset;
    reg                                       rStart_Process; //start kgraph search active;
    reg                                       rStart_Process_Able;
    reg                                       rGet_Weight_Data_Enable; //get weight data from weightbuffer;
    
    reg [ID_WIDTH-1:0]                        rID_Number_Initial;
    reg [HASHCODE_WIDTH-1:0]                  rHashcode_Initial;
    
    integer i;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            for(i=0;i<NEIGHBOR_NUMBER;i=i+1) begin
                rId_Number[i] <= 0;
                rHash_Code[i] <= 0;
            end
        end else begin
            for(i=0;i<NEIGHBOR_NUMBER;i=i+1) begin
                rId_Number[i] <= iWeight_Data[((ID_HASH_REG_WIDTH - ID_HASH_WIDTH*i)-1) -:ID_WIDTH];
                rHash_Code[i] <= iWeight_Data[((ID_HASH_REG_WIDTH - ID_HASH_WIDTH*i - ID_WIDTH)-1) -:HASHCODE_WIDTH];
            end
        end 
    end
                                 
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rStart_Process   <= 0;
            oId_Number       <= 0;
            oHash_Code       <= 0;
        end else if(iQuery_Enable && !iFinish_Enable) begin
            oId_Number       <= iWeight_Data[((ID_HASH_REG_WIDTH - ID_HASH_WIDTH*rInitial_Counter)-1) -:ID_WIDTH];
            oHash_Code       <= iWeight_Data[((ID_HASH_REG_WIDTH - ID_HASH_WIDTH*rInitial_Counter - ID_WIDTH)-1) -:HASHCODE_WIDTH];
        end else begin
            rStart_Process   <= 0;
            oId_Number       <= 0;
            oHash_Code       <= 0;
        end
    end
    
    
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rInitial_Counter <= 0;       
        end else if(iQuery_Enable && !iFinish_Enable) begin
            rInitial_Counter <= (rInitial_Counter ==24)? 0: rInitial_Counter + 1'b1;
        end else begin
            rInitial_Counter <= 0;
        end
    end 
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n)begin
            oBuffer_Ready <= 0;
        end else if(rInitial_Counter == 21)begin
            oBuffer_Ready <= 1;
        end else begin
            oBuffer_Ready <= 0;
        end
    end
    
    
    
    
    
    //***************control state machine*******************************
    localparam IDLE     = 2'b00;
    localparam RUNNING  = 2'b01;
    localparam FINAL    = 2'b10;
    localparam NONE     = 2'b11;
    
    localparam DDR_ADDR = 32'h2000_0000;
    localparam OFFSET   = 32'h0000_0002;
    localparam BUFFER_ADDR = 32'hC000_0000;

    
     (* mark_debug = "true" *) reg [1:0]          rState;
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rState              <= IDLE;
            oGenerate_ID_Enable <= 0;
            rCounter            <= 0;
            rBuffer_Offset      <= 0;
            oSource_Addr        <= 0;
            oDest_Addr          <= 0;
            oCDMA_Enable        <= 0;
        end else begin
            case(rState)
                IDLE:begin
                        if(iFinish_Enable) begin
                            rState <= FINAL;
                            oGenerate_ID_Enable <= 0;
                        end else if(iCDMA_Valid && iGenerate_Enable) begin
                            rState <= RUNNING;
                            oGenerate_ID_Enable <= 1;
                            oCDMA_Enable        <= 0;
                        end else begin
                            rState <= IDLE;
                            oGenerate_ID_Enable <= 0;
                            oCDMA_Enable        <= 0;
                        end
                    end
             RUNNING:begin
                        if(iFinish_Enable) begin
                            rState <= FINAL;
                        end else if(oGenerate_ID_Enable) begin
                            oGenerate_ID_Enable <= 0;
                            rBuffer_Offset      <= (rBuffer_Offset == 32'h600)? 32'h0: rBuffer_Offset + 32'h100;
                            oDest_Addr          <= BUFFER_ADDR + rBuffer_Offset;
                        end else if(iCDMA_Finish) begin
                            oGenerate_ID_Enable <= 0;
                            rState              <= IDLE;  
                        end else begin
                            oSource_Addr        <= DDR_ADDR + (iGenerate_ID+OFFSET) * 32'h0000_0100;
                            oCDMA_Enable        <= 1'b1;
                            rState <= RUNNING;                         
                        end
                    end
               FINAL:begin
                        if(!iQuery_Enable) begin
                            rState              <= IDLE; 
                        end else begin
                            oGenerate_ID_Enable     <= 0;
                            rState                  <= FINAL;
                            rCounter                <= 0;
                            rBuffer_Offset          <= 0;
                            oCDMA_Enable            <= 0;
                        end 
                    end
                NONE:begin
                    end
            endcase     
        end
    end 

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


endmodule