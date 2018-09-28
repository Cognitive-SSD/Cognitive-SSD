`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/31 12:14:10
// Design Name: 
// Module Name: Store_ID
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

module Store_ID
    #(
    parameter ID_WIDTH       = 32,
    parameter RAM_WIDTH      = 32,
    parameter RAM_DEPTH      = 4096,
    parameter RAM_COUNTER    = 10
    )
    (
    input wire                              iSys_Clk,
    input wire                              iSys_Rst_n,
    input wire                              iRam_Wen,
    input wire [ID_WIDTH-1:0]               iID_Number,
    
    input wire                              iGenerate_ID_Enable,
    input wire                              iFinish_Enable,           //when finish search id this signal will set active
    input wire [clogb2(RAM_DEPTH-1)-1:0]    iOut_Addr,
    
    output wire                             oUpdate_Ram,
    output reg                              oFull_RAM,
    output wire[ID_WIDTH-1:0]               oGenerate_ID,
    output wire[clogb2(RAM_DEPTH-1)-1:0]    oRam_Id_Counter,
    
    output wire[ID_WIDTH-1:0]               oFinish_ID              // output id to cdma and transfer to dram
    );
    localparam NUMBER = 12'h35;
    reg [clogb2(RAM_DEPTH-1)-1:0]   rProcess_counter = {clogb2(RAM_DEPTH-1){1'b0}};
    reg [clogb2(RAM_DEPTH-1)-1:0]   rCounter         = {clogb2(RAM_DEPTH-1){1'b0}};
    reg [clogb2(RAM_DEPTH-1)-1:0]   Counter          = NUMBER;
    
    wire [clogb2(RAM_DEPTH-1)-1:0] wMux_Addr;
    
    assign oRam_Id_Counter =  rCounter;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rCounter         <= 0;
            oFull_RAM        <= 0;
        end else if(iRam_Wen) begin
            if(rCounter == 4096) begin
                oFull_RAM <= 1;
                rCounter  <= rCounter;
            end else begin
                oFull_RAM <= 0;
                rCounter  <= rCounter + 1'b1;
            end
        end
    end
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rProcess_counter <= 0;
        end else if(iGenerate_ID_Enable) begin
            rProcess_counter <= rProcess_counter + 1'b1;
        end else begin
            rProcess_counter <= rProcess_counter;
        end
    end
    
    assign wMux_Addr    = (iFinish_Enable) ? iOut_Addr : rProcess_counter;
    assign oFinish_ID   = (iFinish_Enable) ? oGenerate_ID : 0;
    
    assign oUpdate_Ram = (rProcess_counter == rCounter) ? 0 : 1;
    //assign oRam_Id_Counter = rCounter;
    DIS_0_MEMORY D_0_RAM(
        .a(rCounter),       //input addr
        .d(iID_Number),     //input data
        .dpra(wMux_Addr), //output addr
        .clk(iSys_Clk),
        .we(iRam_Wen),
        .dpo(oGenerate_ID)
    );    
    
    function integer clogb2;
        input integer depth;
            for (clogb2=0; depth>0; clogb2=clogb2+1)
                depth = depth >> 1;
          
    endfunction    
    
    
    
endmodule
