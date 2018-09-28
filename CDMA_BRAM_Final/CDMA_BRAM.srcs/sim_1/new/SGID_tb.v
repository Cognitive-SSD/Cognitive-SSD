`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/31 13:36:36
// Design Name: 
// Module Name: SGID_tb
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


module SGID_tb(

    );
    parameter ID_WIDTH       = 32;
    parameter HASHCODE_WIDTH = 48;
    parameter DISTANCE_WIDTH = 6;
    parameter RAM_COUNTER    = 10;
    reg clk;
    reg rst_n;
    reg rData_Enable;
    reg [ID_WIDTH-1:0]          iID_Number;
    reg [HASHCODE_WIDTH-1:0]    iQuery_Code;
    reg [HASHCODE_WIDTH-1:0]    iHash_Code;
    
    reg iGenerate_ID_Enable;
    wire [11:0]         oSum_Ram_Counter;
    wire [ID_WIDTH-1:0] oGenerate_ID;
    
    reg [11:0]          iOut_Addr;
    wire [ID_WIDTH-1:0] oFinish_ID;
    always #50 clk = ~clk;
    initial begin
        rst_n = 0;
        clk = 0;
        iGenerate_ID_Enable = 0;
        rData_Enable = 0;
        //iQuery_Code = rID_Hashcode[50][47:0];
        #50;
        rst_n = 1;
        //iQuery_Code = rID_Hashcode[50][47:0];     
    end
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            iOut_Addr <= 0;
        end else begin
            iOut_Addr <= iOut_Addr + 1'b1;
        end
    end
        
    Store_Gen_ID_Top
    SGID_TOP(
        .iSys_Clk(clk),
        .iSys_Rst_n(rst_n),
        .iData_Enable(rData_Enable),
        .iId_Number(iID_Number),
        .iQuery_Code(iQuery_Code),
        .iHash_Code(iHash_Code),
        
        .iFinish_Enable(1),
        .iOut_Addr(iOut_Addr),
        
        .iGenerate_ID_Enable(iGenerate_ID_Enable),
        .oSum_Ram_Counter(oSum_Ram_Counter),
        .oGenerate_ID(oGenerate_ID),
        .oFinish_ID(oFinish_ID)
    );     
endmodule
