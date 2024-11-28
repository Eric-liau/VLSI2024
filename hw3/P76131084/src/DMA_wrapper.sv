`include "../include/AXI_define.svh"
`include "DMA.sv"
module DMA_wrapper(
    input clk,
  	input rst,


  	output logic DMA_interrupt,
  //MASTER INTERFACE FOR SLAVES
  //WRITE ADDRESS0
	input [`AXI_IDS_BITS-1:0] AWID_S,
	input [`AXI_ADDR_BITS-1:0] AWADDR_S,
	input [`AXI_LEN_BITS-1:0] AWLEN_S,
	input [`AXI_SIZE_BITS-1:0] AWSIZE_S,
	input [1:0] AWBURST_S,
	input AWVALID_S,
	output logic AWREADY_S,

  //WRITE DATA0
	input [`AXI_DATA_BITS-1:0] WDATA_S,
	input [`AXI_STRB_BITS-1:0] WSTRB_S,
	input WLAST_S,
	input WVALID_S,
	output logic WREADY_S,

  //WRITE RESPONSE0
	output logic [`AXI_IDS_BITS-1:0] BID_S,
	output logic [1:0] BRESP_S,
	output logic BVALID_S,
	input BREADY_S,

    //READ ADDRESS1
    output logic [`AXI_ID_BITS-1:0] ARID_M,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR_M,
	output logic [`AXI_LEN_BITS-1:0] ARLEN_M,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE_M,
	output logic [1:0] ARBURST_M,
	output logic ARVALID_M,
	input ARREADY_M,
    
    //WRITE ADDRESS1
    output logic [`AXI_ID_BITS-1:0] AWID_M,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR_M,
	output logic [`AXI_LEN_BITS-1:0] AWLEN_M,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE_M,
	output logic [1:0] AWBURST_M,
	output logic AWVALID_M,
	input AWREADY_M,
    //READ DATA1
	input [`AXI_ID_BITS-1:0] RID_M,
	input [`AXI_DATA_BITS-1:0] RDATA_M,
	input [1:0] RRESP_M,
	input RLAST_M,
	input RVALID_M,
	output logic RREADY_M,

    //WRITE DATA
	output logic [`AXI_DATA_BITS-1:0] WDATA_M,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_M,
	output logic WLAST_M,
	output logic WVALID_M,
	input WREADY_M,

    //WRITE RESPONSE
	input [`AXI_ID_BITS-1:0] BID_M,
	input [1:0] BRESP_M,
	input BVALID_M,
	output logic BREADY_M
);
logic DMAEN;
logic [31:0] DMASRC, DMADST, DMALEN, ADDR;
logic [`AXI_IDS_BITS-1:0] BID_reg;

logic AW_finish, AR_finish;

assign BID_S = BID_reg;
assign BRESP_S = `AXI_RESP_OKAY;
assign ARID_M = `AXI_ID_BITS'b0;
assign AWID_M = `AXI_ID_BITS'b0;

assign ARSIZE_M = `AXI_SIZE_BITS'b10;
assign ARBURST_M = `AXI_BURST_INC;
assign AWSIZE_M = `AXI_SIZE_BITS'b10;
assign AWBURST_M = `AXI_BURST_INC;
assign WSTRB_M = 4'b0;

localparam [1:0]    IDLE = 2'b00,   
                    READ  = 2'b01,   
                    WRITE = 2'b10,
                    RESPONSE = 2'b11;


logic [1:0] state_s, nextstate_s;
logic [`AXI_LEN_BITS-1:0] BURST_LEN;

DMA DMA(
    .clk(clk),
    .rst(rst),
    .DMAEN(DMAEN),
    .DMASRC(DMASRC),
    .DMADST(DMADST),
    .DMALEN(DMALEN),
    .DMA_interrupt(DMA_interrupt),

    .ARVALID(ARVALID_M),
    .ARREADY(ARREADY_M),
    .ARADDR(ARADDR_M),
    .ARLEN(ARLEN_M),
    .RVALID(RVALID_M),
    .RREADY(RREADY_M),
    .RLAST(RLAST_M),
    .RDATA(RDATA_M),

    .AWVALID(AWVALID_M),
    .AWADDR(AWADDR_M),
    .AWREADY(AWREADY_M),
    .AWLEN(AWLEN_M),
    .WVALID(WVALID_M),
    .WLAST(WLAST_M),
    .WREADY(WREADY_M),
    .WDATA(WDATA_M),

    .BREADY(BREADY_M),
    .BVALID(BVALID_M)
);

always_comb begin
    case(state_s)
        IDLE : nextstate_s = AWVALID_S & AWREADY_S ? WRITE : IDLE;
        WRITE : nextstate_s = WVALID_S & WREADY_S & WLAST_S ? RESPONSE : WRITE;
        RESPONSE :  nextstate_s = BVALID_S & BREADY_S ? IDLE : RESPONSE;
        default : nextstate_s = IDLE;
    endcase

end

always_comb begin
	AWREADY_S = 1'b0;
	WREADY_S = 1'b0;
	BVALID_S = 1'b0;
    case(state_s)
        IDLE : begin
            AWREADY_S = AWVALID_S ? 1'b1 : 1'b0;
        end
        WRITE : begin
            WREADY_S = WVALID_S ? 1'b1 : 1'b0;
        end
        RESPONSE : begin
            BVALID_S = 1'b1;
        end
    endcase
end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        BID_reg <= `AXI_IDS_BITS'b0;

    end
    else begin
        BID_reg <= AWREADY_S & AWVALID_S ? AWID_S : BID_reg;

    end
end
// decode
always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        DMAEN <= 1'b0;
        DMASRC <= 32'b0;
        DMADST <= 32'b0;
        DMALEN <= 32'b0;
        ADDR <= 32'b0;
    end
    else begin
        ADDR <= AWVALID_S & AWREADY_S ? AWADDR_S : ADDR;
        if(WVALID_S & WREADY_S) begin
            case(ADDR[9:0])
                10'h100 : DMAEN <= WDATA_S[0];
                10'h200 : DMASRC <= WDATA_S;
                10'h300 : DMADST <= WDATA_S;
                10'h400 : DMALEN <= WDATA_S;
            endcase
        end
        else begin
            DMADST <= AWVALID_M & AWREADY_M ? DMADST + 32'd64 : DMADST;
            DMASRC <= ARVALID_M & ARREADY_M ? DMASRC + 32'd64 : DMASRC;
            DMALEN <= AW_finish & AR_finish ? DMALEN - {28'b0, AWLEN_M} - 32'b1 : DMALEN;
            //DMAEN <= DMA_interrupt ? 1'b0 : DMAEN;
        end
    end
end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        AW_finish <= 1'b0;
        AR_finish <= 1'b0;
    end
    else begin
        AW_finish <= AWVALID_M & AWREADY_M ? 1'b1 : AW_finish & AR_finish ? 1'b0 : AW_finish;
        AR_finish <= ARVALID_M & ARREADY_M ? 1'b1 : AW_finish & AR_finish ? 1'b0 : AR_finish;
    end
end
always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        state_s <= IDLE;
    end
    else begin
        state_s <= nextstate_s;
    end
end
endmodule