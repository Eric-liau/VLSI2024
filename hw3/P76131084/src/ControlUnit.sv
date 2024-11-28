module ControlUnit (
    input [6:0] op,
    input [2:0] funct3,
    input [11:0] funct12,
    //EXE
    output reg [2:0] immtype,
    output reg [2:0] ALUop,
    output reg RegDst,//0:rs1, 1:rd
    output reg ALUSrc,//0:rs2, 1:imm
    output reg [1:0] isJal,
    //output ALUsrc1,//0:pc, 1:rs2
    //MEM
    output reg Branch,
    output reg [3:0] MemWrite,
    output reg MemRead,
    //WB
    output reg RegWrite,
    output reg MemtoReg,
    output reg float_rs1,
    output reg float_rs2,
    output reg float_rd,
    output logic isMemWrite,
    //CSR
    output logic isCSR,
    output logic isMRET,
    output logic isWFI
);

localparam [6:0]    R_type = 7'b0110011,
                    Load = 7'b0000011,
                    I_type = 7'b0010011,
                    Jalr = 7'b1100111,
                    S_type = 7'b0100011,
                    B_type = 7'b1100011,
                    J_type = 7'b1101111,
                    U_type = 7'b0010111,
                    Lui = 7'b0110111,
                    Flw = 7'b0000111,
                    Fsw = 7'b0100111,
                    Fcal = 7'b1010011,
                    CSR = 7'b1110011;


localparam [2:0]    R_ALU_type = 3'b000,
                    I_ALU_type = 3'b001,
                    add_type = 3'b010,
                    sub_type = 3'b011,
                    Lui_type = 3'b100,
                    U_ALU_type = 3'b101,
                    F_ALU_type = 3'b110,
                    CSR_type = 3'b111;


always_comb begin
isMemWrite = 1'b0;
isCSR = 1'b0;
isMRET = 1'b0;
isWFI = 1'b0;
case(op)
    R_type:begin
        //EXE
        immtype = 3'b000;
        ALUop = R_ALU_type;
        RegDst = 1'b1;
        ALUSrc = 1'b0;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    I_type:begin
        //EXE
        immtype = 3'b001;
        ALUop = I_ALU_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    Load:begin
        //EXE
        immtype = 3'b001;
        ALUop = add_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b1;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b1;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    Jalr:begin
        //EXE
        immtype = 3'b001;
        ALUop = add_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b1;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'd2;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    S_type:begin
        case(funct3)
            3'b010:begin
                MemWrite = 4'b0;
            end
            3'b000:begin
                MemWrite = 4'b1110;
            end
            3'b001:begin
                MemWrite = 4'b1100;
            end
            default:begin
                MemWrite = 4'b1111;
            end
        endcase
        //EXE
        isMemWrite = 1'b1;
        immtype = 3'b010;
        ALUop = add_type;
        RegDst = 1'b0;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b0;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    B_type:begin
        //EXE
        immtype = 3'b011;
        ALUop = sub_type;
        RegDst = 1'b0;
        ALUSrc = 1'b0;
        //MEM 
        Branch = 1'b1;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b0;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    U_type:begin
        //EXE
        immtype = 3'b100;
        ALUop = U_ALU_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    Lui:begin
        //EXE
        immtype = 3'b100;
        ALUop = Lui_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    J_type:begin//?
        //EXE
        immtype = 3'b101;
        ALUop = add_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b1;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'd1;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    Flw:begin
        //EXE
        immtype = 3'b001;
        ALUop = add_type;
        RegDst = 1'b1;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b1;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b1;
        isJal = 2'b0;
        float_rd = 1'b1;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
    Fsw:begin
        //EXE
        immtype = 3'b010;
        ALUop = add_type;
        RegDst = 1'b0;
        ALUSrc = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b0;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b0;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b1;
        isMemWrite = 1'b1;
    end
    Fcal:begin
        //EXE
        immtype = 3'b000;
        ALUop = F_ALU_type;
        RegDst = 1'b1;
        ALUSrc = 1'b0;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b1;
        float_rs1 = 1'b1;
        float_rs2 = 1'b1;
    end
    CSR:begin
        //EXE
        case(funct3[2])
            1'b0 : begin
                immtype = 3'b001;
                ALUSrc = 1'b0;
            end
            1'b1 : begin
                immtype = 3'b110;
                ALUSrc = 1'b0;
            end
        endcase
        ALUop = CSR_type;
        RegDst = 1'b1;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b0;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
        isCSR = 1'b1;
        //MRET
        if(funct3 == 3'b000) begin
            case(funct12[9])
                1'b1 : begin
                    Branch = 1'b1;
                    isJal = 2'd1;
                    isCSR = 1'b0;
                    isMRET = 1'b1;
                end
                1'b0 : begin
                    isWFI = 1'b1;
                end
            endcase  
        end
        
    end
    default:begin
        immtype = 3'b0;
        ALUop = 3'b0;
        RegDst = 1'b0;
        ALUSrc = 1'b0;
        //MEM 
        Branch = 1'b0;
        MemWrite = 4'b1111;
        MemRead = 1'b0;
        //WB
        RegWrite = 1'b0;
        MemtoReg = 1'b0;
        isJal = 2'b0;
        float_rd = 1'b0;
        float_rs1 = 1'b0;
        float_rs2 = 1'b0;
    end
endcase
end


endmodule