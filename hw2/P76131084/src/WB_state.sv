module WB_state (
    //input [4:0] WBadr_MEM,
    //input RegWrite_MEM,
    input MemtoReg_MEM,
    input [31:0] memdata,
    input [31:0] result_MEM,
    //input [2:0] funct3,
    //output [4:0] WBadr_WB,
    //output RegWrite_WB,
    output [31:0] writebackdata,
    //debug
    input [31:0] pc_in,
    output reg [31:0] pc_out
);
//reg  [31:0] load_data;

assign writebackdata = MemtoReg_MEM ? memdata : result_MEM;
assign pc_out = pc_in;
//assign WBadr_WB = WBadr_MEM;
//assign RegWrite_WB = RegWrite_MEM;

/*always_comb begin
    case(funct3)
        3'b000:load_data = {{24{memdata[31]}}, memdata[31:24]};//LB
        3'b001:load_data = {{16{memdata[31]}}, memdata[31:16]};//LH
        3'b101:load_data = {16'b0, memdata[31:16]};//LHU
        3'b100:load_data = {24'b0, memdata[31:24]};//LBU
        default:load_data = memdata;
    endcase
end*/

endmodule