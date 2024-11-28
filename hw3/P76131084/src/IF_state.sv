`include "ProgramCounter.sv"
module IF_state (
    input clk,
    input rst,
    input PCsrc,
    input [31:0] pc_branch,

    input [31:0] instr_in,
    output reg [31:0] instr_out,

    output [31:0] pc_out_IF,
    output reg [31:0] pc_4_IF,
    output CEB,
    //stall
    input IM_stall,
    input DM_stall,
    input load_stall,
    input interrupt_stall,

    output logic isinstruct_IF
);
wire [31:0] pc_in;
wire [31:0] pc_4;
wire [31:0] pc_out;

wire stall;

logic PCsrc_reg;
logic instret_minus;


assign stall = load_stall | DM_stall | interrupt_stall;
assign CEB = PCsrc | stall | rst ? 1'b1 : 1'b0;


assign pc_4 = /*PCsrc_reg ? pc_out : */pc_out + 32'd4;
assign pc_in = PCsrc ? pc_branch : pc_4;
assign pc_out_IF = pc_out;
//assign IM_OE = PCsrc ? 1'b0 : 1'b1;

ProgramCounter ProgramCounter(
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .IM_stall(IM_stall),
    .DM_stall(DM_stall),
    .pc_in(pc_in),
    .PCsrc(PCsrc),
    .pc_out(pc_out)
);


always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        pc_4_IF <= 32'b0;
        //IM_OE <= 1'b0;
        instr_out <= 32'b0;
        PCsrc_reg <= 1'b0;
        instret_minus <= 1'b0;
        isinstruct_IF <= 1'b0;
    end
    else begin
        if(PCsrc) begin
            pc_4_IF <= 32'b0;
            //IM_OE <= 1'b0;
            instr_out <= 32'b0;
            PCsrc_reg <= 1'b1;
            isinstruct_IF <= 1'b0;
        end
        else if(~stall & ~IM_stall) begin
            instret_minus <= 1'b1;
            pc_4_IF <= pc_4;
            //IM_OE <= 1'b1;
            instr_out <= PCsrc_reg | ~instret_minus ? 32'b0 : instr_in;
            PCsrc_reg <= 1'b0;
            isinstruct_IF <= PCsrc_reg | ~instret_minus ? 1'b0 : 1'b1;
        end
        else if(IM_stall) begin
            instr_out <= 32'b0;
            isinstruct_IF <= 1'b0;
        end
    end  
end

endmodule : IF_state