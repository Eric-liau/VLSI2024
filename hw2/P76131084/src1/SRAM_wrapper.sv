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
logic [13:0] A, awaddr_reg; 
logic [13:0] araddr_reg;
logic [31:0] DI, DO, data;
logic CEB, WEB, wait_DO;
logic [31:0] BWEB;
logic [`AXI_IDS_BITS-1:0] RID_reg, BID_reg; 
logic [`AXI_LEN_BITS-1:0] ARLEN_reg;

localparam [2:0]  	idle = 3'b000,
    				read_addr = 3'b001,
    				read_data = 3'b010,
    				write_addr = 3'b011,
    				write_data = 3'b100,
    				write_response = 3'b101;
//AXI
assign RDATA = DO;//wait_DO ? data : DO;
assign RLAST = state == read_data ? (ARLEN_reg == `AXI_LEN_BITS'b0 ? 1'b1 : 1'b0) : 1'b0;
assign RID = RID_reg;
assign RRESP = `AXI_RESP_OKAY;
assign BID = BID_reg;
assign BRESP = `AXI_RESP_OKAY;

always_ff@(posedge CLK, negedge RST) begin
	if(~RST) begin
		RID_reg <= `AXI_IDS_BITS'b0;
		BID_reg <= `AXI_IDS_BITS'b0;
		ARLEN_reg <= 2'b0;
	end
	else begin
		if(state == read_addr) begin
			RID_reg <= ARID;
			ARLEN_reg <= ARLEN;
		end
		if(state == write_addr)
			BID_reg <= AWID;
		if(state == read_data & RVALID & RREADY)
			ARLEN_reg <= ARLEN_reg - `AXI_LEN_BITS'b1;
	end

end
always_comb begin
	case(state)
		idle : nextstate = ARVALID ? read_addr : (AWVALID ? write_addr : idle);
		read_addr : nextstate = (ARREADY & ARVALID) ? read_data : read_addr;
		read_data : nextstate = (RREADY & RLAST & RVALID) ? (ARVALID ? read_addr : (AWVALID ? write_addr : idle)) : read_data;
		write_addr : nextstate = (AWREADY & AWVALID) ? write_data : write_addr;
		write_data : nextstate = (WREADY & WVALID & WLAST) ? write_response : write_data;
		write_response : nextstate = (BVALID & BREADY) ? (ARVALID ? read_addr : (AWVALID ? write_addr : idle)) : write_response;
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
	A = araddr_reg;
	case(state)
		read_addr : begin
			ARREADY = ARVALID ? 1'b1 : 1'b0;
			CEB = ARVALID & ARREADY ? 1'b0 : 1'b1;
			A = ARADDR[15:2];
		end
		read_data : begin
			RVALID = 1'b1;//~wait_DO ? 1'b1 : 1'b0;
			//A = araddr_reg;
		end
		write_addr: begin
			AWREADY = AWVALID ? 1'b1 : 1'b0;
			A = awaddr_reg;
		end
		write_data : begin
			WREADY = WVALID ? 1'b1 : 1'b0;
			CEB = WREADY & WVALID ? 1'b0 : 1'b1;
			WEB = WREADY & WVALID ? 1'b0 : 1'b1;
			A = awaddr_reg;
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


always_ff @(posedge CLK, negedge RST) begin
	if(~RST) begin
		state <= idle;
		data <= 32'b0;
		araddr_reg <= 14'b0;
		awaddr_reg <= 14'b0;
		wait_DO <= 1'b0;
	end
	else begin
		state <= nextstate;
		wait_DO <= state == read_data ? 1'b0 : 1'b1;
		data <= ~wait_DO ? DO : data;
		awaddr_reg <= (state == write_addr) /*& AWREADY */& AWVALID ? AWADDR[15:2] : awaddr_reg;
		araddr_reg <= (state == read_addr) /*& ARREADY */& ARVALID ? ARADDR[15:2] : araddr_reg;
	end

	
end

endmodule
