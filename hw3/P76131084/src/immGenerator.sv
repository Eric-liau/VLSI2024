module immGenerator(
    input [2:0] immtype,
    input [31:0] instr,
    output reg [31:0] imm
);

localparam  I_type = 3'b001,
            S_type = 3'b010,
            B_type = 3'b011,
            U_type = 3'b100,
            J_type = 3'b101,
            CSR_type = 3'b110;
always_comb begin
    case(immtype)
        I_type:begin
            imm = {{20{instr[31]}}, instr[31:20]};
        end
        S_type:begin
            imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
        end
        B_type:begin
            imm = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
        end
        U_type:begin
            imm = {instr[31:12], 12'b0};
        end
        J_type:begin
            imm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
        end
        CSR_type:begin
            imm = {27'b0, instr[19:15]};
        end
        default:imm = 32'b0;
    endcase
end

endmodule