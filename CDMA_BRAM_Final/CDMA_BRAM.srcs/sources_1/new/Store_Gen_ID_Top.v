`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/31 12:29:02
// Design Name: 
// Module Name: Store_Gen_ID_Top
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

module Store_Gen_ID_Top
    #(
    parameter ID_WIDTH       = 32,
    parameter HASHCODE_WIDTH = 48,
    parameter DISTANCE_WIDTH = 6,
    parameter RAM_COUNTER    = 10,
    parameter USER_K         = 100 
    )
    (
    input wire iSys_Clk,
    input wire iSys_Rst_n,
    input wire [ID_WIDTH-1:0]               iId_Number,
    input wire [HASHCODE_WIDTH-1:0]         iQuery_Code,
    input wire [HASHCODE_WIDTH-1:0]         iHash_Code,
    
    input wire                              iGenerate_ID_Enable,
    input wire [clogb2(RAM_DEPTH-1)-1:0]    iOut_Addr,

    output wire                             oGenerate_Enable,
    output wire [ID_WIDTH-1:0]              oGenerate_ID,
    output wire                             oFinish_Enable,   
    output wire [ID_WIDTH-1:0]              oFinish_ID
);
    localparam INITIAL_VALUE = 10'b0000000001;
    localparam RAM_DEPTH     = 4096;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              wID_2_DC_Id_Number;
    (* mark_debug = "true" *) wire [HASHCODE_WIDTH-1:0]        wID_2_DC_Hash_Code;
    (* mark_debug = "true" *) wire                             wID_2_DC_Data_Enable;
    
    
    wire                             wDC_2_DM_Valid;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              wDC_2_DM_ID_Number;
    (* mark_debug = "true" *) wire [DISTANCE_WIDTH-1:0]        wDC_2_DM_Distance_Value;       
    
    (* mark_debug = "true" *) wire [RAM_COUNTER-1:0]           wDM_2_SID_Ram_Wen;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              wDM_2_SID_ID_Number;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              wiID_Number_Debug;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              wiHash_Code_Debug; 
    assign wiID_Number_Debug = iId_Number;
    assign wiHash_Code_Debug = iHash_Code;
    
    
    Id_Detect #(
        .ID_WIDTH(32),
        .HASHCODE_WIDTH(48),
        .DISTANCE_WIDTH(6),
        .RAM_COUNTER(10)         
    )
    ID(
        .iSys_Clk(iSys_Clk),
        .iSys_Rst_n(iSys_Rst_n),
        .iId_Number(iId_Number),
        .iHash_Code(iHash_Code),
        
        .oId_Number(wID_2_DC_Id_Number),
        .oHash_Code(wID_2_DC_Hash_Code),
        .oData_Enable(wID_2_DC_Data_Enable)
    );
    
    
    
    Distance_compute #(
        .ID_WIDTH(32),
        .HASHCODE_WIDTH(48),
        .DISTANCE_WIDTH(6),
        .RAM_COUNTER(10) 
    )
    DC(
        .iSys_Clk(iSys_Clk),
        .iSys_Rst_n(iSys_Rst_n),
        .iData_Enable(wID_2_DC_Data_Enable),
        .iId_Number(wID_2_DC_Id_Number),           //iId_Number
        .iQuery_Code(iQuery_Code),         //iQuery_Code
        .iHash_Code(wID_2_DC_Hash_Code),          //iHash_Code
        
        .oValid(wDC_2_DM_Valid),
        .oId_Number(wDC_2_DM_ID_Number),
        .oDistance_Value(wDC_2_DM_Distance_Value)     
    );    
    Dis_mux #(
        .ID_WIDTH(32),
        .HASHCODE_WIDTH(48),
        .DISTANCE_WIDTH(6),
        .RAM_COUNTER(10) 
    )
    DM (
        .iSys_Clk(iSys_Clk),
        .iSys_Rst_n(iSys_Rst_n),
        .iData_Valid(wDC_2_DM_Valid),
        .iId_Number(wDC_2_DM_ID_Number),
        .iDistance_Value(wDC_2_DM_Distance_Value),
        
        .oRam_Wen(wDM_2_SID_Ram_Wen),
        .oID_Number(wDM_2_SID_ID_Number)
    );
    
    Store_Out_ID
        #(
        .ID_WIDTH        (32),
        .HASHCODE_WIDTH  (48),
        .DISTANCE_WIDTH  (6),
        .RAM_COUNTER     (10),
        .USER_K          (USER_K) 
        )
    SOID(
        .iSys_Clk(iSys_Clk),
        .iSys_Rst_n(iSys_Rst_n),                              
        
        .iGenerate_ID_Enable(iGenerate_ID_Enable),
        .iDM_2_SID_Ram_Wen(wDM_2_SID_Ram_Wen),
        .iDM_2_SID_ID_Number(wDM_2_SID_ID_Number),
    
        .iOut_Addr(iOut_Addr),
    
        .oFinish_Enable(oFinish_Enable),
        .oGenerate_Enable(oGenerate_Enable),
        
        .oGenerate_ID(oGenerate_ID),
        .oFinish_ID(oFinish_ID)
    );

    function integer clogb2;
        input integer depth;
            for (clogb2=0; depth>0; clogb2=clogb2+1)
                depth = depth >> 1;
          
    endfunction     
    
endmodule
