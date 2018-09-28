`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/02 09:35:35
// Design Name: 
// Module Name: Store_Out_ID
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

module Store_Out_ID
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
    
    input wire                               iGenerate_ID_Enable,
    input wire [RAM_COUNTER-1:0]             iDM_2_SID_Ram_Wen,
    input wire [ID_WIDTH-1:0]                iDM_2_SID_ID_Number,

    input wire [clogb2(RAM_DEPTH-1)-1:0]     iOut_Addr,

    output wire                              oFinish_Enable,
    output wire                              oGenerate_Enable,
    
    output reg   [ID_WIDTH-1:0]              oGenerate_ID,
    output reg   [ID_WIDTH-1:0]              oFinish_ID
);
    localparam INITIAL_VALUE = 10'b0000000001;
    localparam RAM_DEPTH     = 4096;
      
    wire [RAM_COUNTER-1:0]           wSID_Update_Ram;
    wire [RAM_COUNTER-1:0]           wSID_Full_Ram;
    //reg  [clogb2(RAM_DEPTH-1)-1:0]   rSID_RAM_Id_Counter [RAM_COUNTER-1:0];  // compute K number;
    wire [clogb2(RAM_DEPTH-1)-1:0]   wSID_RAM_Id_Counter [RAM_COUNTER-1:0];
    reg  [clogb2(RAM_DEPTH-1)-1:0]   rSID_RAM_Id_Counter [RAM_COUNTER-1:0];
    reg  [clogb2(RAM_DEPTH-1)-1:0]   rSum_Counter[RAM_COUNTER-1:0];
    
    reg  [7:0]                       rSID_Counter;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            for(rSID_Counter = 0; rSID_Counter < RAM_COUNTER;rSID_Counter = rSID_Counter + 1) begin
                rSID_RAM_Id_Counter[rSID_Counter] <= 0;
            end
        end else begin
            for(rSID_Counter = 0; rSID_Counter < RAM_COUNTER;rSID_Counter = rSID_Counter + 1) begin
                rSID_RAM_Id_Counter[rSID_Counter] <= wSID_RAM_Id_Counter[rSID_Counter];
        end
        end
    end
    
    `define SUM_0 rSID_RAM_Id_Counter[0]
    `define SUM_1 `SUM_0+rSID_RAM_Id_Counter[1]
    `define SUM_2 `SUM_1+rSID_RAM_Id_Counter[2]
    `define SUM_3 `SUM_2+rSID_RAM_Id_Counter[3]     
    `define SUM_4 `SUM_3+rSID_RAM_Id_Counter[4]   
    `define SUM_5 `SUM_4+rSID_RAM_Id_Counter[5]    
    `define SUM_6 `SUM_5+rSID_RAM_Id_Counter[6]
    `define SUM_7 `SUM_6+rSID_RAM_Id_Counter[7]
    `define SUM_8 `SUM_7+rSID_RAM_Id_Counter[8]
    `define SUM_9 `SUM_8+rSID_RAM_Id_Counter[9]
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            for(rSID_Counter = 0; rSID_Counter < RAM_COUNTER;rSID_Counter = rSID_Counter + 1) begin
                rSum_Counter[rSID_Counter] <= 0;
            end
        end else begin
            rSum_Counter[0] <= `SUM_0;
            rSum_Counter[1] <= `SUM_1;
            rSum_Counter[2] <= `SUM_2;
            rSum_Counter[3] <= `SUM_3;
            rSum_Counter[4] <= `SUM_4;
            rSum_Counter[5] <= `SUM_5;
            rSum_Counter[6] <= `SUM_6;
            rSum_Counter[7] <= `SUM_7;
            rSum_Counter[8] <= `SUM_8;
            rSum_Counter[9] <= `SUM_9;
        end
    end    
     
        
    wire [ID_WIDTH   -1:0]           wGenerate_ID [RAM_COUNTER-1:0];
    reg  [RAM_COUNTER-1:0]           rGenerate_ID_Enable;
    
    wire [11:0]                      wSum_Ram_Counter;
    
    (* mark_debug = "true" *) reg  [RAM_COUNTER-1:0]           rOut_Mux_ID = 10'b0000000000;
    reg                             rFinish_Enable;
    wire [ID_WIDTH-1:0]             wFinish_ID [RAM_COUNTER-1:0];         //use this to transfer id to dram

    wire [clogb2(RAM_DEPTH-1)-1:0]   wOut_Addr [RAM_COUNTER-1:0];
    
    (* mark_debug = "true" *) wire [clogb2(RAM_DEPTH-1)-1:0]   rOut_Addr_Debug;
    (* mark_debug = "true" *) wire [clogb2(RAM_DEPTH-1)-1:0]   rwOut_Addr_0_Debug;
    (* mark_debug = "true" *) wire [clogb2(RAM_DEPTH-1)-1:0]   rwOut_Addr_1_Debug;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              rwFinish_ID_0_Debug;
    (* mark_debug = "true" *) wire [ID_WIDTH-1:0]              rwFinish_ID_1_Debug;
    
    assign rOut_Addr_Debug  = iOut_Addr;
    assign rwOut_Addr_0_Debug = wOut_Addr[0];
    assign rwOut_Addr_1_Debug = wOut_Addr[1];
    assign rwFinish_ID_0_Debug = wFinish_ID[0];
    assign rwFinish_ID_1_Debug = wFinish_ID[1];
    
    assign  wSum_Ram_Counter =  rSum_Counter[9];
    assign  oGenerate_Enable = (wSum_Ram_Counter > 2)?1'b1:1'b0;
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            rFinish_Enable <= 0;
        end else if(wSum_Ram_Counter > USER_K)begin
            rFinish_Enable <= 1;
        end else begin
            rFinish_Enable <= 0;                              //TEST SHOULD BE ONE
        end 
    end
    assign oFinish_Enable = rFinish_Enable;
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oFinish_ID <= 0;
        end else begin
            case(rOut_Mux_ID)
            INITIAL_VALUE    :begin
                                oFinish_ID <= wFinish_ID[0];
                               end
            INITIAL_VALUE<<1 :begin
                                oFinish_ID <= wFinish_ID[1];
                               end 
            INITIAL_VALUE<<2  :begin
                                oFinish_ID <= wFinish_ID[2];
                               end
            INITIAL_VALUE<<3  :begin
                                oFinish_ID <= wFinish_ID[3];
                               end                                     
            INITIAL_VALUE<<4  :begin
                                oFinish_ID <= wFinish_ID[4];
                               end                                     
            INITIAL_VALUE<<5  :begin
                                oFinish_ID <= wFinish_ID[5];
                               end                                     
            INITIAL_VALUE<<6  :begin
                                oFinish_ID <= wFinish_ID[6];
                               end                                     
            INITIAL_VALUE<<7  :begin
                                oFinish_ID <= wFinish_ID[7];
                               end                                     
            INITIAL_VALUE<<8  :begin
                                oFinish_ID <= wFinish_ID[8];
                               end                                     
            INITIAL_VALUE<<9 :begin
                                oFinish_ID <= wFinish_ID[9];
                               end
              default        :begin
                                oFinish_ID <= 0;
                               end 
            endcase                       
        end
    end
    assign wOut_Addr[0] = iOut_Addr;
    assign wOut_Addr[1] = iOut_Addr - (rSum_Counter[0]);
    assign wOut_Addr[2] = iOut_Addr - (rSum_Counter[1]);
    assign wOut_Addr[3] = iOut_Addr - (rSum_Counter[2]);
    assign wOut_Addr[4] = iOut_Addr - (rSum_Counter[3]);
    assign wOut_Addr[5] = iOut_Addr - (rSum_Counter[4]);
    assign wOut_Addr[6] = iOut_Addr - (rSum_Counter[5]);
    assign wOut_Addr[7] = iOut_Addr - (rSum_Counter[6]);
    assign wOut_Addr[8] = iOut_Addr - (rSum_Counter[7]);
    assign wOut_Addr[9] = iOut_Addr - (rSum_Counter[8]);
    
    
    
    always @(*) begin
        if(!iSys_Rst_n) begin
            rOut_Mux_ID = 10'b0000000000;
        end else if(iOut_Addr < rSum_Counter[0]) begin
            rOut_Mux_ID  = INITIAL_VALUE;
        end else if(iOut_Addr < rSum_Counter[1]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<1;
        end else if(iOut_Addr < rSum_Counter[2]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<2;
        end else if(iOut_Addr < rSum_Counter[3]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<3;
        end else if(iOut_Addr < rSum_Counter[4]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<4;
        end else if(iOut_Addr < rSum_Counter[5]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<5;
        end else if(iOut_Addr < rSum_Counter[6]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<6;
        end else if(iOut_Addr < rSum_Counter[7]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<7;
        end else if(iOut_Addr < rSum_Counter[8]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<8;
        end else if(iOut_Addr < rSum_Counter[9]) begin
            rOut_Mux_ID  = INITIAL_VALUE<<9;
        end else begin
            rOut_Mux_ID  = 10'b0000000000;
        end         
    end
    
    genvar i;
    generate
        for(i=0; i<RAM_COUNTER; i=i+1) begin :SID_I
            Store_ID #(
                .ID_WIDTH       (32),
                .RAM_WIDTH      (32),
                .RAM_DEPTH      (4096),
                .RAM_COUNTER    (10)
                )
            SID_I(
                .iSys_Clk(iSys_Clk),
                .iSys_Rst_n(iSys_Rst_n),
                .iRam_Wen(iDM_2_SID_Ram_Wen[i]),
                .iID_Number(iDM_2_SID_ID_Number),
    
                .iGenerate_ID_Enable(rGenerate_ID_Enable[i]), 
                .iFinish_Enable(rFinish_Enable),
                .iOut_Addr(wOut_Addr[i]),
        
                .oUpdate_Ram(wSID_Update_Ram[i]),
                .oFull_RAM(wSID_Full_Ram[i]),
                .oGenerate_ID(wGenerate_ID[i]),
                .oRam_Id_Counter(wSID_RAM_Id_Counter[i]),
                
                .oFinish_ID(wFinish_ID[i])
        );
        end
    endgenerate


    always @(*) begin
        if(!iSys_Rst_n) begin
            rGenerate_ID_Enable = 10'b0000000000;    
        end else if(wSID_Update_Ram[0] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE;
        end else if(wSID_Update_Ram[1] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<1; 
        end else if(wSID_Update_Ram[2] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<2; 
        end else if(wSID_Update_Ram[3] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<3; 
        end else if(wSID_Update_Ram[4] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<4; 
        end else if(wSID_Update_Ram[5] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<5; 
        end else if(wSID_Update_Ram[6] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<6; 
        end else if(wSID_Update_Ram[7] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<7; 
        end else if(wSID_Update_Ram[8] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<8; 
        end else if(wSID_Update_Ram[9] && iGenerate_ID_Enable) begin
            rGenerate_ID_Enable = INITIAL_VALUE<<9; 
        end else begin
            rGenerate_ID_Enable = 10'b0000000000;
        end
    end
    
    always @(posedge iSys_Clk or negedge iSys_Rst_n) begin
        if(!iSys_Rst_n) begin
            oGenerate_ID <= 0;
        end else if(iGenerate_ID_Enable)begin
            case(rGenerate_ID_Enable)
                INITIAL_VALUE    :begin
                                    oGenerate_ID <= wGenerate_ID[0];
                                   end
                INITIAL_VALUE<<1  :begin
                                    oGenerate_ID <= wGenerate_ID[1];
                                   end 
                INITIAL_VALUE<<2  :begin
                                    oGenerate_ID <= wGenerate_ID[2];
                                   end
                INITIAL_VALUE<<3  :begin
                                    oGenerate_ID <= wGenerate_ID[3];
                                   end                                     
                INITIAL_VALUE<<4  :begin
                                    oGenerate_ID <= wGenerate_ID[4];
                                   end                                     
                INITIAL_VALUE<<5  :begin
                                    oGenerate_ID <= wGenerate_ID[5];
                                   end                                     
                INITIAL_VALUE<<6  :begin
                                    oGenerate_ID <= wGenerate_ID[6];
                                   end                                     
                INITIAL_VALUE<<7  :begin
                                    oGenerate_ID <= wGenerate_ID[7];
                                   end                                     
                INITIAL_VALUE<<8  :begin
                                    oGenerate_ID <= wGenerate_ID[8];
                                   end                                     
                INITIAL_VALUE<<9 :begin
                                    oGenerate_ID <= wGenerate_ID[9];
                                   end
            endcase             
        end
    end
    
    function integer clogb2;
        input integer depth;
            for (clogb2=0; depth>0; clogb2=clogb2+1)
                depth = depth >> 1;
          
    endfunction  
endmodule
