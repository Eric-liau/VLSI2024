`include "../../include/AXI_define.svh"

module address_channel(
    input clk,
    input rst,

    output logic getaddr_default,
    output master_signal,

    input finish_S0,
    input finish_S1,

    //MASTER ADDRESS0
	input [`AXI_ID_BITS-1:0] ID_M0,
	input [`AXI_ADDR_BITS-1:0] ADDR_M0,
	input [`AXI_LEN_BITS-1:0] LEN_M0,
	input [`AXI_SIZE_BITS-1:0] SIZE_M0,
	input [1:0] BURST_M0,
	input VALID_M0,
	output logic READY_M0,
	
	//MASTER ADDRESS1
	input [`AXI_ID_BITS-1:0] ID_M1,
	input [`AXI_ADDR_BITS-1:0] ADDR_M1,
	input [`AXI_LEN_BITS-1:0] LEN_M1,
	input [`AXI_SIZE_BITS-1:0] SIZE_M1,
	input [1:0] BURST_M1,
	input VALID_M1,
	output logic READY_M1,

    //SLAVE ADDRESS0
	output logic [`AXI_IDS_BITS-1:0] ID_S0,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S0,
	output logic [`AXI_LEN_BITS-1:0] LEN_S0,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S0,
	output logic [1:0] BURST_S0,
	output logic VALID_S0,
	input READY_S0,

    //SLAVE ADDRESS1
	output logic [`AXI_IDS_BITS-1:0] ID_S1,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S1,
	output logic [`AXI_LEN_BITS-1:0] LEN_S1,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S1,
	output logic [1:0] BURST_S1,
	output logic VALID_S1,
	input READY_S1
);
logic [`AXI_IDS_BITS-1:0] ID;
logic [`AXI_ADDR_BITS-1:0] ADDR;
logic [`AXI_LEN_BITS-1:0] LEN;
logic [`AXI_SIZE_BITS-1:0] SIZE;
logic [1:0] BURST;
logic VALID, READY, valid_desti_s0, valid_desti_s1, valid_desti_default;
logic busyS0;
logic busyS1;
//logic trueREADY_M0, trueREADY_M1;

//assign trueREADY_M0 = valid_desti_s0 & READY_S0;
//assign trueREADY_M1 = valid_desti_s1 & READY_S1;

always_ff@(posedge clk, negedge rst) begin
    if(~rst) begin
        busyS0 <= 1'b0;
        busyS1 <= 1'b0; 
    end
    else begin
        busyS0 <= finish_S0 ? 1'b0 : valid_desti_s0 & READY ? 1'b1 : busyS0;
        busyS1 <= finish_S1 ? 1'b0 : valid_desti_s1 & READY ? 1'b1 : busyS1;
    end
end

always_comb begin 
    ID_S0 = ID;
    ADDR_S0 = ADDR;
    LEN_S0 = LEN;
    SIZE_S0 = SIZE;
    BURST_S0 = BURST;
    VALID_S0 = valid_desti_s0 & ~busyS0;

    ID_S1 = ID;
    ADDR_S1 = ADDR;
    LEN_S1 = LEN;
    SIZE_S1 = SIZE;
    BURST_S1 = BURST;
    VALID_S1 = valid_desti_s1 & ~busyS1;

    READY_M0 = VALID_M0 & READY;//trueREADY_M0;
    READY_M1 = VALID_M1 & READY;//trueREADY_M1;

    getaddr_default = valid_desti_default;
end

Arbiter Address_Arbiter(
	.clk(clk),
    .rst(rst),

    .master_signal(master_signal),
    .READY(READY),
 
    //source0 input
    .ID_source0(ID_M0),
    .ADDR_source0(ADDR_M0),
    .LEN_source0(LEN_M0),
    .SIZE_source0(SIZE_M0),
    .BURST_source0(BURST_M0),
    .VALID_source0(VALID_M0),

    //source1 input
    .ID_source1(ID_M1),
    .ADDR_source1(ADDR_M1),
    .LEN_source1(LEN_M1),
    .SIZE_source1(SIZE_M1),
    .BURST_source1(BURST_M1),
    .VALID_source1(VALID_M1),

    //.READY_desti0(READY_S0),
    //.READY_desti1(READY_S1),

    //output to destination
    .ID(ID),
    .ADDR(ADDR),
    .LEN(LEN),
    .SIZE(SIZE),
    .BURST(BURST),
    .VALID(VALID)
);

Decoder Address_Decoder(
	.ADDR(ADDR),
    .VALID(VALID),
    .READY_S0(READY_S0),
    .READY_S1(READY_S1),

    .VALID_desti_0(valid_desti_s0),
    .VALID_desti_1(valid_desti_s1),
    .VALID_desti_default(valid_desti_default),
    .READY(READY)
);


endmodule