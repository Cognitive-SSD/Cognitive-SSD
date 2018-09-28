`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/30 18:35:16
// Design Name: 
// Module Name: Id_Detect
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


module Id_Detect
    #(
    parameter ID_WIDTH       = 32,
    parameter HASHCODE_WIDTH = 48,
    parameter DISTANCE_WIDTH = 6,
    parameter RAM_COUNTER    = 10 
    )
    (
    input  wire iSys_Clk,
    input  wire iSys_Rst_n,
    
    input  wire [ID_WIDTH-1:0]           iId_Number,
    input  wire [HASHCODE_WIDTH-1:0]     iHash_Code,
    
    output reg [ID_WIDTH-1:0]           oId_Number,
    output reg [HASHCODE_WIDTH-1:0]     oHash_Code,
    output reg                          oData_Enable
    );
    localparam SET_BIT     = 1'b1;
    localparam CLEAR_BIT   = 1'b0;
     
    reg       rWea;
    (* mark_debug = "true" *) wire      wDetect_Result;
    (* mark_debug = "true" *) reg       rDetect_Result;   //delay one cycle      
    BitMap  BM(
      .clka(iSys_Clk),
      .wea(rWea),
      .addra(oId_Number),
      .dina(SET_BIT),
      .clkb(iSys_Clk),
      .addrb(iId_Number),
      .doutb(wDetect_Result)
    );
    
    /*always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oId_Number      <= 0;
            oHash_Code      <= 0;
            oData_Enable    <= 0;
            rWea            <= 0;            
        end else if(rDetect_Result) begin    // this id already been computed 
            oId_Number      <= 0;
            oHash_Code      <= 0;
            oData_Enable    <= 0;
            rWea            <= 0;
        end else begin                      // this id not be compute
            oId_Number      <= iId_Number;
            oHash_Code      <= iHash_Code;
            oData_Enable    <= 1;
            rWea            <= 1;
        end
    end*/
    /*reg     rDelay_Detect_Result;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rDelay_Detect_Result <= 0;
        end else begin
            rDelay_Detect_Result <= rDetect_Result;
        end
    end*/
    reg [ID_WIDTH-1:0]          rDelay_iId_Number,rDelay_iId_Number_1;
    reg [HASHCODE_WIDTH-1:0]    rDelay_Hashcode,rDelay_Hashcode_1;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rDelay_iId_Number   <= 0;
            rDelay_Hashcode     <= 0;
            rDelay_iId_Number_1 <= 0;
            rDelay_Hashcode_1   <= 0;
        end else begin
            rDelay_iId_Number   <= iId_Number;
            rDelay_Hashcode     <= iHash_Code;
            rDelay_iId_Number_1 <= rDelay_iId_Number;
            rDelay_Hashcode_1   <= rDelay_Hashcode;
        end
    end  
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rDetect_Result <= 0;
        end else begin
            rDetect_Result <= wDetect_Result;
        end
    end
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oId_Number      <= 0;
            oHash_Code      <= 0;
            oData_Enable    <= 0;
            rWea            <= 0;            
        end else if(rDetect_Result) begin    // this id already been computed 
            oId_Number      <= 0;
            oHash_Code      <= 0;
            oData_Enable    <= 0;
            rWea            <= 0;
        end else begin                      // this id not be compute
            oId_Number      <= rDelay_iId_Number_1;
            oHash_Code      <= rDelay_Hashcode_1;
            oData_Enable    <= 1;
            rWea            <= 1;
        end
    end
    
    
    
    
endmodule
