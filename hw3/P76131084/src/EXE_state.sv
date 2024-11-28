`include "ALU.sv"
`include "floatALU.sv"
`include "ALUctrl.sv"
module EXE_state(
    input clk,
    input rst,
    input [31:0] pc_in,
    input [31:0] rs1_data,
    input [31:0] rs2_data,
    input [31:0] imm,
    input [2:0] funct3,
    input [6:0] funct7,
    input [4:0] rs1_adr,
    input [4:0] rs2_adr,
    input [4:0] rd_adr,
    //EXE
    input [2:0] ALUop_ID,
    input RegDst_ID,//0:rs1, 1:rd
    input ALUSrc_ID,
    input [1:0] isJal,
    //MEM
    input Branch_ID,
    input [3:0] MemWrite_ID,
    input MemRead_ID,
    input RegWrite_ID,
    input MemtoReg_ID,

    //forwarding
    input [4:0] EXE_rd_adr,
    input [4:0] MEM_rd_adr,
    input [31:0] EXE_rd_data,
    input [31:0] MEM_WBdata,
    input EXE_RegWrite,
    input MEM_RegWrite,
    input EXE_MemRead,
    input EXE_isfloat_rd,
    input MEM_isfloat_rd,

    //CSR
    input isCSR_ID,
    output logic isCSR_EXE,
    input [3:0] csr_ID,
    output logic [3:0] csr_EXE,
    input isMRET_ID,
    output logic isMRET_EXE,
    input isinstruct_ID,
    output logic isinstruct_EXE,

    output reg [2:0] funct3_EXE,
    output reg [31:0] rs2_data_EXE,
    output reg [4:0] WBadr_EXE,
    //control signal
    //MEM
    output reg Branch_EXE,
    output reg [3:0] MemWrite_EXE,
    output reg MemRead_EXE,
    output reg [31:0] ADDER_result_EXE,
    output reg isSet_EXE,
    //WB
    output reg RegWrite_EXE,
    output reg MemtoReg_EXE,
    output reg [31:0] result_EXE,

    input flush,
    input isfloat_rd,
    input isfloat_rs1,
    input isfloat_rs2,
    output reg isfloat_out_rd,
    //output reg [31:0] pc_out
    input isMemWrite_ID,
    output logic isMemWrite_EXE,
    //stall
    input interrupt_stall,
    input DM_stall,
    output logic [31:0] pc_out
);

wire [31:0] ALUinput1, ALUinput2, ALU_result, ADDER_result, float_result;
reg [31:0] result, reg2_data, reg1_data, store_data, CSR;
wire [4:0] WBadr;
wire isSet, branch_result;
reg [3:0] MemWrite;
wire [4:0] ALUctl;
reg EXE_rs1_same, MEM_rs1_same, EXE_rs2_same, MEM_rs2_same;


assign WBadr = RegDst_ID ? rd_adr : rs1_adr;

assign ALUinput1 = (ALUop_ID == 3'b111) & funct3[2] ? imm : reg1_data;
assign ALUinput2 = ALUSrc_ID ? imm : reg2_data;
assign ADDER_result = (isJal == 2'd2) ? ALU_result : pc_in + imm - 32'd8;
assign isSet = (isJal == 2'b0) ? branch_result : 1'b1; 

always_comb begin
    if(isJal != 2'b0) 
        result = pc_in - 32'd4;
    else if(ALUop_ID == 3'b101) 
        result = ADDER_result;
    else if(ALUop_ID == 3'b100)
        result = imm;
    else if(isfloat_rd & isfloat_rs1 & isfloat_rs2)
        result = float_result;
    /*else if(ALUop_ID == 3'b111)
        result = CSR_result;*/
    else 
        result = ALU_result;
end


//forwarding
assign EXE_rs1_same = (EXE_isfloat_rd == isfloat_rs1);
assign EXE_rs2_same = (EXE_isfloat_rd == isfloat_rs2);
assign MEM_rs1_same = (MEM_isfloat_rd == isfloat_rs1);
assign MEM_rs2_same = (MEM_isfloat_rd == isfloat_rs2);

always_comb begin
    if(EXE_rs1_same && EXE_rd_adr == rs1_adr && EXE_RegWrite && !EXE_MemRead) 
        reg1_data = EXE_rd_data;
    else if(MEM_rs1_same && MEM_rd_adr == rs1_adr && MEM_RegWrite) begin        
        reg1_data = MEM_WBdata;
    end
    else 
        reg1_data = rs1_data;
    

    if(EXE_rs2_same && EXE_rd_adr == rs2_adr && EXE_RegWrite && !EXE_MemRead) 
        reg2_data = EXE_rd_data;
    else if(MEM_rs2_same && MEM_rd_adr == rs2_adr && MEM_RegWrite)
        reg2_data = MEM_WBdata;
    else 
        reg2_data = rs2_data;
end


always_comb begin
    case(ALU_result[1:0])
        2'b01:begin
            MemWrite = {MemWrite_ID[2:0], 1'b1};
            store_data = {reg2_data[23:0], reg2_data[31:24]};
        end
        2'b10:begin
            MemWrite = {MemWrite_ID[1:0], 2'b11};
            store_data = {reg2_data[15:0], reg2_data[31:16]};
        end
        2'b11:begin
            MemWrite = {MemWrite_ID[0], 3'b111};
            store_data = {reg2_data[7:0], reg2_data[31:8]};
        end
        default:begin
            MemWrite = MemWrite_ID;
            store_data = reg2_data;
        end
    endcase

end

ALUctrl ALUctrl(
    .funct3(funct3),
    .funct7(funct7),
    .ALUop(ALUop_ID),
    .ALUctl(ALUctl)
);

ALU ALU(
    .ALUop(ALUop_ID),
    .funct3(funct3),
    .ALUctl(ALUctl),
    .data1(ALUinput1),
    .data2(ALUinput2),
    .result(ALU_result),
    .isSet(branch_result)
);

floatALU floatALU(
    .data1(ALUinput1),
    .data2(ALUinput2),
    .ALUctl(ALUctl),
    .result(float_result)
);


always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        funct3_EXE <= 3'b0;
        rs2_data_EXE <= 32'b0;
        WBadr_EXE <= 5'b0;
        Branch_EXE <= 1'b0;
        MemWrite_EXE <= 4'b0;
        MemRead_EXE <= 1'b0;
        RegWrite_EXE <= 1'b0;
        MemtoReg_EXE <= 1'b0;
        result_EXE <= 32'b0;
        ADDER_result_EXE <= 32'b0;
        isSet_EXE <= 1'b0;
        isfloat_out_rd <= 1'b0;
        isMemWrite_EXE <= 1'b0;
        pc_out <= 32'b0;
        //CSR
        isCSR_EXE <= 1'b0;
        isMRET_EXE <= 1'b0;
        csr_EXE <= 4'b0;
        isinstruct_EXE <= 1'b0;
    end
    else begin
        if(flush) begin
            funct3_EXE <= 3'b0;
            rs2_data_EXE <= 32'b0;
            WBadr_EXE <= 5'b0;
            Branch_EXE <= 1'b0;
            MemWrite_EXE <= 4'b1111;
            MemRead_EXE <= 1'b0;
            RegWrite_EXE <= 1'b0;
            MemtoReg_EXE <= 1'b0;
            result_EXE <= 32'b0;
            ADDER_result_EXE <= 32'b0;
            isSet_EXE <= 1'b0;
            isfloat_out_rd <= 1'b0;
            isMemWrite_EXE <= 1'b0;
            //CSR
            isCSR_EXE <= 1'b0;
            isMRET_EXE <= 1'b0;
            csr_EXE <= 4'b0;
            isinstruct_EXE <= 1'b0;
        end
        else if(!DM_stall) begin
            funct3_EXE <= funct3;
            rs2_data_EXE <= store_data;
            WBadr_EXE <= WBadr;
            Branch_EXE <= Branch_ID;
            MemWrite_EXE <= MemWrite;
            MemRead_EXE <= MemRead_ID;
            RegWrite_EXE <= RegWrite_ID;
            MemtoReg_EXE <= MemtoReg_ID;
            result_EXE <= result;
            ADDER_result_EXE <= ADDER_result;
            isSet_EXE <= isSet;
            isfloat_out_rd <= isfloat_rd;
            isMemWrite_EXE <= isMemWrite_ID;
            pc_out <= pc_in;
            //CSR
            isCSR_EXE <= isCSR_ID;
            isMRET_EXE <= isMRET_ID;
            csr_EXE <= csr_ID;
            isinstruct_EXE <= isinstruct_ID;

        end
        if(DM_stall) begin
            isMemWrite_EXE <= 1'b0;
            MemRead_EXE <= 1'b0;
            isinstruct_EXE <= 1'b0;
        end
    end



end

endmodule