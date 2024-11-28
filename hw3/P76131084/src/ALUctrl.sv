module ALUctrl(
    input [2:0] funct3,
    input [6:0] funct7,
    input [2:0] ALUop,
    output reg [4:0] ALUctl
);


localparam [2:0]    R_ALU_type = 3'b000,
                    I_ALU_type = 3'b001,
                    add_type = 3'b010,
                    sub_type = 3'b011,
                    Lui_type = 3'b100,
                    F_ALU_type = 3'b110,
                    CSR_type = 3'b111;
                    
localparam [4:0]    Add = 5'b00000,
                    Sub = 5'b00001,
                    Sl = 5'b00010,
                    Sr = 5'b00011,
                    Sr_unsigned = 5'b00100,
                    Slt = 5'b00101,
                    Slt_unsigned = 5'b00110,
                    Xor_a = 5'b00111,
                    Or_a = 5'b01000,
                    And_a = 5'b01001,
                    Lui = 5'b01010,
                    Mul = 5'b01011,
                    Mulh = 5'b01100,
                    Mulhsu = 5'b01101,
                    Mulhu = 5'b01110,
                    fAdd = 5'b01111,
                    fSub = 5'b10000,
                    isrs1 = 5'b10001,
                    And_not = 5'b10010;

always_comb begin
    case(ALUop)
        R_ALU_type:begin
            if(funct7 == 7'b0000001) begin
                case(funct3) 
                    3'b000:ALUctl = Mul;
                    3'b001:ALUctl = Mulh;
                    3'b010:ALUctl = Mulhsu;
                    3'b011:ALUctl = Mulhu;
                    default:ALUctl = 5'b11111;
                endcase
            end
            else begin
                case(funct3)
                    3'b000:begin
                        if(funct7 == 7'b0) 
                            ALUctl = Add;
                        else
                            ALUctl = Sub;
                    end
                    3'b001:ALUctl = Sl;
                    3'b010:ALUctl = Slt;
                    3'b011:ALUctl = Slt_unsigned;
                    3'b100:ALUctl = Xor_a;
                    3'b101:begin
                        if(funct7 == 7'b0000000)
                            ALUctl = Sr_unsigned;
                        else
                            ALUctl = Sr;
                    end
                    3'b110:ALUctl = Or_a;
                    3'b111:ALUctl = And_a;
                    //default:ALUctl = 5'b11111;
                endcase
            end
        end
        I_ALU_type:begin
            case(funct3)
                3'b000:ALUctl = Add;
                3'b001:ALUctl = Sl;
                3'b010:ALUctl = Slt;
                3'b011:ALUctl = Slt_unsigned;
                3'b100:ALUctl = Xor_a;
                3'b101:begin
                    if(funct7 == 7'b0000000)
                        ALUctl = Sr_unsigned;
                    else
                        ALUctl = Sr;
                end
                3'b110:ALUctl = Or_a;
                3'b111:ALUctl = And_a;
                //default:ALUctl = 5'b11111;
            endcase
        end
        F_ALU_type:begin
            case(funct7[6:2])
                5'b00000:ALUctl = fAdd;
                5'b00001:ALUctl = fSub;
                default:ALUctl = 5'b11111;
            endcase
        end
        CSR_type:begin
            case(funct3)
                3'b001 : ALUctl = isrs1;
                3'b010 : ALUctl = Or_a;
                3'b011 : ALUctl = And_not;
                3'b101 : ALUctl = isrs1;
                3'b110 : ALUctl = Or_a;
                3'b111 : ALUctl = And_not;
                default : ALUctl = 5'b11111;
            endcase
        end
        add_type:ALUctl = Add;
        sub_type:ALUctl = Sub;
        Lui_type:ALUctl = Lui;
        default:ALUctl = 5'b11111;
        
        


    endcase

end


endmodule