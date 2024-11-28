`include "../../include/AXI_define.svh"

module address_channel(
    input clk,
    input rst,

    output logic getaddr_default,

    input busy,
    input finish_S0,
    input finish_S1,
    input finish_S2,
    input finish_S3,
    input finish_S4,
    input finish_S5,

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

    //MASTER ADDRESS2
	input [`AXI_ID_BITS-1:0] ID_M2,
	input [`AXI_ADDR_BITS-1:0] ADDR_M2,
	input [`AXI_LEN_BITS-1:0] LEN_M2,
	input [`AXI_SIZE_BITS-1:0] SIZE_M2,
	input [1:0] BURST_M2,
	input VALID_M2,
	output logic READY_M2,

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
	input READY_S1,

    //SLAVE ADDRESS2
	output logic [`AXI_IDS_BITS-1:0] ID_S2,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S2,
	output logic [`AXI_LEN_BITS-1:0] LEN_S2,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S2,
	output logic [1:0] BURST_S2,
	output logic VALID_S2,
	input READY_S2,

    //SLAVE ADDRESS3
	output logic [`AXI_IDS_BITS-1:0] ID_S3,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S3,
	output logic [`AXI_LEN_BITS-1:0] LEN_S3,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S3,
	output logic [1:0] BURST_S3,
	output logic VALID_S3,
	input READY_S3,

    //SLAVE ADDRESS4
	output logic [`AXI_IDS_BITS-1:0] ID_S4,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S4,
	output logic [`AXI_LEN_BITS-1:0] LEN_S4,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S4,
	output logic [1:0] BURST_S4,
	output logic VALID_S4,
	input READY_S4,

    //SLAVE ADDRESS5
	output logic [`AXI_IDS_BITS-1:0] ID_S5,
	output logic [`AXI_ADDR_BITS-1:0] ADDR_S5,
	output logic [`AXI_LEN_BITS-1:0] LEN_S5,
	output logic [`AXI_SIZE_BITS-1:0] SIZE_S5,
	output logic [1:0] BURST_S5,
	output logic VALID_S5,
	input READY_S5
);
logic [`AXI_IDS_BITS-1:0] ID;
logic [`AXI_ADDR_BITS-1:0] ADDR;
logic [`AXI_LEN_BITS-1:0] LEN;
logic [`AXI_SIZE_BITS-1:0] SIZE;
logic [1:0] BURST;
logic VALID, READY, valid_desti_s0, valid_desti_s1, valid_desti_s2, valid_desti_s3, valid_desti_s4, valid_desti_s5, valid_desti_default;
logic busyS0, busyS1, busyS2, busyS3, busyS4, busyS5;
logic valid0, valid1, valid2;

//logic trueREADY_M0, trueREADY_M1;

//assign trueREADY_M0 = valid_desti_s0 & READY_S0;
//assign trueREADY_M1 = valid_desti_s1 & READY_S1;

always_ff@(posedge clk, negedge rst) begin
    if(~rst) begin
        busyS0 <= 1'b0;
        busyS1 <= 1'b0;
        busyS2 <= 1'b0; 
        busyS3 <= 1'b0; 
        busyS4 <= 1'b0;
        busyS5 <= 1'b0;   
    end
    else begin
        busyS0 <= finish_S0 ? 1'b0 : valid_desti_s0 & READY ? 1'b1 : busyS0;
        busyS1 <= finish_S1 ? 1'b0 : valid_desti_s1 & READY ? 1'b1 : busyS1;
        busyS2 <= finish_S2 ? 1'b0 : valid_desti_s2 & READY ? 1'b1 : busyS2;
        busyS3 <= finish_S3 ? 1'b0 : valid_desti_s3 & READY ? 1'b1 : busyS3;
        busyS4 <= finish_S4 ? 1'b0 : valid_desti_s4 & READY ? 1'b1 : busyS4;
        busyS5 <= finish_S5 ? 1'b0 : valid_desti_s5 & READY ? 1'b1 : busyS5;
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

    ID_S2 = ID;
    ADDR_S2 = ADDR;
    LEN_S2 = LEN;
    SIZE_S2 = SIZE;
    BURST_S2 = BURST;
    VALID_S2 = valid_desti_s2 & ~busyS2;

    ID_S3 = ID;
    ADDR_S3 = ADDR;
    LEN_S3 = LEN;
    SIZE_S3 = SIZE;
    BURST_S3 = BURST;
    VALID_S3 = valid_desti_s3 & ~busyS3;

    ID_S4 = ID;
    ADDR_S4 = ADDR;
    LEN_S4 = LEN;
    SIZE_S4 = SIZE;
    BURST_S4 = BURST;
    VALID_S4 = valid_desti_s4 & ~busyS4;

    ID_S5 = ID;
    ADDR_S5 = ADDR;
    LEN_S5 = LEN;
    SIZE_S5 = SIZE;
    BURST_S5 = BURST;
    VALID_S5 = valid_desti_s5 & ~busyS5;

    valid0 = VALID_M0 & ~busy;
    valid1 = VALID_M1 & ~busy;
    valid2 = VALID_M2 & ~busy;

    getaddr_default = valid_desti_default;
end

Arbiter Address_Arbiter(
	.clk(clk),
    .rst(rst),

    .READY(READY),
 
    //source0 input
    .ID_source0(ID_M0),
    .ADDR_source0(ADDR_M0),
    .LEN_source0(LEN_M0),
    .SIZE_source0(SIZE_M0),
    .BURST_source0(BURST_M0),
    .VALID_source0(valid0),

    //source1 input
    .ID_source1(ID_M1),
    .ADDR_source1(ADDR_M1),
    .LEN_source1(LEN_M1),
    .SIZE_source1(SIZE_M1),
    .BURST_source1(BURST_M1),
    .VALID_source1(valid1),

    //source2 input
    .ID_source2(ID_M2),
    .ADDR_source2(ADDR_M2),
    .LEN_source2(LEN_M2),
    .SIZE_source2(SIZE_M2),
    .BURST_source2(BURST_M2),
    .VALID_source2(valid2),

    //.READY_desti0(READY_S0),
    //.READY_desti1(READY_S1),

    //output to destination
    .ID(ID),
    .ADDR(ADDR),
    .LEN(LEN),
    .SIZE(SIZE),
    .BURST(BURST),
    .VALID(VALID),

    .READY_M0(READY_M0),
    .READY_M1(READY_M1),
    .READY_M2(READY_M2)
);

Decoder Address_Decoder(
	.ADDR(ADDR),
    .VALID(VALID),
    .READY_S0(READY_S0),
    .READY_S1(READY_S1),
    .READY_S2(READY_S2),
    .READY_S3(READY_S3),
    .READY_S4(READY_S4),
    .READY_S5(READY_S5),

    .VALID_desti_0(valid_desti_s0),
    .VALID_desti_1(valid_desti_s1),
    .VALID_desti_2(valid_desti_s2),
    .VALID_desti_3(valid_desti_s3),
    .VALID_desti_4(valid_desti_s4),
    .VALID_desti_5(valid_desti_s5),
    .VALID_desti_default(valid_desti_default),
    .READY(READY)
);


endmodule