`include "../include/AXI_define.svh"
`include "CPU_wrapper.sv"
`include "SRAM_wrapper.sv"
`include "AXI/AXI.sv"
`include "ROM_wrapper.sv"
`include "DRAM_wrapper.sv"
`include "DMA_wrapper.sv"
`include "WDT_wrapper.sv"

module top(
	input clk,
	input rst,
	input clk2,
	input rst2,
	//ROM
	input [31:0] ROM_out,
	output logic ROM_read,
	output logic ROM_enable,
	output logic [11:0] ROM_address,
	//DRAM
	input [31:0] DRAM_Q,
	input DRAM_valid,
	output logic DRAM_CSn,
	output logic [3:0] DRAM_WEn,
	output logic DRAM_RASn,
	output logic DRAM_CASn,
	output logic [10:0] DRAM_A,
	output logic [31:0] DRAM_D
);
	logic DMA_interrupt, WTO_interrupt;
	//////////////// M0 ////////////////
	logic [`AXI_ID_BITS-1:0] 	ARID_M0;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_M0;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_M0;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_M0;
	logic [1:0] 				ARBURST_M0;
	logic 						ARVALID_M0;
	logic 						ARREADY_M0;

	logic [`AXI_ID_BITS-1:0] 	RID_M0;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_M0;
	logic [1:0] 				RRESP_M0;
	logic 						RLAST_M0;
	logic 						RVALID_M0;
	logic 						RREADY_M0;

	//////////////// M1 ////////////////
	logic [`AXI_ID_BITS-1:0] 	AWID_M1;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_M1;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_M1;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_M1;
	logic [1:0] 				AWBURST_M1;
	logic 						AWVALID_M1;
	logic 						AWREADY_M1;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_M1;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_M1;
	logic 						WLAST_M1;
	logic 						WVALID_M1;
	logic 						WREADY_M1;

	logic [`AXI_ID_BITS-1:0] 	BID_M1;
	logic [1:0] 				BRESP_M1;
	logic 						BVALID_M1;
	logic 						BREADY_M1;

	logic [`AXI_ID_BITS-1:0] 	ARID_M1;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_M1;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_M1;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_M1;
	logic [1:0] 				ARBURST_M1;
	logic 						ARVALID_M1;
	logic 						ARREADY_M1;

	logic [`AXI_ID_BITS-1:0] 	RID_M1;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_M1;
	logic [1:0] 				RRESP_M1;
	logic 						RLAST_M1;
	logic 						RVALID_M1;
	logic 						RREADY_M1;

	//////////////// M2 ////////////////
	logic [`AXI_ID_BITS-1:0] 	AWID_M2;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_M2;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_M2;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_M2;
	logic [1:0] 				AWBURST_M2;
	logic 						AWVALID_M2;
	logic 						AWREADY_M2;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_M2;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_M2;
	logic 						WLAST_M2;
	logic 						WVALID_M2;
	logic 						WREADY_M2;

	logic [`AXI_ID_BITS-1:0] 	BID_M2;
	logic [1:0] 				BRESP_M2;
	logic 						BVALID_M2;
	logic 						BREADY_M2;

	logic [`AXI_ID_BITS-1:0] 	ARID_M2;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_M2;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_M2;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_M2;
	logic [1:0] 				ARBURST_M2;
	logic 						ARVALID_M2;
	logic 						ARREADY_M2;

	logic [`AXI_ID_BITS-1:0] 	RID_M2;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_M2;
	logic [1:0] 				RRESP_M2;
	logic 						RLAST_M2;
	logic 						RVALID_M2;
	logic 						RREADY_M2;

	//////////////// S0 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S0;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S0;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S0;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S0;
	logic [1:0] 				AWBURST_S0;
	logic 						AWVALID_S0;
	logic 						AWREADY_S0;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S0;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S0;
	logic 						WLAST_S0;
	logic 						WVALID_S0;
	logic 						WREADY_S0;

	logic [`AXI_IDS_BITS-1:0] 	BID_S0;
	logic [1:0] 				BRESP_S0;
	logic 						BVALID_S0;
	logic 						BREADY_S0;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S0;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S0;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S0;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S0;
	logic [1:0] 				ARBURST_S0;
	logic 						ARVALID_S0;
	logic 						ARREADY_S0;

	logic [`AXI_IDS_BITS-1:0] 	RID_S0;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S0;
	logic [1:0] 				RRESP_S0;
	logic 						RLAST_S0;
	logic 						RVALID_S0;
	logic 						RREADY_S0;

	//////////////// S1 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S1;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S1;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S1;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S1;
	logic [1:0] 				AWBURST_S1;
	logic 						AWVALID_S1;
	logic 						AWREADY_S1;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S1;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S1;
	logic 						WLAST_S1;
	logic 						WVALID_S1;
	logic 						WREADY_S1;

	logic [`AXI_IDS_BITS-1:0] 	BID_S1;
	logic [1:0] 				BRESP_S1;
	logic 						BVALID_S1;
	logic 						BREADY_S1;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S1;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S1;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S1;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S1;
	logic [1:0] 				ARBURST_S1;
	logic 						ARVALID_S1;
	logic 						ARREADY_S1;

	logic [`AXI_IDS_BITS-1:0] 	RID_S1;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S1;
	logic [1:0] 				RRESP_S1;
	logic 						RLAST_S1;
	logic 						RVALID_S1;
	logic 						RREADY_S1;

	//////////////// S2 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S2;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S2;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S2;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S2;
	logic [1:0] 				AWBURST_S2;
	logic 						AWVALID_S2;
	logic 						AWREADY_S2;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S2;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S2;
	logic 						WLAST_S2;
	logic 						WVALID_S2;
	logic 						WREADY_S2;

	logic [`AXI_IDS_BITS-1:0] 	BID_S2;
	logic [1:0] 				BRESP_S2;
	logic 						BVALID_S2;
	logic 						BREADY_S2;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S2;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S2;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S2;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S2;
	logic [1:0] 				ARBURST_S2;
	logic 						ARVALID_S2;
	logic 						ARREADY_S2;

	logic [`AXI_IDS_BITS-1:0] 	RID_S2;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S2;
	logic [1:0] 				RRESP_S2;
	logic 						RLAST_S2;
	logic 						RVALID_S2;
	logic 						RREADY_S2;

	//////////////// S3 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S3;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S3;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S3;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S3;
	logic [1:0] 				AWBURST_S3;
	logic 						AWVALID_S3;
	logic 						AWREADY_S3;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S3;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S3;
	logic 						WLAST_S3;
	logic 						WVALID_S3;
	logic 						WREADY_S3;

	logic [`AXI_IDS_BITS-1:0] 	BID_S3;
	logic [1:0] 				BRESP_S3;
	logic 						BVALID_S3;
	logic 						BREADY_S3;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S3;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S3;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S3;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S3;
	logic [1:0] 				ARBURST_S3;
	logic 						ARVALID_S3;
	logic 						ARREADY_S3;

	logic [`AXI_IDS_BITS-1:0] 	RID_S3;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S3;
	logic [1:0] 				RRESP_S3;
	logic 						RLAST_S3;
	logic 						RVALID_S3;
	logic 						RREADY_S3;

	//////////////// S4 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S4;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S4;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S4;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S4;
	logic [1:0] 				AWBURST_S4;
	logic 						AWVALID_S4;
	logic 						AWREADY_S4;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S4;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S4;
	logic 						WLAST_S4;
	logic 						WVALID_S4;
	logic 						WREADY_S4;

	logic [`AXI_IDS_BITS-1:0] 	BID_S4;
	logic [1:0] 				BRESP_S4;
	logic 						BVALID_S4;
	logic 						BREADY_S4;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S4;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S4;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S4;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S4;
	logic [1:0] 				ARBURST_S4;
	logic 						ARVALID_S4;
	logic 						ARREADY_S4;

	logic [`AXI_IDS_BITS-1:0] 	RID_S4;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S4;
	logic [1:0] 				RRESP_S4;
	logic 						RLAST_S4;
	logic 						RVALID_S4;
	logic 						RREADY_S4;

	//////////////// S5 ////////////////
	logic [`AXI_IDS_BITS-1:0] 	AWID_S5;
	logic [`AXI_ADDR_BITS-1:0] 	AWADDR_S5;
	logic [`AXI_LEN_BITS-1:0] 	AWLEN_S5;
	logic [`AXI_SIZE_BITS-1:0] 	AWSIZE_S5;
	logic [1:0] 				AWBURST_S5;
	logic 						AWVALID_S5;
	logic 						AWREADY_S5;

	logic [`AXI_DATA_BITS-1:0] 	WDATA_S5;
	logic [`AXI_STRB_BITS-1:0] 	WSTRB_S5;
	logic 						WLAST_S5;
	logic 						WVALID_S5;
	logic 						WREADY_S5;

	logic [`AXI_IDS_BITS-1:0] 	BID_S5;
	logic [1:0] 				BRESP_S5;
	logic 						BVALID_S5;
	logic 						BREADY_S5;

	logic [`AXI_IDS_BITS-1:0] 	ARID_S5;
	logic [`AXI_ADDR_BITS-1:0] 	ARADDR_S5;
	logic [`AXI_LEN_BITS-1:0] 	ARLEN_S5;
	logic [`AXI_SIZE_BITS-1:0] 	ARSIZE_S5;
	logic [1:0] 				ARBURST_S5;
	logic 						ARVALID_S5;
	logic 						ARREADY_S5;

	logic [`AXI_IDS_BITS-1:0] 	RID_S5;
	logic [`AXI_DATA_BITS-1:0] 	RDATA_S5;
	logic [1:0] 				RRESP_S5;
	logic 						RLAST_S5;
	logic 						RVALID_S5;
	logic 						RREADY_S5;

	WDT_wrapper WDT_wrapper(
		.clk			(clk				),
		.rst			(rst				),
		.clk2			(clk2				),
		.rst2			(rst2				),

		.WTO			(WTO_interrupt		),
		//WRITE ADDRESS0
		.AWID			(AWID_S4			),
		.AWADDR			(AWADDR_S4			),
		.AWLEN			(AWLEN_S4			),
		.AWSIZE			(AWSIZE_S4			),
		.AWBURST		(AWBURST_S4			),
		.AWVALID		(AWVALID_S4			),
		.AWREADY		(AWREADY_S4			),

		//WRITE DATA0
		.WDATA			(WDATA_S4			),
		.WSTRB			(WSTRB_S4			),
		.WLAST			(WLAST_S4			),
		.WVALID			(WVALID_S4			),
		.WREADY			(WREADY_S4			),

		//WRITE RESPONSE0
		.BID			(BID_S4				),
		.BRESP			(BRESP_S4			),
		.BVALID			(BVALID_S4			),
		.BREADY			(BREADY_S4			)
	);

	DMA_wrapper DMA_wrapper(
		.clk			(clk				),
		.rst			(rst				),

		.DMA_interrupt	(DMA_interrupt		),
		//WRITE ADDRESS0
		.AWID_S			(AWID_S3			),
		.AWADDR_S		(AWADDR_S3			),
		.AWLEN_S		(AWLEN_S3			),
		.AWSIZE_S		(AWSIZE_S3			),
		.AWBURST_S		(AWBURST_S3			),
		.AWVALID_S		(AWVALID_S3			),
		.AWREADY_S		(AWREADY_S3			),

		//WRITE DATA0
		.WDATA_S		(WDATA_S3			),
		.WSTRB_S		(WSTRB_S3			),
		.WLAST_S		(WLAST_S3			),
		.WVALID_S		(WVALID_S3			),
		.WREADY_S		(WREADY_S3			),

		//WRITE RESPONSE0
		.BID_S			(BID_S3				),
		.BRESP_S		(BRESP_S3			),
		.BVALID_S		(BVALID_S3			),
		.BREADY_S		(BREADY_S3			),

		//READ ADDRESS1
		.ARID_M			(ARID_M2			),
		.ARADDR_M		(ARADDR_M2			),
		.ARLEN_M		(ARLEN_M2			),
		.ARSIZE_M		(ARSIZE_M2			),
		.ARBURST_M		(ARBURST_M2			),
		.ARVALID_M		(ARVALID_M2			),
		.ARREADY_M		(ARREADY_M2			),
		
		//WRITE ADDRESS1
		.AWID_M			(AWID_M2			),
		.AWADDR_M		(AWADDR_M2			),
		.AWLEN_M		(AWLEN_M2			),
		.AWSIZE_M		(AWSIZE_M2			),
		.AWBURST_M		(AWBURST_M2			),
		.AWVALID_M		(AWVALID_M2			),
		.AWREADY_M		(AWREADY_M2			),
		//READ DATA1
		.RID_M			(RID_M2				),
		.RDATA_M		(RDATA_M2			),
		.RRESP_M		(RRESP_M2			),
		.RLAST_M		(RLAST_M2			),
		.RVALID_M		(RVALID_M2			),
		.RREADY_M		(RREADY_M2			),

		//WRITE DATA
		.WDATA_M		(WDATA_M2			),
		.WSTRB_M		(WSTRB_M2			),
		.WLAST_M		(WLAST_M2			),
		.WVALID_M		(WVALID_M2			),
		.WREADY_M		(WREADY_M2			),

		//WRITE RESPONSE
		.BID_M			(BID_M2				),
		.BRESP_M		(BRESP_M2			),
		.BVALID_M		(BVALID_M2			),
		.BREADY_M		(BREADY_M2			)
	);

	ROM_wrapper ROM_wrapper(
		.clk			(clk				),
		.rst			(rst				),

		.ARID			(ARID_S0			),
		.ARADDR			(ARADDR_S0			),
		.ARLEN			(ARLEN_S0			),
		.ARSIZE			(ARSIZE_S0			),
		.ARBURST		(ARBURST_S0			),
		.ARVALID		(ARVALID_S0			),
		.ARREADY		(ARREADY_S0			),

		.RID			(RID_S0				),
		.RDATA			(RDATA_S0			),
		.RRESP			(RRESP_S0			),
		.RLAST			(RLAST_S0			),
		.RVALID			(RVALID_S0			),
		.RREADY			(RREADY_S0			),
		.AWID			(AWID_S0			),
		.AWADDR			(AWADDR_S0			),
		.AWLEN			(AWLEN_S0			),
		.AWSIZE			(AWSIZE_S0			),
		.AWBURST		(AWBURST_S0			),
		.AWVALID		(AWVALID_S0			),
		.AWREADY		(AWREADY_S0			),
		.WDATA			(WDATA_S0			),
		.WSTRB			(WSTRB_S0			),
		.WLAST			(WLAST_S0			),
		.WVALID			(WVALID_S0			),
		.WREADY			(WREADY_S0			),

		.BID			(BID_S0				),
		.BRESP			(BRESP_S0			),
		.BVALID			(BVALID_S0			),
		.BREADY			(BREADY_S0			),

		.ROM_out		(ROM_out			),
		.ROM_read		(ROM_read			),
		.ROM_enable		(ROM_enable			),
		.ROM_address	(ROM_address		)
	);

	DRAM_wrapper DRAM_wrapper(
		.clk			(clk				),
		.rst			(rst				),
		.ARID			(ARID_S5			),
		.ARADDR			(ARADDR_S5			),
		.ARLEN			(ARLEN_S5			),
		.ARSIZE			(ARSIZE_S5			),
		.ARBURST		(ARBURST_S5			),
		.ARVALID		(ARVALID_S5			),
		.ARREADY		(ARREADY_S5			),

		.RID			(RID_S5				),
		.RDATA			(RDATA_S5			),
		.RRESP			(RRESP_S5			),
		.RLAST			(RLAST_S5			),
		.RVALID			(RVALID_S5			),
		.RREADY			(RREADY_S5			),
		.AWID			(AWID_S5			),
		.AWADDR			(AWADDR_S5			),
		.AWLEN			(AWLEN_S5			),
		.AWSIZE			(AWSIZE_S5			),
		.AWBURST		(AWBURST_S5			),
		.AWVALID		(AWVALID_S5			),
		.AWREADY		(AWREADY_S5			),
		.WDATA			(WDATA_S5			),
		.WSTRB			(WSTRB_S5			),
		.WLAST			(WLAST_S5			),
		.WVALID			(WVALID_S5			),
		.WREADY			(WREADY_S5			),

		.BID			(BID_S5				),
		.BRESP			(BRESP_S5			),
		.BVALID			(BVALID_S5			),
		.BREADY			(BREADY_S5			),


		.DRAM_CSn		(DRAM_CSn			),
		.DRAM_WEn		(DRAM_WEn			),
		.DRAM_RASn		(DRAM_RASn			),
		.DRAM_CASn		(DRAM_CASn			),
		.DRAM_A			(DRAM_A				),
		.DRAM_D			(DRAM_D				),
		.DRAM_Q			(DRAM_Q				),
		.DRAM_valid		(DRAM_valid			)
	);

	CPU_wrapper CPU_wrapper(
		.clk			(clk				),
		.rst			(rst				),
		.DMA_interrupt	(DMA_interrupt		),
		.WTO_interrupt	(WTO_interrupt		),

		.AWID_M1		(AWID_M1			),
		.AWADDR_M1		(AWADDR_M1			),
		.AWLEN_M1		(AWLEN_M1			),
		.AWSIZE_M1		(AWSIZE_M1			),
		.AWBURST_M1		(AWBURST_M1			),
		.AWVALID_M1		(AWVALID_M1			),
		.AWREADY_M1		(AWREADY_M1			),

		.WDATA_M1		(WDATA_M1			),
		.WSTRB_M1		(WSTRB_M1			),
		.WLAST_M1		(WLAST_M1			),
		.WVALID_M1		(WVALID_M1			),
		.WREADY_M1		(WREADY_M1			),

		.BID_M1			(BID_M1				),
		.BRESP_M1		(BRESP_M1			),
		.BVALID_M1		(BVALID_M1			),
		.BREADY_M1		(BREADY_M1			),

		.ARID_M0		(ARID_M0			),
		.ARADDR_M0		(ARADDR_M0			),
		.ARLEN_M0		(ARLEN_M0			),
		.ARSIZE_M0		(ARSIZE_M0			),
		.ARBURST_M0		(ARBURST_M0			),
		.ARVALID_M0		(ARVALID_M0			),
		.ARREADY_M0		(ARREADY_M0			),

		.RID_M0			(RID_M0				),
		.RDATA_M0		(RDATA_M0			),
		.RRESP_M0		(RRESP_M0			),
		.RLAST_M0		(RLAST_M0			),
		.RVALID_M0		(RVALID_M0			),
		.RREADY_M0		(RREADY_M0			),

		.ARID_M1		(ARID_M1			),
		.ARADDR_M1		(ARADDR_M1			),
		.ARLEN_M1		(ARLEN_M1			),
		.ARSIZE_M1		(ARSIZE_M1			),
		.ARBURST_M1		(ARBURST_M1			),
		.ARVALID_M1		(ARVALID_M1			),
		.ARREADY_M1		(ARREADY_M1			),

		.RID_M1			(RID_M1				),
		.RDATA_M1		(RDATA_M1			),
		.RRESP_M1		(RRESP_M1			),
		.RLAST_M1		(RLAST_M1			),
		.RVALID_M1		(RVALID_M1			),
		.RREADY_M1		(RREADY_M1			)
	);

	SRAM_wrapper IM1(
		.CLK			(clk				),
		.RST			(~rst				),

		.ARID			(ARID_S1			),
		.ARADDR			(ARADDR_S1			),
		.ARLEN			(ARLEN_S1			),
		.ARSIZE			(ARSIZE_S1			),
		.ARBURST		(ARBURST_S1			),
		.ARVALID		(ARVALID_S1			),
		.ARREADY		(ARREADY_S1			),

		.RID			(RID_S1				),
		.RDATA			(RDATA_S1			),
		.RRESP			(RRESP_S1			),
		.RLAST			(RLAST_S1			),
		.RVALID			(RVALID_S1			),
		.RREADY			(RREADY_S1			),

		.AWID			(AWID_S1			),
		.AWADDR			(AWADDR_S1			),
		.AWLEN			(AWLEN_S1			),
		.AWSIZE			(AWSIZE_S1			),
		.AWBURST		(AWBURST_S1			),
		.AWVALID		(AWVALID_S1			),
		.AWREADY		(AWREADY_S1			),

		.WDATA			(WDATA_S1			),
		.WSTRB			(WSTRB_S1			),
		.WLAST			(WLAST_S1			),
		.WVALID			(WVALID_S1			),
		.WREADY			(WREADY_S1			),

		.BID			(BID_S1				),
		.BRESP			(BRESP_S1			),
		.BVALID			(BVALID_S1			),
		.BREADY			(BREADY_S1			)
	);

	SRAM_wrapper DM1(
		.CLK			(clk				),
		.RST			(~rst				),

		.ARID			(ARID_S2			),
		.ARADDR			(ARADDR_S2			),
		.ARLEN			(ARLEN_S2			),
		.ARSIZE			(ARSIZE_S2			),
		.ARBURST		(ARBURST_S2			),
		.ARVALID		(ARVALID_S2			),
		.ARREADY		(ARREADY_S2			),

		.RID			(RID_S2				),
		.RDATA			(RDATA_S2			),
		.RRESP			(RRESP_S2			),
		.RLAST			(RLAST_S2			),
		.RVALID			(RVALID_S2			),
		.RREADY			(RREADY_S2			),

		.AWID			(AWID_S2			),
		.AWADDR			(AWADDR_S2			),
		.AWLEN			(AWLEN_S2			),
		.AWSIZE			(AWSIZE_S2			),
		.AWBURST		(AWBURST_S2			),
		.AWVALID		(AWVALID_S2			),
		.AWREADY		(AWREADY_S2			),

		.WDATA			(WDATA_S2			),
		.WSTRB			(WSTRB_S2			),
		.WLAST			(WLAST_S2			),
		.WVALID			(WVALID_S2			),
		.WREADY			(WREADY_S2			),

		.BID			(BID_S2				),
		.BRESP			(BRESP_S2			),
		.BVALID			(BVALID_S2			),
		.BREADY			(BREADY_S2			)
	);

	AXI AXI(
		.ACLK			(clk				),
		.ARESETn		(~rst				),

		//////////////// M0 ////////////////
		.ARID_M0		(ARID_M0			),
		.ARADDR_M0		(ARADDR_M0			),
		.ARLEN_M0		(ARLEN_M0			),
		.ARSIZE_M0		(ARSIZE_M0			),
		.ARBURST_M0		(ARBURST_M0			),
		.ARVALID_M0		(ARVALID_M0			),
		.ARREADY_M0		(ARREADY_M0			),

		.RID_M0			(RID_M0				),
		.RDATA_M0		(RDATA_M0			),
		.RRESP_M0		(RRESP_M0			),
		.RLAST_M0		(RLAST_M0			),
		.RVALID_M0		(RVALID_M0			),
		.RREADY_M0		(RREADY_M0			),

		//////////////// M1 ////////////////
		.AWID_M1		(AWID_M1			),
		.AWADDR_M1		(AWADDR_M1			),
		.AWLEN_M1		(AWLEN_M1			),
		.AWSIZE_M1		(AWSIZE_M1			),
		.AWBURST_M1		(AWBURST_M1			),
		.AWVALID_M1		(AWVALID_M1			),
		.AWREADY_M1		(AWREADY_M1			),

		.WDATA_M1		(WDATA_M1			),
		.WSTRB_M1		(WSTRB_M1			),
		.WLAST_M1		(WLAST_M1			),
		.WVALID_M1		(WVALID_M1			),
		.WREADY_M1		(WREADY_M1			),

		.BID_M1			(BID_M1				),
		.BRESP_M1		(BRESP_M1			),
		.BVALID_M1		(BVALID_M1			),
		.BREADY_M1		(BREADY_M1			),

		.ARID_M1		(ARID_M1			),
		.ARADDR_M1		(ARADDR_M1			),
		.ARLEN_M1		(ARLEN_M1			),
		.ARSIZE_M1		(ARSIZE_M1			),
		.ARBURST_M1		(ARBURST_M1			),
		.ARVALID_M1		(ARVALID_M1			),
		.ARREADY_M1		(ARREADY_M1			),

		.RID_M1			(RID_M1				),
		.RDATA_M1		(RDATA_M1			),
		.RRESP_M1		(RRESP_M1			),
		.RLAST_M1		(RLAST_M1			),
		.RVALID_M1		(RVALID_M1			),
		.RREADY_M1		(RREADY_M1			),

		//////////////// M2 ////////////////
		.AWID_M2		(AWID_M2			),
		.AWADDR_M2		(AWADDR_M2			),
		.AWLEN_M2		(AWLEN_M2			),
		.AWSIZE_M2		(AWSIZE_M2			),
		.AWBURST_M2		(AWBURST_M2			),
		.AWVALID_M2		(AWVALID_M2			),
		.AWREADY_M2		(AWREADY_M2			),

		.WDATA_M2		(WDATA_M2			),
		.WSTRB_M2		(WSTRB_M2			),
		.WLAST_M2		(WLAST_M2			),
		.WVALID_M2		(WVALID_M2			),
		.WREADY_M2		(WREADY_M2			),

		.BID_M2			(BID_M2				),
		.BRESP_M2		(BRESP_M2			),
		.BVALID_M2		(BVALID_M2			),
		.BREADY_M2		(BREADY_M2			),
		
		.ARID_M2		(ARID_M2			),
		.ARADDR_M2		(ARADDR_M2			),
		.ARLEN_M2		(ARLEN_M2			),
		.ARSIZE_M2		(ARSIZE_M2			),
		.ARBURST_M2		(ARBURST_M2			),
		.ARVALID_M2		(ARVALID_M2			),
		.ARREADY_M2		(ARREADY_M2			),

		.RID_M2			(RID_M2				),
		.RDATA_M2		(RDATA_M2			),
		.RRESP_M2		(RRESP_M2			),
		.RLAST_M2		(RLAST_M2			),
		.RVALID_M2		(RVALID_M2			),
		.RREADY_M2		(RREADY_M2			),


		//////////////// S0 ////////////////
		.AWID_S0		(AWID_S0			),
		.AWADDR_S0		(AWADDR_S0			),
		.AWLEN_S0		(AWLEN_S0			),
		.AWSIZE_S0		(AWSIZE_S0			),
		.AWBURST_S0		(AWBURST_S0			),
		.AWVALID_S0		(AWVALID_S0			),
		.AWREADY_S0		(AWREADY_S0			),

		.WDATA_S0		(WDATA_S0			),
		.WSTRB_S0		(WSTRB_S0			),
		.WLAST_S0		(WLAST_S0			),
		.WVALID_S0		(WVALID_S0			),
		.WREADY_S0		(WREADY_S0			),

		.BID_S0			(BID_S0				),
		.BRESP_S0		(BRESP_S0			),
		.BVALID_S0		(BVALID_S0			),
		.BREADY_S0		(BREADY_S0			),

		.ARID_S0		(ARID_S0			),
		.ARADDR_S0		(ARADDR_S0			),
		.ARLEN_S0		(ARLEN_S0			),
		.ARSIZE_S0		(ARSIZE_S0			),
		.ARBURST_S0		(ARBURST_S0			),
		.ARVALID_S0		(ARVALID_S0			),
		.ARREADY_S0		(ARREADY_S0			),

		.RID_S0			(RID_S0				),
		.RDATA_S0		(RDATA_S0			),
		.RRESP_S0		(RRESP_S0			),
		.RLAST_S0		(RLAST_S0			),
		.RVALID_S0		(RVALID_S0			),
		.RREADY_S0		(RREADY_S0			),

		//////////////// S1 ////////////////
		.AWID_S1		(AWID_S1			),
		.AWADDR_S1		(AWADDR_S1			),
		.AWLEN_S1		(AWLEN_S1			),
		.AWSIZE_S1		(AWSIZE_S1			),
		.AWBURST_S1		(AWBURST_S1			),
		.AWVALID_S1		(AWVALID_S1			),
		.AWREADY_S1		(AWREADY_S1			),

		.WDATA_S1		(WDATA_S1			),
		.WSTRB_S1		(WSTRB_S1			),
		.WLAST_S1		(WLAST_S1			),
		.WVALID_S1		(WVALID_S1			),
		.WREADY_S1		(WREADY_S1			),

		.BID_S1			(BID_S1				),
		.BRESP_S1		(BRESP_S1			),
		.BVALID_S1		(BVALID_S1			),
		.BREADY_S1		(BREADY_S1			),

		.ARID_S1		(ARID_S1			),
		.ARADDR_S1		(ARADDR_S1			),
		.ARLEN_S1		(ARLEN_S1			),
		.ARSIZE_S1		(ARSIZE_S1			),
		.ARBURST_S1		(ARBURST_S1			),
		.ARVALID_S1		(ARVALID_S1			),
		.ARREADY_S1		(ARREADY_S1			),

		.RID_S1			(RID_S1				),
		.RDATA_S1		(RDATA_S1			),
		.RRESP_S1		(RRESP_S1			),
		.RLAST_S1		(RLAST_S1			),
		.RVALID_S1		(RVALID_S1			),
		.RREADY_S1		(RREADY_S1			),

		//////////////// S2 ////////////////
		.AWID_S2		(AWID_S2			),
		.AWADDR_S2		(AWADDR_S2			),
		.AWLEN_S2		(AWLEN_S2			),
		.AWSIZE_S2		(AWSIZE_S2			),
		.AWBURST_S2		(AWBURST_S2			),
		.AWVALID_S2		(AWVALID_S2			),
		.AWREADY_S2		(AWREADY_S2			),

		.WDATA_S2		(WDATA_S2			),
		.WSTRB_S2		(WSTRB_S2			),
		.WLAST_S2		(WLAST_S2			),
		.WVALID_S2		(WVALID_S2			),
		.WREADY_S2		(WREADY_S2			),

		.BID_S2			(BID_S2				),
		.BRESP_S2		(BRESP_S2			),
		.BVALID_S2		(BVALID_S2			),
		.BREADY_S2		(BREADY_S2			),

		.ARID_S2		(ARID_S2			),
		.ARADDR_S2		(ARADDR_S2			),
		.ARLEN_S2		(ARLEN_S2			),
		.ARSIZE_S2		(ARSIZE_S2			),
		.ARBURST_S2		(ARBURST_S2			),
		.ARVALID_S2		(ARVALID_S2			),
		.ARREADY_S2		(ARREADY_S2			),

		.RID_S2			(RID_S2				),
		.RDATA_S2		(RDATA_S2			),
		.RRESP_S2		(RRESP_S2			),
		.RLAST_S2		(RLAST_S2			),
		.RVALID_S2		(RVALID_S2			),
		.RREADY_S2		(RREADY_S2			),

		//////////////// S3 ////////////////
		.AWID_S3		(AWID_S3			),
		.AWADDR_S3		(AWADDR_S3			),
		.AWLEN_S3		(AWLEN_S3			),
		.AWSIZE_S3		(AWSIZE_S3			),
		.AWBURST_S3		(AWBURST_S3			),
		.AWVALID_S3		(AWVALID_S3			),
		.AWREADY_S3		(AWREADY_S3			),

		.WDATA_S3		(WDATA_S3			),
		.WSTRB_S3		(WSTRB_S3			),
		.WLAST_S3		(WLAST_S3			),
		.WVALID_S3		(WVALID_S3			),
		.WREADY_S3		(WREADY_S3			),

		.BID_S3			(BID_S3				),
		.BRESP_S3		(BRESP_S3			),
		.BVALID_S3		(BVALID_S3			),
		.BREADY_S3		(BREADY_S3			),

		.ARID_S3		(ARID_S3			),
		.ARADDR_S3		(ARADDR_S3			),
		.ARLEN_S3		(ARLEN_S3			),
		.ARSIZE_S3		(ARSIZE_S3			),
		.ARBURST_S3		(ARBURST_S3			),
		.ARVALID_S3		(ARVALID_S3			),
		.ARREADY_S3		(1'b0/*ARREADY_S3*/			),

		.RID_S3			(RID_S3				),
		.RDATA_S3		(RDATA_S3			),
		.RRESP_S3		(RRESP_S3			),
		.RLAST_S3		(RLAST_S3			),
		.RVALID_S3		(RVALID_S3			),
		.RREADY_S3		(RREADY_S3			),

		//////////////// S4 ////////////////
		.AWID_S4		(AWID_S4			),
		.AWADDR_S4		(AWADDR_S4			),
		.AWLEN_S4		(AWLEN_S4			),
		.AWSIZE_S4		(AWSIZE_S4			),
		.AWBURST_S4		(AWBURST_S4			),
		.AWVALID_S4		(AWVALID_S4			),
		.AWREADY_S4		(AWREADY_S4			),

		.WDATA_S4		(WDATA_S4			),
		.WSTRB_S4		(WSTRB_S4			),
		.WLAST_S4		(WLAST_S4			),
		.WVALID_S4		(WVALID_S4			),
		.WREADY_S4		(WREADY_S4			),

		.BID_S4			(BID_S4				),
		.BRESP_S4		(BRESP_S4			),
		.BVALID_S4		(BVALID_S4			),
		.BREADY_S4		(BREADY_S4			),

		.ARID_S4		(ARID_S4			),
		.ARADDR_S4		(ARADDR_S4			),
		.ARLEN_S4		(ARLEN_S4			),
		.ARSIZE_S4		(ARSIZE_S4			),
		.ARBURST_S4		(ARBURST_S4			),
		.ARVALID_S4		(ARVALID_S4			),
		.ARREADY_S4		(1'b0/*ARREADY_S4*/			),

		.RID_S4			(RID_S4				),
		.RDATA_S4		(RDATA_S4			),
		.RRESP_S4		(RRESP_S4			),
		.RLAST_S4		(RLAST_S4			),
		.RVALID_S4		(RVALID_S4			),
		.RREADY_S4		(RREADY_S4			),

		//////////////// S5 ////////////////
		.AWID_S5		(AWID_S5			),
		.AWADDR_S5		(AWADDR_S5			),
		.AWLEN_S5		(AWLEN_S5			),
		.AWSIZE_S5		(AWSIZE_S5			),
		.AWBURST_S5		(AWBURST_S5			),
		.AWVALID_S5		(AWVALID_S5			),
		.AWREADY_S5		(AWREADY_S5			),

		.WDATA_S5		(WDATA_S5			),
		.WSTRB_S5		(WSTRB_S5			),
		.WLAST_S5		(WLAST_S5			),
		.WVALID_S5		(WVALID_S5			),
		.WREADY_S5		(WREADY_S5			),

		.BID_S5			(BID_S5				),
		.BRESP_S5		(BRESP_S5			),
		.BVALID_S5		(BVALID_S5			),
		.BREADY_S5		(BREADY_S5			),

		.ARID_S5		(ARID_S5			),
		.ARADDR_S5		(ARADDR_S5			),
		.ARLEN_S5		(ARLEN_S5			),
		.ARSIZE_S5		(ARSIZE_S5			),
		.ARBURST_S5		(ARBURST_S5			),
		.ARVALID_S5		(ARVALID_S5			),
		.ARREADY_S5		(ARREADY_S5			),

		.RID_S5			(RID_S5				),
		.RDATA_S5		(RDATA_S5			),
		.RRESP_S5		(RRESP_S5			),
		.RLAST_S5		(RLAST_S5			),
		.RVALID_S5		(RVALID_S5			),
		.RREADY_S5		(RREADY_S5			)
	);

endmodule
