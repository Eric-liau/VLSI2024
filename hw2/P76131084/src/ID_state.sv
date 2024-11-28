`include "Register.sv"
`include "ControlUnit.sv"
`include "immGenerator.sv"
`include "StallCtrl.sv"
module ID_state (
    input clk,
    input rst,
    input [31:0] instr,
    input [31:0] WBdata,
    input [4:0] WBadr,
    input WBctl,
    input [31:0] pc_in,
    //stall
    input ID_MemRead,
    input [4:0] ID_rd_adr,
    input ID_isfloat_rd,

    input [63:0] instret_IF,
    input [63:0] cycle_IF,
    output reg [63:0] instret_ID,
    output reg [63:0] cycle_ID,
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
    input DM_stall,
    output logic isMemWrite_ID,
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
assign isStall = 1'b0;
assign stall = /*DM_stall | */isStall;

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
    .isMemWrite(isMemWrite)
);
wire [31:0] imm;
immGenerator immGenerator(
    .immtype(immtype),
    .instr(instr),
    .imm(imm)
);
Register register(
    .clk(clk),
    //.rst(rst),
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
        cycle_ID <= 64'b0;
        instret_ID <= 64'b0;
        isMemWrite_ID <= 1'b0;
    end
    else begin
        if(flush | stall) begin
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
        end
        else if(!DM_stall)begin
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
            instret_ID <= instret_IF;
            cycle_ID <= cycle_IF;
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
        end
    end

end            

endmodule