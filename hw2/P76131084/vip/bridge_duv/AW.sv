`include "../../include/AXI_define.svh"

module AW(
    input clk,
    input rst,
    //WRITE ADDRESS
	input [`AXI_ID_BITS-1:0] ID_M1,
	input [`AXI_ADDR_BITS-1:0] ADDR_M1,
	input [`AXI_LEN_BITS-1:0] LEN_M1,
	input [`AXI_SIZE_BITS-1:0] SIZE_M1,
	input [1:0] BURST_M1,
	input VALID_M1,
	output logic READY_M1,

    //WRITE ADDRESS0
	output logic [`AXI_IDS_BITS-1:0] ID_S0,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S0,
	output logic [`AXI_LEN_BITS-1:0] LEN_S0,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S0,
	output logic [1:0] BURST_S0,
	output logic VALID_S0,
	input READY_S0,

    //WRITE ADDRESS1
	output logic [`AXI_IDS_BITS-1:0] ID_S1,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S1,
	output logic [`AXI_LEN_BITS-1:0] LEN_S1,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S1,
	output logic [1:0] BURST_S1,
	output logic VALID_S1,
	input READY_S1
);
logic [`AXI_ID_BITS-1:0] ID;
logic [`AXI_ADDR_BITS-1:0] ADDR;
logic [`AXI_LEN_BITS-1:0] LEN;
logic [`AXI_SIZE_BITS-1:0] SIZE;
logic [`AXI_BURST_INC-1:0] BURST;
logic LAST, VALID0, VALID1, VALID_DEFAULT, valid_s0, valid_s1, valid_default, busy_s0, busy_s1;

always_comb begin 
    ID_S0 = valid_s0 ? ID : `AXI_IDS_BITS'b0;
    ADDR_S0 = valid_s0 ? ADDR : `AXI_SIZE_BITS'b0;
    LEN_S0 = valid_s0 ? LEN : `AXI_LEN_BITS'b0;
    SIZE_S0 = valid_s0 ? SIZE : `AXI_SIZE_BITS'b0;
    BURST_S0 = valid_s0 ? BURST : `AXI_BURST_INC'b0;
    VALID_S0 = valid_s0;

    ID_S1 = valid_s1 ? ID : `AXI_IDS_BITS'b0;
    ADDR_S1 = valid_s1 ? ADDR : `AXI_SIZE_BITS'b0;
    LEN_S1 = valid_s1 ? LEN : `AXI_LEN_BITS'b0;
    SIZE_S1 = valid_s1 ? SIZE : `AXI_SIZE_BITS'b0;
    BURST_S1 = valid_s1 ? BURST : `AXI_BURST_INC'b0;
    VALID_S1 = valid_s1;

    READY_M1 = valid_s1;
end

Arbiter Write_Address_Arbiter(
	.clk(clk),
    .rst(rst),
 
    //source0 input
    .ID_source0(`AXI_ID_BITS'b0),
    .ADDR_source0(`AXI_ADDR_BITS'b0),
    .LEN_source0(`AXI_LEN_BITS'b0),
    .SIZE_source0(`AXI_SIZE_BITS'b0),
    .BURST_source0(`AXI_BURST_INC'b0),
    .VALID_source0(1'b0),

    //source1 input
    .ID_source1(ID_M1),
    .ADDR_source1(ADDR_M1),
    .LEN_source1(LEN_M1),
    .SIZE_source1(SIZE_M1),
    .BURST_source1(BURST_M1),
    .VALID_source1(VALID_M1),

    .READY_desti0(READY_S0),
    .READY_desti1(READY_S1),

    //output to destination
    .ID(ID),
    .ADDR(ADDR),
    .LEN(LEN),
    .SIZE(SIZE),
    .BURST(BURST),
    .LAST(LAST),
    .VALID0(VALID0),
    .VALID1(VALID1)
);

Decoder Write_Address_Decoder(
	.ADDR(ADDR),
    .VALID0(VALID0),
    .VALID1(VALID1),

    .VALID_desti_0(valid_s0),
    .VALID_desti_1(valid_s1),
    .VALID_desti_default(valid_default)
);

endmodule