`include "Register.sv"
`include "ControlUnit.sv"
`include "immGenerator.sv"
`include "StallCtrl.sv"
module ID_state (
    input clk,
    input rst,
    input [31:0] instr,
    //weiteback
    input [31:0] WBdata,
    input [4:0] WBadr,
    input WBctl,
    input [31:0] pc_in,
    input ID_MemRead,
    input [4:0] ID_rd_adr,
    input ID_isfloat_rd,

    //stall
    input DM_stall,
    input interrupt_stall,
    input reboot,
    output isStall,

    output reg [31:0] pc_out,
    output reg [31:0] rs1_data_ID,
    output reg [31:0] rs2_data_ID,
    output reg [4:0] rs1_adr,
    output reg [4:0] rs2_adr,
    output reg [4:0] rd_adr,
    output reg [31:0] imm_ID,
    //controlsignal
    output reg [2:0] ALUop_ID,
    output reg [2:0] funct3,
    output reg [6:0] funct7,
    output reg RegDst_ID,//0:rs1, 1:rd
    output reg ALUSrc_ID,
    output reg [1:0] isJal_ID,
    //MEM
    output reg Branch_ID,
    output reg [3:0] MemWrite_ID,
    output reg MemRead_ID,
    //WB
    output reg RegWrite_ID,
    output reg MemtoReg_ID,
    output reg isfloat_rd,
    output reg isfloat_rs1,
    output reg isfloat_rs2,
    input flush,
    input isfloat_rd_WB,
    
    output logic isMemWrite_ID,
    //CSR
    output logic isCSR_ID,
    input isCSR_WB,
    output logic isMRET_ID,
    input isMRET_WB,
    output logic [3:0] csr_ID,
    input [3:0] csr_WB,
    input isinstruct_IF,
    output logic isinstruct_ID,
    input isinstruct_WB,
    output logic isWFI, 
    //debug
    input [31:0] WB_pc_in
    
);
/*wire [4:0] rs1_adr, rs2_adr;
assign rs1_adr = instr[19:15];
assign rs2_adr = instr[24:20];*/
wire [31:0] rs1_data;
wire [31:0] rs2_data;
wire [2:0] ALUop;
wire [2:0] immtype;
wire RegDst;
wire ALUSrc;
wire Branch;
wire [3:0] MemWrite;
wire MemRead;
wire RegWrite;
wire MemtoReg;
wire [1:0] isJal;
wire float_rd, float_rs1, float_rs2;
wire stall;
logic isMemWrite;
//CSR
logic isCSR, isMRET;
logic [3:0] csr;

assign isStall = 1'b0;
assign stall = /*DM_stall | */isStall;

localparam [3:0]    mstatus = 4'b0000,
                    mtvec = 4'b0001,
                    mie = 4'b0010,
                    mip = 4'b0011,
                    mepc = 4'b0100,
                    instreth = 4'b0101,
                    instret = 4'b0110,
                    cycleh = 4'b0111,
                    cycle = 4'b1000;
//decode csr register
always_comb begin
    case(instr[31:20])
        12'h300 : csr = mstatus;
        12'h304 : csr = mie;
        12'h305 : csr = mtvec;
        12'h341 : csr = mepc;
        12'h344 : csr = mip;
        12'hc82 : csr = instreth;
        12'hc02 : csr = instret;
        12'hc80 : csr = cycleh;
        12'hc00 : csr = cycle;
        default : csr = 4'b1111;
    endcase
end

StallCtrl StallCtrl(
    .ID_MemRead(ID_MemRead),
    .ID_rd_adr(ID_rd_adr),
    .ID_isfloat_rd(ID_isfloat_rd),
    .IF_isfloat_rs1(float_rs1),
    .IF_isfloat_rs2(float_rs2),
    .IF_rs1_adr(instr[19:15]),
    .IF_rs2_adr(instr[24:20])
    //.isStall(isStall)
);

ControlUnit control(
    .op(instr[6:0]),
    .funct3(instr[14:12]),
    .funct12(instr[31:20]),
    .immtype(immtype),
    .ALUop(ALUop),
    .RegDst(RegDst),//0:rs1, 1:rd
    .ALUSrc(ALUSrc),
    .isJal(isJal),
    //MEM
    .Branch(Branch),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    //WB
    .RegWrite(RegWrite),
    .MemtoReg(MemtoReg),
    .float_rd(float_rd),
    .float_rs1(float_rs1),
    .float_rs2(float_rs2),
    .isMemWrite(isMemWrite),
    .isCSR(isCSR),
    .isMRET(isMRET),
    .isWFI(isWFI)
);
wire [31:0] imm;
immGenerator immGenerator(
    .immtype(immtype),
    .instr(instr),
    .imm(imm)
);
Register register(
    .clk(clk),
    .rst(rst),
    //CSR
    .isCSR(isCSR),
    .isCSR_WB(isCSR_WB),
    .isMRET(isMRET),
    .isMRET_WB(isMRET_WB),
    .csr(csr),
    .csr_WB(csr_WB),
    .isinstruct(isinstruct_WB),
     
    .WBctl(WBctl),
    .isfloat_rs1(float_rs1),
    .isfloat_rs2(float_rs2),
    .isfloat_rd(isfloat_rd_WB),
    .rs1(instr[19:15]),
    .rs2(instr[24:20]),
    .rd(WBadr),
    .val3(WBdata),
    .val1(rs1_data),
    .val2(rs2_data)
);


always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        pc_out <= 32'b0;
        rs1_data_ID <= 32'b0;
        rs2_data_ID <= 32'b0;
        rs1_adr <= 5'b0;
        rs2_adr <= 5'b0;
        rd_adr <= 5'b0;
        imm_ID <= 32'b0;
        //EXE
        ALUop_ID <= 3'b0;
        funct3 <= 3'b0;
        funct7 <= 7'b0;
        RegDst_ID <= 1'b0;
        ALUSrc_ID <= 1'b0;
        isJal_ID <= 2'b0;
        //MEM 
        Branch_ID <= 1'b0;
        MemWrite_ID <= 4'b0;
        MemRead_ID <= 1'b0;
        //WB
        RegWrite_ID <= 1'b0;
        MemtoReg_ID <= 1'b0;
        isfloat_rd <= 1'b0;
        isfloat_rs1 <= 1'b0;
        isfloat_rs2 <= 1'b0;
        isMemWrite_ID <= 1'b0;
        //CSR
        isCSR_ID <= 1'b0;
        csr_ID <= 4'b0;
        isinstruct_ID <= 1'b0;
        isMRET_ID <= 1'b0;
    end
    else begin
        if(flush | stall | reboot) begin
            pc_out <= 32'b0;
            rs1_data_ID <= 32'b0;
            rs2_data_ID <= 32'b0;
            rs1_adr <= 5'b0;
            rs2_adr <= 5'b0;
            rd_adr <= 5'b0;
            imm_ID <= 32'b0;
            //EXE
            ALUop_ID <= 3'b0;
            funct3 <= 3'b0;
            funct7 <= 7'b0;
            RegDst_ID <= 1'b0;
            ALUSrc_ID <= 1'b0;
            isJal_ID <= 2'b0;
            //MEM 
            Branch_ID <= 1'b0;
            MemWrite_ID <= 4'b1111;
            MemRead_ID <= 1'b0;
            //WB
            RegWrite_ID <= 1'b0;
            MemtoReg_ID <= 1'b0;
            isfloat_rd <= 1'b0;
            isfloat_rs1 <= 1'b0;
            isfloat_rs2 <= 1'b0;
            isMemWrite_ID <= 1'b0;
            //CSR
            isCSR_ID <= 1'b0;
            csr_ID <= 4'b0;
            isinstruct_ID <= 1'b0;
            isMRET_ID <= 1'b0;
        end
        else if(!DM_stall & !interrupt_stall)begin
            pc_out <= pc_in;
            rs1_data_ID <= rs1_data;
            rs2_data_ID <= rs2_data;
            rs1_adr <= instr[19:15];
            rs2_adr <= instr[24:20];
            rd_adr <= instr[11:7];
            imm_ID <= imm;
            //EXE
            ALUop_ID <= ALUop;
            funct3 <= instr[14:12];
            funct7 <= instr[31:25];
            RegDst_ID <= RegDst;
            ALUSrc_ID <= ALUSrc;
            isJal_ID <= isJal;
            //MEM 
            Branch_ID <= Branch;
            MemWrite_ID <= MemWrite;
            MemRead_ID <= MemRead;
            //WB
            RegWrite_ID <= RegWrite;
            MemtoReg_ID <= MemtoReg;
            isfloat_rd <= float_rd;
            isfloat_rs1 <= float_rs1;
            isfloat_rs2 <= float_rs2;
            isMemWrite_ID <= isMemWrite;
            //CSR
            isCSR_ID <= isCSR;
            csr_ID <= csr;
            isinstruct_ID <= isinstruct_IF;
            isMRET_ID <= isMRET;
        end
    end

end            

endmodule