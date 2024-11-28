`include "ProgramCounter.sv"
module IF_state (
    input clk,
    input rst,
    input PCsrc,
    input load_stall,
    input [31:0] pc_branch,
    //test
    input [31:0] instr_in,
    output reg [31:0] instr_out,

    output [31:0] pc_out_IF,
    output reg [31:0] pc_4_IF,
    output reg [63:0] instret_reg_IF,
    output reg [63:0] cycle_reg_IF,
    output CEB,
    input IM_stall,
    input DM_stall
);
wire [31:0] pc_in;
wire [31:0] pc_4;
wire [31:0] pc_out;
wire [31:0] pc_out1;
reg [63:0] instret_reg, cycle_reg;
wire stall;

assign stall = IM_stall | load_stall | DM_stall;
assign CEB = PCsrc | stall ? 1'b1 : 1'b0;

assign pc_out1 = /*stall ? pc_out - 32'd4 : */pc_out;
assign pc_4 = pc_out1 + 32'd4;
assign pc_in = PCsrc ? pc_branch : pc_4;
assign pc_out_IF = pc_out1;
//assign IM_OE = PCsrc ? 1'b0 : 1'b1;

ProgramCounter ProgramCounter(
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .pc_in(pc_in),
    .PCsrc(PCsrc),
    .pc_out(pc_out)
);
  

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        pc_4_IF <= 32'b0;
        //IM_OE <= 1'b0;
        instr_out <= 32'b0;
        instret_reg <= 64'b0;
        cycle_reg <= 64'b0;
        instret_reg_IF <= 64'b0;
        cycle_reg_IF <= 64'b0;
    end
    else begin
        cycle_reg <= cycle_reg + 64'b1;
        if(PCsrc) begin
            pc_4_IF <= 32'b0;
            //IM_OE <= 1'b0;
            instr_out <= 32'b0;
            instret_reg <= instret_reg - 64'd2;
        end
        else if(!stall) begin
            instret_reg <= instret_reg + 64'b1;
            instret_reg_IF <= instret_reg;
            cycle_reg_IF <= cycle_reg;
            pc_4_IF <= pc_4;
            //IM_OE <= 1'b1;
            instr_out <= instr_in;
        end
        else if(IM_stall) begin
            instr_out <= 32'b0;
        end
    end  
end

endmodule : IF_state