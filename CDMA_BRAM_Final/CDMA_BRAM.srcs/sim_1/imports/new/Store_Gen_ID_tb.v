`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/29 23:13:11
// Design Name: 
// Module Name: Store_Gen_ID_tb
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


module Store_Gen_ID_tb(

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
    reg                         iQuery_Enable;
    reg [HASHCODE_WIDTH-1:0]    iHash_Code;
    
    reg iGenerate_ID_Enable;
    
    wire [11:0]         oSum_Ram_Counter;
    wire [ID_WIDTH-1:0] oGenerate_ID;
    
    wire                oFinish_Enable;
   
    
    reg [79:0] rID_Hashcode[25*50000-1:0];
    integer handle;
    integer temp;
    
    always #50 clk = ~clk;
    
    initial begin
        handle = $fopen("J:/CDMA_BRAM/GENERATE_ID/init_input_data.bin" , "rb");
        temp = $fread(rID_Hashcode,handle);
        
        $display("final id_hashcode is %h",rID_Hashcode[50]);
        //$readmemh("J:/CDMA_BRAM/GENERATE_ID/GENERATE_ID.srcs/sim_1/new/id_code.bin",rID_Hashcode,0,7);
        rst_n = 0;
        clk = 0;
        iGenerate_ID_Enable = 0;
        rData_Enable = 0;
        iQuery_Enable = 0;
        iQuery_Code = rID_Hashcode[50][47:0];
        #150;
        rst_n = 1;
        //rData_Enable = 1;
        iQuery_Code = rID_Hashcode[50][47:0];
        #300;
        iQuery_Enable = 1;
        /*rData_Enable = 0;
        iID_Number      = 32'h00000A;
        iHash_Code = rID_Hashcode[100][47:0];
        #100;
        iID_Number      = 32'h00000B;
        iHash_Code = rID_Hashcode[101][47:0];        
        #100;
        iID_Number      = 32'h00000C;
        iHash_Code = rID_Hashcode[102][47:0];      
         #100;
        iID_Number      = 32'h00000D;
        iHash_Code = rID_Hashcode[103][47:0];   
        #100;
        iID_Number      = 32'h00000E;
        iHash_Code = rID_Hashcode[104][47:0];
        #100;
        iID_Number      = 32'h00000F;
        iHash_Code = rID_Hashcode[105][47:0];
        #100;
        iID_Number      = 32'h0000010;
        iHash_Code = rID_Hashcode[106][47:0];
        #100;
        iID_Number      = 32'h00000F;
        iHash_Code = rID_Hashcode[105][47:0];
        #100;
        iID_Number      = 32'h00000A;
        iHash_Code = rID_Hashcode[105][47:0];
        #100;
        iID_Number      = 32'h00000A;
        iHash_Code = rID_Hashcode[5][47:0];
        #100;
        iID_Number      = 32'h00000A;
        iHash_Code = rID_Hashcode[105][47:0];
        #100;
        iID_Number      = 32'h00000A;
        iHash_Code = rID_Hashcode[105][47:0];
        #100;
        rData_Enable = 0;
        iGenerate_ID_Enable = 1;
        #100
        iGenerate_ID_Enable = 0;
        #500
        iGenerate_ID_Enable = 1;
        #200
        iGenerate_ID_Enable = 0;
        #200
        iGenerate_ID_Enable = 1;  */             
    end 
    reg[15:0] i;
    reg       Enable;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            i <= 0;
        end else if(i<50) begin
            iID_Number <= rID_Hashcode[i][79:48];
            iHash_Code <= rID_Hashcode[i][47:0];
            i <= i+1;
        end else begin
            Enable <= 1;
        end
    end
    localparam IDLE = 2'b00;
    localparam RUNNING = 2'b01;
    localparam FINAL = 2'B10;
    localparam K = 100;
    reg[15:0] j = 0;
    reg      Finish;
    reg[1:0] rState;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            rState <= IDLE;
            iGenerate_ID_Enable <= 0;
            j<=0;
            iID_Number <= 0;
            iHash_Code <= 0;
        end else begin
            case(rState) 
                IDLE : begin
                    if(Finish) begin
                        rState <= FINAL;
                        iGenerate_ID_Enable <= 0;
                    end else if(Enable) begin
                        rState <= RUNNING;
                        iGenerate_ID_Enable <= 1;
                    end else begin
                        rState <= IDLE;
                        iGenerate_ID_Enable <= 0;
                    end
                end
                RUNNING:begin
                    if(Finish) begin
                        rState <= FINAL;
                    end else if(iGenerate_ID_Enable) begin
                        iGenerate_ID_Enable <= 0;
                    end else if(j<25) begin
                        iGenerate_ID_Enable <= 0;
                        j <= j+1'b1;
                        iID_Number <= rID_Hashcode[50 + oGenerate_ID*25 + j][79:48];
                        iHash_Code <= rID_Hashcode[50 + oGenerate_ID*25 + j][47:0];
                        rState <= RUNNING;
                    end else begin
                        j <= 0;
                        rState <= IDLE;
                    end
                end 
                FINAL: begin
                    iGenerate_ID_Enable <= 0;
                    iID_Number <= 0;
                    iHash_Code <= 0;
                    rState <= FINAL;
                end
            endcase
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            Finish <= 0;
        end else if(oFinish_Enable) begin
            Finish <= 1;
        end else begin
            Finish <= 0;
        end
    end
    
    
    /*Store_Gen_ID_Top
    SGID_TOP(
        .iSys_Clk(clk),
        .iSys_Rst_n(rst_n),
        .iData_Enable(rData_Enable),
        .iId_Number(iID_Number),
        .iQuery_Code(iQuery_Code),
        .iHash_Code(iHash_Code),
        
        .oFinish_Enable(oFinish_Enable),
        
        .iGenerate_ID_Enable(iGenerate_ID_Enable),
        .oGenerate_ID(oGenerate_ID)
    ); */
    
    Top tp(
        .Sys_Clk(clk),
        .Sys_Rst_n(rst_n),
        .iQuery_Code(iQuery_Code),
        .iQuery_Enable(iQuery_Enable)
    );   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
