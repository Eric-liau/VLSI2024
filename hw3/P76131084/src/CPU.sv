`include "IF_state.sv"
`include "ID_state.sv"
`include "EXE_state.sv"
`include "MEM_state.sv"
`include "WB_state.sv"
`include "interrupt_handler.sv"
module CPU(
    input clk,
    input rst,
    input [31:0] instr_in,
    input [31:0] load_data,
    output [31:0] pc_to_mem,
    output [31:0] store_data,
    output [31:0] Memadr,
    output MemRead,
    output [3:0]MemWrite,
    output IM_CEB,
    output DM_CEB,
    input IM_stall,
    input DM_stall,
    input DMA_interrupt
);

wire [31:0] IF_pc_4, ID_pc_4, ID_rs1_data, ID_rs2_data, ID_imm, EXE_rs2_data, EXE_ADDER_result, EXE_result, MEM_result, /*MEM_store_data, */writebackdata, EXE_pc_4, MEM_pc_4, WB_pc_4, MEM_load_data, IF_instr;
wire [4:0] ID_rs1_adr, ID_rs2_adr, ID_rd_adr, EXE_WBadr, MEM_WBadr;
wire [2:0] ID_ALUop, ID_funct3, EXE_funct3;//, MEM_funct3;
wire [6:0] ID_funct7;
wire [3:0] ID_MemWrite, EXE_MemWrite;
wire ID_RegDst, ID_ALUSrc, ID_Branch, ID_MemRead, ID_RegWrite, ID_MemtoReg, EXE_Branch, EXE_MemRead, EXE_isSet, EXE_RegWrite, EXE_MemtoReg, PCsrc, MEM_RegWrite, MEM_MemtoReg, stall, MEM_MemRead;
wire ID_isfloat_rd, ID_isfloat_rs1, ID_isfloat_rs2, EXE_isfloat_rd, MEM_isfloat_rd, isMemWrite;
wire [1:0] ID_isJal;
logic ID_isMemWrite, EXE_isMemWrite;
//CSR
logic ID_isCSR, EXE_isCSR, MEM_isCSR;
logic ID_isMRET, EXE_isMRET, MEM_isMRET;
logic [3:0] ID_csr, EXE_csr, MEM_csr;
logic IF_isinstruct, ID_isinstruct, EXE_isinstruct, MEM_isinstruct;
logic isWFI, interrupt_stall;

assign MemRead = EXE_MemRead;
assign MemWrite = EXE_MemWrite;
assign Memadr = EXE_result;
assign store_data = EXE_rs2_data;

interrupt_handler interrupt_handler(
    .clk(clk),
    .rst(rst),

    .isWFI(isWFI),
    .DMA_interrupt(DMA_interrupt),
    .interrupt_stall(interrupt_stall)
);

IF_state IF_state(
    .clk(clk),
    .rst(rst),
    .PCsrc(PCsrc),
    .pc_branch(EXE_ADDER_result),
    .pc_out_IF(pc_to_mem),
    .pc_4_IF(IF_pc_4),
    //test
    .instr_in(instr_in),
    .instr_out(IF_instr),
    .CEB(IM_CEB),
    //stall
    .IM_stall(IM_stall),
    .DM_stall(DM_stall),
    .load_stall(stall),
    .interrupt_stall(interrupt_stall),
    .isinstruct_IF(IF_isinstruct)
);

ID_state ID_state(
    .clk(clk),
    .rst(rst),
    .instr(IF_instr),
    //writeback
    .WBdata(writebackdata),
    .WBadr(MEM_WBadr),
    .WBctl(MEM_RegWrite),
    .isfloat_rd_WB(MEM_isfloat_rd),
    .pc_in(IF_pc_4),
    .pc_out(ID_pc_4),
    .rs1_data_ID(ID_rs1_data),
    .rs2_data_ID(ID_rs2_data),
    .rs1_adr(ID_rs1_adr),
    .rs2_adr(ID_rs2_adr),
    .rd_adr(ID_rd_adr),
    .imm_ID(ID_imm),
    //controlsignal
    .ALUop_ID(ID_ALUop),
    .funct3(ID_funct3),
    .funct7(ID_funct7),
    .RegDst_ID(ID_RegDst),//0:rs1, 1:rd
    .ALUSrc_ID(ID_ALUSrc),
    .isJal_ID(ID_isJal),
    //MEM
    .Branch_ID(ID_Branch),
    .MemWrite_ID(ID_MemWrite),
    .MemRead_ID(ID_MemRead),
    //WB
    .RegWrite_ID(ID_RegWrite),
    .MemtoReg_ID(ID_MemtoReg),
    .flush(PCsrc),
    //float
    .isfloat_rd(ID_isfloat_rd),
    .isfloat_rs1(ID_isfloat_rs1),
    .isfloat_rs2(ID_isfloat_rs2),
    
    .ID_MemRead(ID_MemRead),
    .ID_rd_adr(ID_rd_adr),
    .ID_isfloat_rd(ID_isfloat_rd),
    //stall
    .isStall(stall),
    .DM_stall(DM_stall),
    .interrupt_stall(interrupt_stall),

    .isMemWrite_ID(ID_isMemWrite),
    //CSR
    .isCSR_ID(ID_isCSR),
    .isCSR_WB(MEM_isCSR),
    .isMRET_ID(ID_isMRET),
    .isMRET_WB(MEM_isMRET),
    .csr_ID(ID_csr),
    .csr_WB(MEM_csr),
    .isinstruct_IF(IF_isinstruct),
    .isinstruct_ID(ID_isinstruct),
    .isinstruct_WB(MEM_isinstruct),
    .isWFI(isWFI),
    //debug
    .WB_pc_in(WB_pc_4)
);

EXE_state EXE_state(
    .clk(clk),
    .rst(rst),
    .pc_in(ID_pc_4),
    .rs1_data(ID_rs1_data),
    .rs2_data(ID_rs2_data),
    .imm(ID_imm),
    .funct3(ID_funct3),
    .funct7(ID_funct7),
    .rs1_adr(ID_rs1_adr),
    .rs2_adr(ID_rs2_adr),
    .rd_adr(ID_rd_adr),
    //EXE
    .ALUop_ID(ID_ALUop),
    .RegDst_ID(ID_RegDst),//0:rs1 1:rd
    .ALUSrc_ID(ID_ALUSrc),
    .isJal(ID_isJal),
    //CSR
    .isCSR_ID(ID_isCSR),
    .isCSR_EXE(EXE_isCSR),
    .isMRET_ID(ID_isMRET),
    .isMRET_EXE(EXE_isMRET),
    .csr_ID(ID_csr),
    .csr_EXE(EXE_csr),
    .isinstruct_ID(ID_isinstruct),
    .isinstruct_EXE(EXE_isinstruct),
    //MEM
    .Branch_ID(ID_Branch),
    .MemWrite_ID(ID_MemWrite),
    .MemRead_ID(ID_MemRead),
    .RegWrite_ID(ID_RegWrite),
    .MemtoReg_ID(ID_MemtoReg),
    //forwarding
    .EXE_rd_adr(EXE_WBadr),
    .MEM_rd_adr(MEM_WBadr),
    .EXE_RegWrite(EXE_RegWrite),
    .MEM_RegWrite(MEM_RegWrite),
    .EXE_rd_data(EXE_result),
    .MEM_WBdata(writebackdata),
    .EXE_MemRead(EXE_MemRead),
    .EXE_isfloat_rd(EXE_isfloat_rd),
    .MEM_isfloat_rd(MEM_isfloat_rd),

    .funct3_EXE(EXE_funct3),
    .rs2_data_EXE(EXE_rs2_data),
    .WBadr_EXE(EXE_WBadr),
    //control signal
    //MEM
    .Branch_EXE(EXE_Branch),
    .MemWrite_EXE(EXE_MemWrite),
    .MemRead_EXE(EXE_MemRead),
    .ADDER_result_EXE(EXE_ADDER_result),
    .isSet_EXE(EXE_isSet),
    //WB
    .RegWrite_EXE(EXE_RegWrite),
    .MemtoReg_EXE(EXE_MemtoReg),
    .result_EXE(EXE_result),
    .flush(PCsrc),
    //float
    .isfloat_rs1(ID_isfloat_rs1),
    .isfloat_rs2(ID_isfloat_rs2),
    .isfloat_rd(ID_isfloat_rd),
    .isfloat_out_rd(EXE_isfloat_rd),
    .isMemWrite_ID(ID_isMemWrite),
    .isMemWrite_EXE(EXE_isMemWrite),
    //stall
    .interrupt_stall(interrupt_stall),
    .DM_stall(DM_stall),

    .pc_out(EXE_pc_4)
    
);

MEM_state MEM_state(
    .clk(clk),
    .rst(rst),
    //.rs2_data_EXE(EXE_rs2_data),
    .memdata_in(load_data),
    //CSR
    .isCSR_EXE(EXE_isCSR),
    .isCSR_MEM(MEM_isCSR),
    .isMRET_EXE(EXE_isMRET),
    .isMRET_MEM(MEM_isMRET),
    .csr_EXE(EXE_csr),
    .csr_MEM(MEM_csr),
    .isinstruct_EXE(EXE_isinstruct),
    .isinstruct_MEM(MEM_isinstruct),
    //MEM
    .funct3_EXE(EXE_funct3),
    .Branch_EXE(EXE_Branch),
    //.MemWrite_EXE(EXE_MemWrite),
    .MemRead_EXE(EXE_MemRead),
    .isSet_EXE(EXE_isSet),
    //WB
    .WBadr_EXE(EXE_WBadr),
    .result_EXE(EXE_result),
    .RegWrite_EXE(EXE_RegWrite),
    .MemtoReg_EXE(EXE_MemtoReg),

    .PCsrc(PCsrc),
    .RegWrite_MEM(MEM_RegWrite),
    .MemtoReg_MEM(MEM_MemtoReg),
    .WBadr_MEM(MEM_WBadr),
    .memdata_out(MEM_load_data),
    //.MemRead_MEM(MEM_MemRead),
    .result_MEM(MEM_result),
    //.funct3_MEM(MEM_funct3),
    .isfloat_rd(EXE_isfloat_rd),
    .isfloat_out_rd(MEM_isfloat_rd),
    .isMemWrite(EXE_isMemWrite),
    .CEB(DM_CEB),
    //debug
    .pc_in(EXE_pc_4),
    .pc_out(MEM_pc_4),
    //stall
    //.interrupt_stall(interrupt_stall),
    .DM_stall(DM_stall)
);

WB_state WB_state(
    //debug
    .pc_in(MEM_pc_4),
    .pc_out(WB_pc_4),

    .MemtoReg_MEM(MEM_MemtoReg),
    .memdata(MEM_load_data),
    .result_MEM(MEM_result),
    //.funct3(MEM_funct3),
    .writebackdata(writebackdata)
    /*.isfloat(MEM_isfloat),
    .isfloat_out(WB_isfloat),*/
    
);

endmodule