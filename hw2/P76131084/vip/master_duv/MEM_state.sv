module MEM_state(
    input clk,
    input rst,
    //input [31:0] rs2_data_EXE,
    
    //MEM
    input [2:0] funct3_EXE,
    input Branch_EXE,
    //input [3:0] MemWrite_EXE,
    input MemRead_EXE,
    input isSet_EXE,
    //WB
    input [4:0] WBadr_EXE,
    input [31:0] result_EXE,
    input [31:0] memdata_in,
    input RegWrite_EXE,
    input MemtoReg_EXE,

    output PCsrc,
    output reg RegWrite_MEM,
    output reg MemtoReg_MEM,
    output reg [4:0] WBadr_MEM,
    output reg [31:0] memdata_out,
    output reg [31:0] result_MEM,
    //output reg [2:0] funct3_MEM,
    output reg MemRead_MEM,
    input isfloat_rd,
    output reg isfloat_out_rd,
    input isMemWrite,
    output CEB
    //debug
    //input [31:0] pc_in,
    //output reg [31:0] pc_out
);

assign PCsrc = isSet_EXE & Branch_EXE;
assign CEB = isMemWrite | MemRead_EXE ? 1'b0 : 1'b1;
reg [31:0] memdata;

always_comb begin
    case(funct3_EXE)
        3'b000:memdata = {{24{memdata_in[31]}}, memdata_in[31:24]};//LB
        3'b001:memdata = {{16{memdata_in[31]}}, memdata_in[31:16]};//LH
        3'b101:memdata = {16'b0, memdata_in[31:16]};//LHU
        3'b100:memdata = {24'b0, memdata_in[31:24]};//LBU
        default:memdata = memdata_in;
    endcase
end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        RegWrite_MEM <= 1'b0;
        MemtoReg_MEM <= 1'b0;
        WBadr_MEM <= 5'b0;
        result_MEM <= 32'b0;
        memdata_out <= 32'b0;
        //funct3_MEM <= 3'b0;
        MemRead_MEM <= 1'b0;
        isfloat_out_rd <= 1'b0;
        //pc_out <= 32'b0;
    end
    else begin
        RegWrite_MEM <= RegWrite_EXE;
        MemtoReg_MEM <= MemtoReg_EXE;
        WBadr_MEM <= WBadr_EXE;
        result_MEM <= result_EXE;
        memdata_out <= memdata;
        //funct3_MEM <= funct3_EXE;
        //pc_out <= pc_in;
        MemRead_MEM <= MemRead_EXE;
        isfloat_out_rd <= isfloat_rd;
    end
end
endmodule