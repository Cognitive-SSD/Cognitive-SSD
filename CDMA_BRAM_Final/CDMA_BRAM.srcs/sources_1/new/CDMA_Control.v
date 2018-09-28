`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/04 21:49:58
// Design Name: 
// Module Name: CDMA_Control
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


module CDMA_Control(
	input wire          iSys_Clk,
    input wire          iSys_Rst_n,
    input wire          iClr,
    input wire          iCdma_Introut,
    input wire [31:0]   iSA,
    input wire [31:0]   iDA,
    input wire [31:0]   iBTT,
    input wire          iM_AXI_RVALID,
    
    output wire         oCDMA_Valid,
    output reg [1:0]    oCmd,
    output reg [31:0]   oAwaddr,
    output reg [31:0]   oWdata,
    output reg [31:0]   oAraddr,
    input wire [31:0]   iRdata,
    output reg          oINIT_AXI_TXN,
    output reg          oFinish,
    input wire          iERROR,
    input wire          iTXN_DONE
);

    parameter V_IDLE     = 0;
    parameter SET_CNTL   = 1;
    parameter SET_SA     = 2;
    parameter SET_DA     = 3;
    parameter SET_BTT    = 4;
    parameter IDLE       = 5;
    parameter cdma_base  = 6'h00;
    localparam  ENABLE     = 1'b1;
    localparam  DISABLE    = 1'b0;

    reg f,next;
    (* mark_debug="true" *) reg[3:0] state;
    reg[3:0] counter;

    assign oCDMA_Valid = (state == 6)?ENABLE:DISABLE;
    always @(posedge iSys_Clk)begin
        if(iSys_Rst_n==0)begin
            oCmd <= 0;
            oAwaddr <= 0;
            oWdata <= 0;
            oAraddr <= 0;
            oINIT_AXI_TXN<= 0;
            state <= 6;
            f <= 1;
            next <= 0;
            counter <= 0;
            oFinish <= 1'b0;
    end
        else if(iClr)begin
            oCmd <= 0;
            oAwaddr <= 0;
            oWdata <= 0;
            oAraddr <= 0;
            oINIT_AXI_TXN<= 0;
            state <= 0;
            f <= 1;
            next <= 0;
            counter <= 0;    
            oFinish <= 1'b0;
    end  
        else begin
            case (state)
            0: begin
                if(f)begin
                    oINIT_AXI_TXN <= 1;
                    oCmd <= 2'b10;
                    oAraddr <= cdma_base+6'h04;
                    f <= 0;
                end
                if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;
                //$display("test");
                    if(iM_AXI_RVALID==1)begin
                        if( iRdata[1]==1'b1)begin
                            next <= 1;
                            //$display("next is 1");
                        end
                    else begin
                        state <= 0;
                        f <= 1;
                    end
                end
                if(next & iTXN_DONE)begin
                    state <= 1;
                    f <= 1;
                end
          end
          1: begin
                if(f)begin
                    oINIT_AXI_TXN <= 1;
                    oCmd <= 2'b01;
                    oAwaddr <= cdma_base+6'h00;
                    oWdata <= 32'h00001000;
                    f<= 0;
                end
                if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;
                if(iTXN_DONE)begin
                    state <= 2;   
                    f <= 1;
                end             
            end
          2: begin
               if(f)begin
                  oINIT_AXI_TXN <= 1;
                  oCmd <= 2'b01;
                  oAwaddr <= cdma_base+6'h18;
                  oWdata <= iSA;
                  f <= 0;
              end
               if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;
              if(iTXN_DONE)begin
                   state <= 3;   
                   f <= 1;
               end                      
          end
          3: begin
                if(f)begin
                    oINIT_AXI_TXN <= 1;
                    oCmd <= 2'b01;
                    oAwaddr <= cdma_base+6'h20;
                    oWdata <= iDA;
                    f <= 0;
                end
                if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;
                if(iTXN_DONE)begin
                    state <= 4; 
                    f <= 1;
                end                 
            end
          4: begin
                if(f)begin
                    oINIT_AXI_TXN <= 1;
                    oCmd <= 2'b01;
                    oAwaddr <= cdma_base+6'h28;
                    oWdata <= iBTT;
                    f <= 0;
                end
                if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;
                if(iTXN_DONE)begin
                    state <= 5;
                    f <= 1;
                end                  
            end
          5: begin
                if(iCdma_Introut)begin
                    if(f)begin
                        oINIT_AXI_TXN <= 1;
                        oCmd <= 2'b01;
                        oAwaddr <= cdma_base+6'h04;
                        oWdata <= 32'h0000_1000;
                        f <= 0;
                    end
                if(oINIT_AXI_TXN) oINIT_AXI_TXN<= 0;    
              end 
                if(iTXN_DONE)begin
                    state <= 6;
                    // f <= 1;
                    oFinish <= 1'b1;
                end  
            end               
          default: begin oFinish <= 1'b0; end
      endcase
  end
end    
endmodule
