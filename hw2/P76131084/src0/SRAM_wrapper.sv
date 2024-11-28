`include "../include/AXI_define.svh"
module SRAM_wrapper (
  	input CLK,
  	input RST,
  	

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
logic [2:0] state, nextstate;
logic [13:0] A, addr; 
logic [31:0] DI, DO, data;
logic CEB, WEB, wait_DO;
logic [31:0] BWEB;

//AXI
assign RDATA = DO;//wait_DO ? data : DO;
assign RLAST = 1'b1;
assign RID = `AXI_IDS_BITS'b0;
assign RRESP = `AXI_RESP_OKAY;
assign BID = `AXI_IDS_BITS'b0;
assign BRESP = `AXI_RESP_OKAY;


localparam [2:0]  	idle = 3'b000,
    				read_addr = 3'b001,
    				read_data = 3'b010,
    				write_addr = 3'b011,
    				write_data = 3'b100,
    				write_response = 3'b101;

always_comb begin
	case(state)
		idle : nextstate = ARVALID ? read_addr : (AWVALID ? write_addr : idle);
		read_addr : nextstate = ARREADY & ARVALID ? read_data : read_addr;
		read_data : nextstate = RREADY & RLAST & RVALID ? (ARVALID ? read_addr : (AWVALID ? write_addr : idle)) : read_data;
		write_addr : nextstate = AWREADY & AWVALID ? write_data : write_addr;
		write_data : nextstate = WREADY & WVALID & WLAST ? write_response : write_data;
		write_response : nextstate = BVALID & BREADY ? (ARVALID ? read_addr : (AWVALID ? write_addr : idle)) : write_response;
		default : nextstate = idle;
	endcase
end

always_comb begin
	ARREADY = 1'b0;
	AWREADY = 1'b0;
	RVALID = 1'b0;
	WREADY = 1'b0;
	BVALID = 1'b0;
	//sram
	DI = WDATA;
	BWEB = WEB ? 32'hffffffff : {{8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}}};
	CEB = 1'b1;
	WEB = 1'b1;
	A = addr;
	case(state)
		read_addr : begin
			ARREADY = ARVALID ? 1'b1 : 1'b0;
			CEB = ARVALID & ARREADY ? 1'b0 : 1'b1;
			A = ARVALID & ARREADY ? ARADDR[15:2] : 14'b0;
		end
		read_data : begin
			RVALID = 1'b1;//~wait_DO ? 1'b1 : 1'b0;
		end
		write_addr: begin
			AWREADY = AWVALID ? 1'b1 : 1'b0;
		end
		write_data : begin
			WREADY = WVALID ? 1'b1 : 1'b0;
			CEB = WREADY & WVALID ? 1'b0 : 1'b1;
			WEB = WREADY & WVALID ? 1'b0 : 1'b1;
		end
		write_response : begin
			BVALID = 1'b1;
		end
	endcase
end


TS1N16ADFPCLLLVTA512X45M4SWSHOD i_SRAM (
    .SLP(1'b0),
    .DSLP(1'b0),
    .SD(1'b0),
    .PUDELAY(),
    .CLK(CLK),
	.CEB(CEB),
	.WEB(WEB),
    .A(A),
	.D(DI),
    .BWEB(BWEB),
    .RTSEL(2'b01),
    .WTSEL(2'b01),
    .Q(DO)
);


always_ff @(posedge CLK, posedge RST) begin
	if(RST) begin
		state <= idle;
		data <= 32'b0;
		addr <= 14'b0;
		wait_DO <= 1'b0;
	end
	else begin
		state <= nextstate;
		wait_DO <= state == read_data ? 1'b0 : 1'b1;
		data <= ~wait_DO ? DO : data;
		addr <= (state == write_addr) & AWREADY & AWVALID ? AWADDR[15:2] : addr;
	end

	
end

endmodule
