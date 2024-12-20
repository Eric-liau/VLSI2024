//////////////////////////////////////////////////////////////////////
//          ██╗       ██████╗   ██╗  ██╗    ██████╗            		//
//          ██║       ██╔══█║   ██║  ██║    ██╔══█║            		//
//          ██║       ██████║   ███████║    ██████║            		//
//          ██║       ██╔═══╝   ██╔══██║    ██╔═══╝            		//
//          ███████╗  ██║  	    ██║  ██║    ██║  	           		//
//          ╚══════╝  ╚═╝  	    ╚═╝  ╚═╝    ╚═╝  	           		//
//                                                             		//
// 	2024 Advanced VLSI System Design, advisor: Lih-Yih, Chiou		//
//                                                             		//
//////////////////////////////////////////////////////////////////////
//                                                             		//
// 	Autor: 			TZUNG-JIN, TSAI (Leo)				  	   		//
//	Filename:		 AXI.sv			                            	//
//	Description:	Top module of AXI	 							//
// 	Version:		1.0	    								   		//
//////////////////////////////////////////////////////////////////////

`include "../../include/AXI_include.svh"
`include "../../include/AXI_define.svh"

module AXI(

	input ACLK,
	input ARESETn,

	//SLAVE INTERFACE FOR MASTERS
	
	
	/////////// M0 ///////////
	//READ ADDRESS0
	input [`AXI_ID_BITS-1:0] ARID_M0,
	input [`AXI_ADDR_BITS-1:0] ARADDR_M0,
	input [`AXI_LEN_BITS-1:0] ARLEN_M0,
	input [`AXI_SIZE_BITS-1:0] ARSIZE_M0,
	input [1:0] ARBURST_M0,
	input ARVALID_M0,
	output logic ARREADY_M0,
	
	//READ DATA0
	output logic [`AXI_ID_BITS-1:0] RID_M0,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M0,
	output logic [1:0] RRESP_M0,
	output logic RLAST_M0,
	output logic RVALID_M0,
	input RREADY_M0,
	
	/////////// M1 ///////////
	//WRITE ADDRESS
	input [`AXI_ID_BITS-1:0] AWID_M1,
	input [`AXI_ADDR_BITS-1:0] AWADDR_M1,
	input [`AXI_LEN_BITS-1:0] AWLEN_M1,
	input [`AXI_SIZE_BITS-1:0] AWSIZE_M1,
	input [1:0] AWBURST_M1,
	input AWVALID_M1,
	output logic AWREADY_M1,
	
	//WRITE DATA
	input [`AXI_DATA_BITS-1:0] WDATA_M1,
	input [`AXI_STRB_BITS-1:0] WSTRB_M1,
	input WLAST_M1,
	input WVALID_M1,
	output logic WREADY_M1,
	
	//WRITE RESPONSE
	output logic [`AXI_ID_BITS-1:0] BID_M1,
	output logic [1:0] BRESP_M1,
	output logic BVALID_M1,
	input BREADY_M1,

	//READ ADDRESS1
	input [`AXI_ID_BITS-1:0] ARID_M1,
	input [`AXI_ADDR_BITS-1:0] ARADDR_M1,
	input [`AXI_LEN_BITS-1:0] ARLEN_M1,
	input [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
	input [1:0] ARBURST_M1,
	input ARVALID_M1,
	output logic ARREADY_M1,
	
	//READ DATA1
	output logic [`AXI_ID_BITS-1:0] RID_M1,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M1,
	output logic [1:0] RRESP_M1,
	output logic RLAST_M1,
	output logic RVALID_M1,
	input RREADY_M1,

	/////////// M2 ///////////
	//WRITE ADDRESS
	input [`AXI_ID_BITS-1:0] AWID_M2,
	input [`AXI_ADDR_BITS-1:0] AWADDR_M2,
	input [`AXI_LEN_BITS-1:0] AWLEN_M2,
	input [`AXI_SIZE_BITS-1:0] AWSIZE_M2,
	input [1:0] AWBURST_M2,
	input AWVALID_M2,
	output logic AWREADY_M2,
	
	//WRITE DATA
	input [`AXI_DATA_BITS-1:0] WDATA_M2,
	input [`AXI_STRB_BITS-1:0] WSTRB_M2,
	input WLAST_M2,
	input WVALID_M2,
	output logic WREADY_M2,
	
	//WRITE RESPONSE
	output logic [`AXI_ID_BITS-1:0] BID_M2,
	output logic [1:0] BRESP_M2,
	output logic BVALID_M2,
	input BREADY_M2,

	//READ ADDRESS1
	input [`AXI_ID_BITS-1:0] ARID_M2,
	input [`AXI_ADDR_BITS-1:0] ARADDR_M2,
	input [`AXI_LEN_BITS-1:0] ARLEN_M2,
	input [`AXI_SIZE_BITS-1:0] ARSIZE_M2,
	input [1:0] ARBURST_M2,
	input ARVALID_M2,
	output logic ARREADY_M2,
	
	//READ DATA1
	output logic [`AXI_ID_BITS-1:0] RID_M2,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M2,
	output logic [1:0] RRESP_M2,
	output logic RLAST_M2,
	output logic RVALID_M2,
	input RREADY_M2,


	//MASTER INTERFACE FOR SLAVES

	/////////// S0 ///////////
	//WRITE ADDRESS0
	output logic [`AXI_IDS_BITS-1:0] AWID_S0,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S0,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S0,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S0,
	output logic [1:0] AWBURST_S0,
	output logic AWVALID_S0,
	input AWREADY_S0,
	
	//WRITE DATA0
	output logic [`AXI_DATA_BITS-1:0] WDATA_S0,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S0,
	output logic WLAST_S0,
	output logic WVALID_S0,
	input WREADY_S0,
	
	//WRITE RESPONSE0
	input [`AXI_IDS_BITS-1:0] BID_S0,
	input [1:0] BRESP_S0,
	input BVALID_S0,
	output logic BREADY_S0,

	//READ ADDRESS0
	output logic [`AXI_IDS_BITS-1:0] ARID_S0,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S0,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S0,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S0,
	output logic [1:0] ARBURST_S0,
	output logic ARVALID_S0,
	input ARREADY_S0,
	
	//READ DATA0
	input [`AXI_IDS_BITS-1:0] RID_S0,
	input [`AXI_DATA_BITS-1:0] RDATA_S0,
	input [1:0] RRESP_S0,
	input RLAST_S0,
	input RVALID_S0,
	output logic RREADY_S0,
	
	/////////// S1 ///////////
	//WRITE ADDRESS1
	output logic [`AXI_IDS_BITS-1:0] AWID_S1,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S1,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S1,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S1,
	output logic [1:0] AWBURST_S1,
	output logic AWVALID_S1,
	input AWREADY_S1,
	
	//WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S1,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S1,
	output logic WLAST_S1,
	output logic WVALID_S1,
	input WREADY_S1,
	
	//WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S1,
	input [1:0] BRESP_S1,
	input BVALID_S1,
	output logic BREADY_S1,
	
	//READ ADDRESS1
	output logic [`AXI_IDS_BITS-1:0] ARID_S1,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S1,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S1,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S1,
	output logic [1:0] ARBURST_S1,
	output logic ARVALID_S1,
	input ARREADY_S1,
	
	//READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S1,
	input [`AXI_DATA_BITS-1:0] RDATA_S1,
	input [1:0] RRESP_S1,
	input RLAST_S1,
	input RVALID_S1,
	output logic RREADY_S1,

	/////////// S2 ///////////
	//WRITE ADDRESS2
	output logic [`AXI_IDS_BITS-1:0] AWID_S2,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S2,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S2,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S2,
	output logic [1:0] AWBURST_S2,
	output logic AWVALID_S2,
	input AWREADY_S2,
	
	//WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S2,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S2,
	output logic WLAST_S2,
	output logic WVALID_S2,
	input WREADY_S2,
	
	//WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S2,
	input [1:0] BRESP_S2,
	input BVALID_S2,
	output logic BREADY_S2,
	
	//READ ADDRESS2
	output logic [`AXI_IDS_BITS-1:0] ARID_S2,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S2,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S2,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S2,
	output logic [1:0] ARBURST_S2,
	output logic ARVALID_S2,
	input ARREADY_S2,
	
	//READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S2,
	input [`AXI_DATA_BITS-1:0] RDATA_S2,
	input [1:0] RRESP_S2,
	input RLAST_S2,
	input RVALID_S2,
	output logic RREADY_S2,

	/////////// S3 ///////////
	//WRITE ADDRESS3
	output logic [`AXI_IDS_BITS-1:0] AWID_S3,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S3,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S3,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S3,
	output logic [1:0] AWBURST_S3,
	output logic AWVALID_S3,
	input AWREADY_S3,
	
	//WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S3,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S3,
	output logic WLAST_S3,
	output logic WVALID_S3,
	input WREADY_S3,
	
	//WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S3,
	input [1:0] BRESP_S3,
	input BVALID_S3,
	output logic BREADY_S3,
	
	//READ ADDRESS3
	output logic [`AXI_IDS_BITS-1:0] ARID_S3,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S3,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S3,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S3,
	output logic [1:0] ARBURST_S3,
	output logic ARVALID_S3,
	input ARREADY_S3,
	
	//READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S3,
	input [`AXI_DATA_BITS-1:0] RDATA_S3,
	input [1:0] RRESP_S3,
	input RLAST_S3,
	input RVALID_S3,
	output logic RREADY_S3,

	/////////// S4 ///////////
	//WRITE ADDRESS4
	output logic [`AXI_IDS_BITS-1:0] AWID_S4,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S4,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S4,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S4,
	output logic [1:0] AWBURST_S4,
	output logic AWVALID_S4,
	input AWREADY_S4,
	
	//WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S4,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S4,
	output logic WLAST_S4,
	output logic WVALID_S4,
	input WREADY_S4,
	
	//WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S4,
	input [1:0] BRESP_S4,
	input BVALID_S4,
	output logic BREADY_S4,
	
	//READ ADDRESS4
	output logic [`AXI_IDS_BITS-1:0] ARID_S4,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S4,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S4,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S4,
	output logic [1:0] ARBURST_S4,
	output logic ARVALID_S4,
	input ARREADY_S4,
	
	//READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S4,
	input [`AXI_DATA_BITS-1:0] RDATA_S4,
	input [1:0] RRESP_S4,
	input RLAST_S4,
	input RVALID_S4,
	output logic RREADY_S4,

	/////////// S5 ///////////
	//WRITE ADDRESS5
	output logic [`AXI_IDS_BITS-1:0] AWID_S5,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_S5,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_S5,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S5,
	output logic [1:0] AWBURST_S5,
	output logic AWVALID_S5,
	input AWREADY_S5,
	
	//WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S5,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S5,
	output logic WLAST_S5,
	output logic WVALID_S5,
	input WREADY_S5,
	
	//WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S5,
	input [1:0] BRESP_S5,
	input BVALID_S5,
	output logic BREADY_S5,
	
	//READ ADDRESS5
	output logic [`AXI_IDS_BITS-1:0] ARID_S5,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_S5,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_S5,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S5,
	output logic [1:0] ARBURST_S5,
	output logic ARVALID_S5,
	input ARREADY_S5,
	
	//READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S5,
	input [`AXI_DATA_BITS-1:0] RDATA_S5,
	input [1:0] RRESP_S5,
	input RLAST_S5,
	input RVALID_S5,
	output logic RREADY_S5
	
);
    //---------- you should put your design here ----------//

logic READ_getaddr0, READ_getaddr1, READ_getaddr_default, READ_last_s0, READ_last_s1;
logic WRITE_getaddr0, WRITE_getaddr1, WRITE_getaddr_default, WRITE_last_s0, WRITE_last_s1;
logic [1:0] WRITE_slave;
logic read_finish_S0, read_finish_S1, read_finish_S2, read_finish_S5;
logic write_finish_S0, write_finish_S1;
logic DW_busy;

address_channel AR(
	.clk(ACLK),
    .rst(ARESETn),

	.busy(1'b0),
	.getaddr_default(READ_getaddr_default),
	.finish_S0(read_finish_S0),
	.finish_S1(read_finish_S1),
	.finish_S2(read_finish_S2),
	.finish_S3(1'b1),
	.finish_S4(1'b1),
	.finish_S5(read_finish_S5),

    //READ ADDRESS0
	.ID_M0(ARID_M0),
	.ADDR_M0(ARADDR_M0),
	.LEN_M0(ARLEN_M0),
	.SIZE_M0(ARSIZE_M0),
	.BURST_M0(ARBURST_M0),
	.VALID_M0(ARVALID_M0),
	.READY_M0(ARREADY_M0),
	
	//READ ADDRESS1
	.ID_M1(ARID_M1),
	.ADDR_M1(ARADDR_M1),
	.LEN_M1(ARLEN_M1),
	.SIZE_M1(ARSIZE_M1),
	.BURST_M1(ARBURST_M1),
	.VALID_M1(ARVALID_M1),
	.READY_M1(ARREADY_M1),

	//READ ADDRESS2
	.ID_M2(ARID_M2),
	.ADDR_M2(ARADDR_M2),
	.LEN_M2(ARLEN_M2),
	.SIZE_M2(ARSIZE_M2),
	.BURST_M2(ARBURST_M2),
	.VALID_M2(ARVALID_M2),
	.READY_M2(ARREADY_M2),

    //READ ADDRESS0
	.ID_S0(ARID_S0),
	.ADDR_S0(ARADDR_S0),
	.LEN_S0(ARLEN_S0),
	.SIZE_S0(ARSIZE_S0),
	.BURST_S0(ARBURST_S0),
	.VALID_S0(ARVALID_S0),
	.READY_S0(ARREADY_S0),

    //READ ADDRESS1
	.ID_S1(ARID_S1),
	.ADDR_S1(ARADDR_S1),
	.LEN_S1(ARLEN_S1),
	.SIZE_S1(ARSIZE_S1),
	.BURST_S1(ARBURST_S1),
	.VALID_S1(ARVALID_S1),
	.READY_S1(ARREADY_S1),

	//READ ADDRESS2
	.ID_S2(ARID_S2),
	.ADDR_S2(ARADDR_S2),
	.LEN_S2(ARLEN_S2),
	.SIZE_S2(ARSIZE_S2),
	.BURST_S2(ARBURST_S2),
	.VALID_S2(ARVALID_S2),
	.READY_S2(ARREADY_S2),

	//READ ADDRESS3
	.ID_S3(ARID_S3),
	.ADDR_S3(ARADDR_S3),
	.LEN_S3(ARLEN_S3),
	.SIZE_S3(ARSIZE_S3),
	.BURST_S3(ARBURST_S3),
	.VALID_S3(ARVALID_S3),
	.READY_S3(ARREADY_S3),

	//READ ADDRESS4
	.ID_S4(ARID_S4),
	.ADDR_S4(ARADDR_S4),
	.LEN_S4(ARLEN_S4),
	.SIZE_S4(ARSIZE_S4),
	.BURST_S4(ARBURST_S4),
	.VALID_S4(ARVALID_S4),
	.READY_S4(ARREADY_S4),

	//READ ADDRESS5
	.ID_S5(ARID_S5),
	.ADDR_S5(ARADDR_S5),
	.LEN_S5(ARLEN_S5),
	.SIZE_S5(ARSIZE_S5),
	.BURST_S5(ARBURST_S5),
	.VALID_S5(ARVALID_S5),
	.READY_S5(ARREADY_S5)
);

DR DR(
	.clk(ACLK),
	.rst(ARESETn),

	.getaddr_default(READ_getaddr_default),
	.finish_S0(read_finish_S0),
	.finish_S1(read_finish_S1),
	.finish_S2(read_finish_S2),
	.finish_S5(read_finish_S5),

    //READ DATA0
	.RID_M0(RID_M0),
	.RDATA_M0(RDATA_M0),
	.RRESP_M0(RRESP_M0),
	.RLAST_M0(RLAST_M0),
	.RVALID_M0(RVALID_M0),
	.RREADY_M0(RREADY_M0),

    //READ DATA1
	.RID_M1(RID_M1),
	.RDATA_M1(RDATA_M1),
	.RRESP_M1(RRESP_M1),
	.RLAST_M1(RLAST_M1),
	.RVALID_M1(RVALID_M1),
	.RREADY_M1(RREADY_M1),

	//READ DATA2
	.RID_M2(RID_M2),
	.RDATA_M2(RDATA_M2),
	.RRESP_M2(RRESP_M2),
	.RLAST_M2(RLAST_M2),
	.RVALID_M2(RVALID_M2),
	.RREADY_M2(RREADY_M2),

    //READ DATA0
	.RID_S0(RID_S0),
	.RDATA_S0(RDATA_S0),
	.RRESP_S0(RRESP_S0),
	.RLAST_S0(RLAST_S0),
	.RVALID_S0(RVALID_S0),
	.RREADY_S0(RREADY_S0),

    //READ DATA1
	.RID_S1(RID_S1),
	.RDATA_S1(RDATA_S1),
	.RRESP_S1(RRESP_S1),
	.RLAST_S1(RLAST_S1),
	.RVALID_S1(RVALID_S1),
	.RREADY_S1(RREADY_S1),

	//READ DATA2
	.RID_S2(RID_S2),
	.RDATA_S2(RDATA_S2),
	.RRESP_S2(RRESP_S2),
	.RLAST_S2(RLAST_S2),
	.RVALID_S2(RVALID_S2),
	.RREADY_S2(RREADY_S2),

	//READ DATA5
	.RID_S5(RID_S5),
	.RDATA_S5(RDATA_S5),
	.RRESP_S5(RRESP_S5),
	.RLAST_S5(RLAST_S5),
	.RVALID_S5(RVALID_S5),
	.RREADY_S5(RREADY_S5)
);

address_channel AW(
	.clk(ACLK),
    .rst(ARESETn),

	.busy(DW_busy),
	.getaddr_default(WRITE_getaddr_default),
	.finish_S0(1'b1),
	.finish_S1(1'b1),
	.finish_S2(1'b1),
	.finish_S3(1'b1),
	.finish_S4(1'b1),
	.finish_S5(1'b1),

	//MASTER ADDRESS0
	.ID_M0(`AXI_ID_BITS'b0),
	.ADDR_M0(`AXI_ADDR_BITS'b0),
	.LEN_M0(`AXI_LEN_BITS'b0),
	.SIZE_M0(`AXI_SIZE_BITS'b0),
	.BURST_M0(2'b0),
	.VALID_M0(1'b0),
	//.READY_M0(),
	
	//WRITE ADDRESS1
	.ID_M1(AWID_M1),
	.ADDR_M1(AWADDR_M1),
	.LEN_M1(AWLEN_M1),
	.SIZE_M1(AWSIZE_M1),
	.BURST_M1(AWBURST_M1),
	.VALID_M1(AWVALID_M1),
	.READY_M1(AWREADY_M1),

	//WRITE ADDRESS2
	.ID_M2(AWID_M2),
	.ADDR_M2(AWADDR_M2),
	.LEN_M2(AWLEN_M2),
	.SIZE_M2(AWSIZE_M2),
	.BURST_M2(AWBURST_M2),
	.VALID_M2(AWVALID_M2),
	.READY_M2(AWREADY_M2),

    //WRITE ADDRESS0
	.ID_S0(AWID_S0),
	.ADDR_S0(AWADDR_S0),
	.LEN_S0(AWLEN_S0),
	.SIZE_S0(AWSIZE_S0),
	.BURST_S0(AWBURST_S0),
	.VALID_S0(AWVALID_S0),
	.READY_S0(AWREADY_S0),

    //WRITE ADDRESS1
	.ID_S1(AWID_S1),
	.ADDR_S1(AWADDR_S1),
	.LEN_S1(AWLEN_S1),
	.SIZE_S1(AWSIZE_S1),
	.BURST_S1(AWBURST_S1),
	.VALID_S1(AWVALID_S1),
	.READY_S1(AWREADY_S1),

	//WRITE ADDRESS2
	.ID_S2(AWID_S2),
	.ADDR_S2(AWADDR_S2),
	.LEN_S2(AWLEN_S2),
	.SIZE_S2(AWSIZE_S2),
	.BURST_S2(AWBURST_S2),
	.VALID_S2(AWVALID_S2),
	.READY_S2(AWREADY_S2),

	//WRITE ADDRESS3
	.ID_S3(AWID_S3),
	.ADDR_S3(AWADDR_S3),
	.LEN_S3(AWLEN_S3),
	.SIZE_S3(AWSIZE_S3),
	.BURST_S3(AWBURST_S3),
	.VALID_S3(AWVALID_S3),
	.READY_S3(AWREADY_S3),

	//WRITE ADDRESS4
	.ID_S4(AWID_S4),
	.ADDR_S4(AWADDR_S4),
	.LEN_S4(AWLEN_S4),
	.SIZE_S4(AWSIZE_S4),
	.BURST_S4(AWBURST_S4),
	.VALID_S4(AWVALID_S4),
	.READY_S4(AWREADY_S4),

	//WRITE ADDRESS5
	.ID_S5(AWID_S5),
	.ADDR_S5(AWADDR_S5),
	.LEN_S5(AWLEN_S5),
	.SIZE_S5(AWSIZE_S5),
	.BURST_S5(AWBURST_S5),
	.VALID_S5(AWVALID_S5),
	.READY_S5(AWREADY_S5)

);

DW DW(
	//.getaddr_default(WRITE_getaddr_default),
	.clk(ACLK),
	.rst(ARESETn),

	.busy(DW_busy),
	.AWVALID_S0(AWREADY_S0 & AWVALID_S0),
	.AWVALID_S1(AWREADY_S1 & AWVALID_S1),
	.AWVALID_S2(AWREADY_S2 & AWVALID_S2),
	.AWVALID_S3(AWREADY_S3 & AWVALID_S3),
	.AWVALID_S4(AWREADY_S4 & AWVALID_S4),
	.AWVALID_S5(AWREADY_S5 & AWVALID_S5),

    //WRITE DATA1
	.WDATA_M1(WDATA_M1),
	.WSTRB_M1(WSTRB_M1),
	.WLAST_M1(WLAST_M1),
	.WVALID_M1(WVALID_M1),
	.WREADY_M1(WREADY_M1),

	//WRITE DATA1
	.WDATA_M2(WDATA_M2),
	.WSTRB_M2(WSTRB_M2),
	.WLAST_M2(WLAST_M2),
	.WVALID_M2(WVALID_M2),
	.WREADY_M2(WREADY_M2),

    //WRITE DATA0
	.WDATA_S0(WDATA_S0),
	.WSTRB_S0(WSTRB_S0),
	.WLAST_S0(WLAST_S0),
	.WVALID_S0(WVALID_S0),
	.WREADY_S0(WREADY_S0),

    //WRITE DATA1
	.WDATA_S1(WDATA_S1),
	.WSTRB_S1(WSTRB_S1),
	.WLAST_S1(WLAST_S1),
	.WVALID_S1(WVALID_S1),
	.WREADY_S1(WREADY_S1),

	//WRITE DATA2
	.WDATA_S2(WDATA_S2),
	.WSTRB_S2(WSTRB_S2),
	.WLAST_S2(WLAST_S2),
	.WVALID_S2(WVALID_S2),
	.WREADY_S2(WREADY_S2),

	//WRITE DATA3
	.WDATA_S3(WDATA_S3),
	.WSTRB_S3(WSTRB_S3),
	.WLAST_S3(WLAST_S3),
	.WVALID_S3(WVALID_S3),
	.WREADY_S3(WREADY_S3),

	//WRITE DATA4
	.WDATA_S4(WDATA_S4),
	.WSTRB_S4(WSTRB_S4),
	.WLAST_S4(WLAST_S4),
	.WVALID_S4(WVALID_S4),
	.WREADY_S4(WREADY_S4),

	//WRITE DATA5
	.WDATA_S5(WDATA_S5),
	.WSTRB_S5(WSTRB_S5),
	.WLAST_S5(WLAST_S5),
	.WVALID_S5(WVALID_S5),
	.WREADY_S5(WREADY_S5)
);

Write_Response Write_Response(
	.clk(ACLK),
	.rst(ARESETn),

    //WRITE RESPONSEM1
	.BID_M1(BID_M1),
	.BRESP_M1(BRESP_M1),
	.BVALID_M1(BVALID_M1),
	.BREADY_M1(BREADY_M1),

	//WRITE RESPONSEM2
	.BID_M2(BID_M2),
	.BRESP_M2(BRESP_M2),
	.BVALID_M2(BVALID_M2),
	.BREADY_M2(BREADY_M2),

    //WRITE RESPONSES0
	.BID_S0(BID_S0),
	.BRESP_S0(BRESP_S0),
	.BVALID_S0(BVALID_S0),
	.BREADY_S0(BREADY_S0),

    //WRITE RESPONSES1
	.BID_S1(BID_S1),
	.BRESP_S1(BRESP_S1),
	.BVALID_S1(BVALID_S1),
	.BREADY_S1(BREADY_S1),

	//WRITE RESPONSES2
	.BID_S2(BID_S2),
	.BRESP_S2(BRESP_S2),
	.BVALID_S2(BVALID_S2),
	.BREADY_S2(BREADY_S2),

	//WRITE RESPONSES3
	.BID_S3(BID_S3),
	.BRESP_S3(BRESP_S3),
	.BVALID_S3(BVALID_S3),
	.BREADY_S3(BREADY_S3),

	//WRITE RESPONSES4
	.BID_S4(BID_S4),
	.BRESP_S4(BRESP_S4),
	.BVALID_S4(BVALID_S4),
	.BREADY_S4(BREADY_S4),

	//WRITE RESPONSES5
	.BID_S5(BID_S5),
	.BRESP_S5(BRESP_S5),
	.BVALID_S5(BVALID_S5),
	.BREADY_S5(BREADY_S5)
);


endmodule
