`include "../include/AXI_define.svh"
module DMA(
    input clk,
    input rst,

    input DMAEN,
    input [31:0] DMASRC,
    input [31:0] DMADST,
    input [31:0] DMALEN,
    output logic DMA_interrupt,

    output logic ARVALID,
    output logic [31:0] ARADDR,
    output logic [`AXI_LEN_BITS-1:0] ARLEN,
    input ARREADY,

    output logic RREADY,
    input RLAST,
    input RVALID,
    input [31:0] RDATA,

    output logic AWVALID,
    output logic [31:0] AWADDR,
    output logic [`AXI_LEN_BITS-1:0] AWLEN,
    input AWREADY,

    output logic WVALID,
    output logic WLAST,
    output logic [31:0] WDATA,
    input WREADY,

    input BVALID,
	output logic BREADY
);
localparam [2:0]    IDLE = 3'b000,   
                    READ_ADDR  = 3'b001,
                    READ_DATA = 3'b010,   
                    WRITE_ADDR = 3'b011,
                    WRITE_DATA = 3'b100,
                    RESPONSE = 3'b101;


logic reg_full;
logic [2:0] state_r, nextstate_r, state_w, nextstate_w;  
logic [31:0] data;
logic [`AXI_LEN_BITS-1:0] WLEN;


assign ARADDR = DMASRC;
assign ARLEN = DMALEN >= 32'd16 ? `AXI_LEN_BITS'd15 : DMALEN[`AXI_LEN_BITS-1 : 0] - `AXI_LEN_BITS'b1;

assign AWADDR = DMADST;
assign AWLEN = DMALEN >= 32'd16 ? `AXI_LEN_BITS'd15 : DMALEN[`AXI_LEN_BITS-1 : 0] - `AXI_LEN_BITS'b1;
assign WDATA = data;
assign WLAST = WLEN == `AXI_LEN_BITS'b0;

always_comb begin
    ARVALID = 1'b0;
    RREADY = 1'b0;
    case (state_r)
        IDLE : begin
            nextstate_r = DMAEN & DMALEN != 32'b0 ? READ_ADDR : IDLE;
            //ARVALID = DMAEN ? 1'b1 : 1'b0;
        end
        READ_ADDR : begin
            ARVALID = 1'b1;
            nextstate_r = ARVALID & ARREADY ? READ_DATA : READ_ADDR;
        end
        READ_DATA : begin
            RREADY = RVALID & ~reg_full ? 1'b1 : 1'b0;
            nextstate_r = RREADY & RVALID & RLAST ? IDLE : READ_DATA;
        end
        default: 
            nextstate_r = IDLE;  
    endcase
end

always_comb begin
    AWVALID = 1'b0;
    WVALID = 1'b0;
    BREADY = 1'b0;
    case (state_w)
        IDLE : begin
            nextstate_w = DMAEN & DMALEN != 32'b0 ? WRITE_ADDR : IDLE;
            //AWVALID = DMAEN ? 1'b1 : 1'b0;
        end
        WRITE_ADDR : begin
            AWVALID = 1'b1;
            nextstate_w = AWVALID & AWREADY ? WRITE_DATA : WRITE_ADDR;
            WVALID = AWVALID & AWREADY & reg_full ? 1'b1 : 1'b0;
        end
        WRITE_DATA : begin
            WVALID = reg_full ? 1'b1 : 1'b0;
            nextstate_w = WREADY & WVALID & WLAST ? RESPONSE : WRITE_DATA;
        end
        RESPONSE : begin
            BREADY = BVALID ? 1'b1 : 1'b0;
            nextstate_w = BVALID & BREADY ? IDLE : RESPONSE;
        end
        default: 
            nextstate_w = IDLE;  
    endcase

end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        DMA_interrupt <= 1'b0;
    end
    else begin
        DMA_interrupt <= ~DMAEN ? 1'b0 : WLAST & WREADY & WVALID & DMALEN == 32'b0 ? 1'b1 : DMA_interrupt;
    end
end

always_ff@(posedge clk, posedge rst) begin
    if (rst) begin
        reg_full <= 1'b0;
        WLEN <= `AXI_LEN_BITS'b0;
    end
    else begin
        reg_full <= RREADY & RVALID ? 1'b1 : WREADY & WVALID ? 1'b0 : reg_full;
        WLEN <= AWVALID & AWREADY ? AWLEN : WREADY & WVALID ? WLEN - `AXI_LEN_BITS'b1 : WLEN;
    end
end

always_ff@(posedge clk, posedge rst) begin
    if (rst) begin
        data <= 32'b0;
    end
    else begin
        data <= RVALID & RREADY ? RDATA : data;
    end
end

always_ff@(posedge clk, posedge rst) begin
    if (rst) begin
        state_r <= IDLE;
        state_w <= IDLE;  
    end
    else begin
        state_r <= nextstate_r;
        state_w <= nextstate_w;  
    end
end


endmodule