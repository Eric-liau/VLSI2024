`include "../../include/AXI_define.svh"
module DW(
	//input getaddr_default,
	input [1:0] write_slave,

    //WRITE DATA
	input [`AXI_DATA_BITS-1:0] WDATA_M1,
	input [`AXI_STRB_BITS-1:0] WSTRB_M1,
	input WLAST_M1,
	input WVALID_M1,
	output logic WREADY_M1,

    //WRITE DATA0
	output logic [`AXI_DATA_BITS-1:0] WDATA_S0,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S0,
	output logic WLAST_S0,
	output logic WVALID_S0,
	input WREADY_S0,

    //WRITE DATA1
	output logic [`AXI_DATA_BITS-1:0] WDATA_S1,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S1,
	output logic WLAST_S1,
	output logic WVALID_S1,
	input WREADY_S1
);

always_comb begin
	WDATA_S0 = WDATA_M1;
	WSTRB_S0 = WSTRB_M1;
	WLAST_S0 = WLAST_M1;
	WDATA_S1 = WDATA_M1;
	WSTRB_S1 = WSTRB_M1;
	WLAST_S1 = WLAST_M1;

	WVALID_S0 = WVALID_M1;
	WVALID_S1 = WVALID_M1;
	WREADY_M1 = WREADY_S1 | WREADY_S0;
end


endmodule