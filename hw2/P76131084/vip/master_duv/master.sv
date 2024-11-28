`include "../include/AXI_define.svh"

module master(
    input clk,
    input rst,

    input CEB,
    input WEB,  //0 : write, 1 : read
    input [3:0] MemWrite,
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input [`AXI_DATA_BITS-1:0] writedata,
    output logic [`AXI_DATA_BITS-1:0] readdata,
    output logic stall,

     //READ ADDRESS
    output logic [`AXI_ID_BITS-1:0] ARID,
	output logic [`AXI_ADDR_BITS-1:0] ARADDR,
	output logic [`AXI_LEN_BITS-1:0] ARLEN,
	output logic [`AXI_SIZE_BITS-1:0] ARSIZE,
	output logic [1:0] ARBURST,
	output logic ARVALID,
	input ARREADY,

    //WRITE ADDRESS
    output logic [`AXI_ID_BITS-1:0] AWID,
	output logic [`AXI_ADDR_BITS-1:0] AWADDR,
	output logic [`AXI_LEN_BITS-1:0] AWLEN,
	output logic [`AXI_SIZE_BITS-1:0] AWSIZE,
	output logic [1:0] AWBURST,
	output logic AWVALID,
	input AWREADY,

    //READ DATA
	input [`AXI_ID_BITS-1:0] RID,
    input [`AXI_DATA_BITS-1:0] RDATA,
	input [1:0] RRESP,
	input RLAST,
	input RVALID,
	output logic RREADY,

    //WRITE DATA
    output logic [`AXI_DATA_BITS-1:0] WDATA,
	output logic [`AXI_STRB_BITS-1:0] WSTRB,
	output logic WLAST,
	output logic WVALID,
	input WREADY,

    //WRITE RESPONSE
	input [`AXI_ID_BITS-1:0] BID,
	input [1:0] BRESP,
	input BVALID,
	output logic BREADY

);

assign ARID = 4'b0;
assign ARADDR = ADDR;
assign ARLEN = `AXI_LEN_BITS'b0;
assign ARSIZE = `AXI_SIZE_BITS'b10;
assign ARBURST = `AXI_BURST_INC;

assign AWID = 4'b0;
assign AWADDR = ADDR;
assign AWLEN = `AXI_LEN_BITS'b0;
assign AWSIZE = `AXI_SIZE_BITS'b10;
assign AWBURST = `AXI_BURST_INC;

assign WSTRB = MemWrite;
assign WLAST = 1'b1;
assign WDATA = writedata;


localparam  idle = 3'b0,
            read_address = 3'b001,
            read_data = 3'b010,
            write_address = 3'b011,
            write_data = 3'b100,
            write_response = 3'b101;

logic [2:0] state, nextstate;

always_comb begin
    case(state) 
        idle : nextstate = ~CEB ? (WEB ? read_address : write_address) : idle;
        read_address : nextstate = ARREADY & ARVALID ? read_data : read_address;
        read_data : nextstate = RLAST & RVALID & RREADY ? (~CEB ? (WEB ? read_address : write_address) : idle) : read_data;
        write_address : nextstate = AWREADY & AWVALID ? write_data : write_address;
        write_data : nextstate = WLAST & WREADY & WVALID? write_response : write_data;
        write_response : nextstate = BVALID & BREADY ? (~CEB ? (WEB ? read_address : write_address) : idle) : write_response;
        default : nextstate = idle;
    endcase
end

always_comb begin
    ARVALID = 1'b0;
    AWVALID = 1'b0;
    RREADY = 1'b0;
    WVALID = 1'b0;
    BREADY = 1'b0;
    stall = 1'b1;
    case(state)
        idle : begin
            ARVALID = ~CEB & WEB ? 1'b1 : 1'b0;
            AWVALID = ~CEB & ~WEB ? 1'b1 : 1'b0;
        end
        read_address : begin
            ARVALID = 1'b1;
        end
        read_data : begin
            RREADY = RVALID ? 1'b1 : 1'b0;
            stall = RVALID & RLAST & RREADY ? 1'b0 : 1'b1;
        end
        write_address : begin
            AWVALID = 1'b1;
        end
        write_data : begin
            WVALID = 1'b1;
        end 
        write_response : begin
            BREADY = BVALID ? 1'b1 : 1'b0;
            stall = BVALID ? 1'b0 : 1'b1;
        end
        default : stall = 1'b0;
    endcase

end

always_ff @(posedge clk, posedge rst) begin
    if(rst) begin
        state <= idle;
        readdata <= 32'b0;
    end
    else begin
        state <= nextstate;
        readdata <= (state == read_data) & RVALID & RREADY ? RDATA : readdata;
    end
    
end




endmodule