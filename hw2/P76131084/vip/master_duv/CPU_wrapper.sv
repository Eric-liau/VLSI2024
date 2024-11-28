`include "CPU.sv"
`include "master.sv"
`include "../include/AXI_define.svh"

module CPU_wrapper(
    input clk,
    input rst,

    //READ ADDRESS0
    output logic [`AXI_ID_BITS-1:0] ARID_M0,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_M0,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_M0,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_M0,
	output logic [1:0] ARBURST_M0,
	output logic ARVALID_M0,
	input ARREADY_M0,

    //READ ADDRESS1
    output logic [`AXI_ID_BITS-1:0] ARID_M1,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_M1,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_M1,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
	output logic [1:0] ARBURST_M1,
	output logic ARVALID_M1,
	input ARREADY_M1,
    
    //WRITE ADDRESS1
    output logic [`AXI_ID_BITS-1:0] AWID_M1,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_M1,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_M1,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_M1,
	output logic [1:0] AWBURST_M1,
	output logic AWVALID_M1,
	input AWREADY_M1,

    //READ DATA0
	input [`AXI_ID_BITS-1:0] RID_M0,
	input [`AXI_DATA_BITS-1:0] RDATA_M0,
	input [1:0] RRESP_M0,
	input RLAST_M0,
	input RVALID_M0,
	output logic RREADY_M0,

    //READ DATA1
	input [`AXI_ID_BITS-1:0] RID_M1,
	input [`AXI_DATA_BITS-1:0] RDATA_M1,
	input [1:0] RRESP_M1,
	input RLAST_M1,
	input RVALID_M1,
	output logic RREADY_M1,

    //WRITE DATA
	output logic [`AXI_DATA_BITS-1:0] WDATA_M1,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_M1,
	output logic WLAST_M1,
	output logic WVALID_M1,
	input WREADY_M1,

    //WRITE RESPONSE
	input [`AXI_ID_BITS-1:0] BID_M1,
	input [1:0] BRESP_M1,
	input BVALID_M1,
	output logic BREADY_M1
);
logic [31:0] pc_to_mem, instr, Memadr, store_data, load_data;
logic MemRead, IM_CEB, DM_CEB, IM_stall, DM_stall;
logic [3:0] MemWrite;

CPU cpu(
    .clk(clk),
    .rst(rst),
    //IM
    .instr_in(instr),
    .pc_to_mem(pc_to_mem),
    //DM
    .load_data(load_data),
    .store_data(store_data),
    .Memadr(Memadr),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
	.IM_CEB(IM_CEB),
	.DM_CEB(DM_CEB),
	.IM_stall(IM_stall),
	.DM_stall(DM_stall)
);

master master0(
	.clk(clk),
	.rst(rst),
	.CEB(1'b0),
    .WEB(1'b1),  //0 : write, 1 : read
	.MemWrite(4'b1111),
    .ADDR(pc_to_mem),
	.writedata(32'b0),
	.readdata(instr),
    .stall(IM_stall),

     //READ ADDRESS
    .ARID(ARID_M0),
	.ARADDR(ARADDR_M0),
	.ARLEN(ARLEN_M0),
	.ARSIZE(ARSIZE_M0),
	.ARBURST(ARBURST_M0),
	.ARVALID(ARVALID_M0),
	.ARREADY(ARREADY_M0),

    //WRITE ADDRESS
	.AWREADY(1'b0),

    //READ DATA
	.RID(RID_M0),
	.RRESP(RRESP_M0),
	.RLAST(RLAST_M0),
	.RVALID(RVALID_M0),
	.RDATA(RDATA_M0),
	.RREADY(RREADY_M0),

    //WRITE DATA
	.WDATA(),
	.WSTRB(),
	.WLAST(),
	.WVALID(),
	.WREADY(1'b0),

    //WRITE RESPONSE
	.BID(`AXI_ID_BITS'b0),
	.BRESP(2'b0),
	.BVALID(1'b0),
	.BREADY()
);

master master1(
	.clk(clk),
	.rst(rst),
	.CEB(DM_CEB),
    .WEB(MemRead),  //0 : write, 1 : read
	.MemWrite(MemWrite),
	.writedata(load_data),
    .ADDR(Memadr),
    .stall(DM_stall),

     //READ ADDRESS
    .ARID(ARID_M1),
	.ARADDR(ARADDR_M1),
	.ARLEN(ARLEN_M1),
	.ARSIZE(ARSIZE_M1),
	.ARBURST(ARBURST_M1),
	.ARVALID(ARVALID_M1),
	.ARREADY(ARREADY_M1),

    //WRITE ADDRESS
	.AWID(AWID_M1),
	.AWADDR(AWADDR_M1),
	.AWLEN(AWLEN_M1),
	.AWSIZE(AWSIZE_M1),
	.AWBURST(AWBURST_M1),
	.AWVALID(AWVALID_M1),
	.AWREADY(1'b0),

    //READ DATA
	.RID(RID_M1),
	.RRESP(RRESP_M1),
	.RLAST(RLAST_M1),
	.RVALID(RVALID_M1),
	.RDATA(RDATA_M1),
	.RREADY(RREADY_M1),

    //WRITE DATA
	.WDATA(WDATA_M1),
	.WSTRB(WSTRB_M1),
	.WLAST(WLAST_M1),
	.WVALID(WVALID_M1),
	.WREADY(1'b0),

    //WRITE RESPONSE
	.BID(BID_M1),
	.BRESP(BRESP_M1),
	.BVALID(BVALID_M1)
);




endmodule