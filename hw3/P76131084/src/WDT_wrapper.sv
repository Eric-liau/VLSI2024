`include "../include/AXI_define.svh"
module WDT_wrapper(
    input clk,
    input rst,
	input clk2,
	input rst2,

	output logic WTO,
    //MASTER INTERFACE FOR SLAVES
    //WRITE ADDRESS0
	input [`AXI_IDS_BITS-1:0] AWID,
	input [`AXI_ADDR_BITS-1:0] AWADDR,
	input [`AXI_LEN_BITS-1:0] AWLEN,
	input [`AXI_SIZE_BITS-1:0] AWSIZE,
	input [1:0] AWBURST,
	input AWVALID,
	output logic AWREADY,

    //WRITE DATA0
	input [`AXI_DATA_BITS-1:0] WDATA,
	input [`AXI_STRB_BITS-1:0] WSTRB,
	input WLAST,
	input WVALID,
	output logic WREADY,

    //WRITE RESPONSE0
	output logic [`AXI_IDS_BITS-1:0] BID,
	output logic [1:0] BRESP,
	output logic BVALID,
	input BREADY,

    //READ ADDRESS0
	input [`AXI_IDS_BITS-1:0] ARID,
	input [`AXI_ADDR_BITS-1:0] ARADDR,
	input [`AXI_LEN_BITS-1:0] ARLEN,
	input [`AXI_SIZE_BITS-1:0] ARSIZE,
	input [1:0] ARBURST,
	input ARVALID,
	output logic ARREADY,
	
	//READ DATA0
	output logic [`AXI_IDS_BITS-1:0] RID,
	output logic [`AXI_DATA_BITS-1:0] RDATA,
	output logic [1:0] RRESP,
	output logic RLAST,
	output logic RVALID,
	input RREADY
);

localparam [1:0]    IDLE = 2'b00,   
                    READ  = 2'b01,   
                    WRITE = 2'b10,
                    RESPONSE = 2'b11;

logic [1:0] state, nextstate;
logic WDEN, WDLIVE, isCNTRST;
logic [31:0] WTOCNT, ADDR;


WDT WFT(
	.clk(clk),
    .rst(rst),
    .clk2(clk2),
    .rst2(rst2),
    .WDEN(WDEN),
    .WDLIVE(WDLIVE),
    .WTOCNT(WTOCNT),
    .WTO(WTO),
	.isCNTRST(isCNTRST)
);

always_comb begin
	AWREADY = 1'b0;
	WREADY = 1'b0;
	BVALID = 1'b0;
    case(state)
        IDLE : begin
            nextstate = AWVALID_S & AWREADY ? WRITE : IDLE;
            AWREADY = AWVALID ? 1'b1 : 1'b0;
        end
        WRITE : begin
            nextstate = WVALID & WREADY & WLAST ? RESPONSE : WRITE;
            WREADY = WVALID ? 1'b1 : 1'b0;
        end
        RESPONSE : begin
            nextstate = BVALID & BREADY ? IDLE : RESPONSE;
            BVALID = 1'b1;
        end
        default : nextstate = IDLE;
    endcase
end

always_ff@(posedge clk, posedge rst) begin
	if(rst) begin
		WDEN <= 1'b0;
		WDLIVE <= 1'b0;
		WTOCNT <= 32'b0;
		ADDR <= 32'b0;
	end
	else begin
		ADDR <= AWVALID & AWVALID ? AWADDR : ADDR;
		WDEN <= WVALID & WREADY & (ADDR[9:0] == 10'h100) ? WDATA[0] : WDEN;
		WDLIVE <= WVALID & WREADY & (ADDR[9:0] == 10'h200) ? WDATA[0] : isCNTRST ? 1'b0 : WDLIVE;  
		WTOCNT <= WVALID & WREADY & (ADDR[9:0] == 10'h300) ? WDATA : WTOCNT; 
	end
end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        state <= IDLE;
    end
    else begin
        state <= nextstate;
    end
end
endmodule