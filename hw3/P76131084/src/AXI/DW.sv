`include "../../include/AXI_define.svh"
module DW(
	input clk,
	input rst,
	
	output logic busy,
	input AWVALID_S0,
	input AWVALID_S1,
	input AWVALID_S2,
	input AWVALID_S3,
	input AWVALID_S4,
	input AWVALID_S5,

    //WRITE DATA1
	input [`AXI_DATA_BITS-1:0] WDATA_M1,
	input [`AXI_STRB_BITS-1:0] WSTRB_M1,
	input WLAST_M1,
	input WVALID_M1,
	output logic WREADY_M1,

	//WRITE DATA2
	input [`AXI_DATA_BITS-1:0] WDATA_M2,
	input [`AXI_STRB_BITS-1:0] WSTRB_M2,
	input WLAST_M2,
	input WVALID_M2,
	output logic WREADY_M2,

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
	input WREADY_S1,

	//WRITE DATA2
	output logic [`AXI_DATA_BITS-1:0] WDATA_S2,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S2,
	output logic WLAST_S2,
	output logic WVALID_S2,
	input WREADY_S2,

	//WRITE DATA3
	output logic [`AXI_DATA_BITS-1:0] WDATA_S3,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S3,
	output logic WLAST_S3,
	output logic WVALID_S3,
	input WREADY_S3,

	//WRITE DATA4
	output logic [`AXI_DATA_BITS-1:0] WDATA_S4,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S4,
	output logic WLAST_S4,
	output logic WVALID_S4,
	input WREADY_S4,

	//WRITE DATA5
	output logic [`AXI_DATA_BITS-1:0] WDATA_S5,
	output logic [`AXI_STRB_BITS-1:0] WSTRB_S5,
	output logic WLAST_S5,
	output logic WVALID_S5,
	input WREADY_S5
);
logic [2:0] state, nextstate;

localparam [2:0]	idle = 3'b00,
					S0_transfer = 3'b001,
					S1_transfer = 3'b010,
					S2_transfer = 3'b011,
					S3_transfer = 3'b100,
					S4_transfer = 3'b101,
					S5_transfer = 3'b110,
					default_transfer = 3'b111;

logic AWVALID_S0_reg, AWVALID_S1_reg, AWVALID_S2_reg, AWVALID_S3_reg, AWVALID_S4_reg, AWVALID_S5_reg;
always_comb begin
	WREADY_M1 = 1'b0;
	WREADY_M2 = 1'b0;

	WDATA_S0 = 32'b0;
	WSTRB_S0 = 1'b0;
	WLAST_S0 = 1'b0;
	WVALID_S0 = 1'b0;

	WDATA_S1 = 32'b0;
	WSTRB_S1 = 1'b0;
	WLAST_S1 = 1'b0;
	WVALID_S1 = 1'b0;

	WDATA_S2 = 32'b0;
	WSTRB_S2 = 1'b0;
	WLAST_S2 = 1'b0;
	WVALID_S2 = 1'b0;

	WDATA_S3 = 32'b0;
	WSTRB_S3 = 1'b0;
	WLAST_S3 = 1'b0;
	WVALID_S3 = 1'b0;

	WDATA_S4 = 32'b0;
	WSTRB_S4 = 1'b0;
	WLAST_S4 = 1'b0;
	WVALID_S4 = 1'b0;

	WDATA_S5 = 32'b0;
	WSTRB_S5 = 1'b0;
	WLAST_S5 = 1'b0;
	WVALID_S5 = 1'b0;
	case(state)
		S0_transfer : begin
			if(WVALID_M1) begin
				WDATA_S0 = WDATA_M1;
				WSTRB_S0 = WSTRB_M1;
				WLAST_S0 = WLAST_M1;
				WVALID_S0 = WVALID_M1;
				WREADY_M1 = WREADY_S0;
			end
			else if(WVALID_M2) begin
				WDATA_S0 = WDATA_M2;
				WSTRB_S0 = WSTRB_M2;
				WLAST_S0 = WLAST_M2;
				WVALID_S0 = WVALID_M2;
				WREADY_M2 = WREADY_S0;
			end
		end
		S1_transfer : begin
			if(WVALID_M1) begin
				WDATA_S1 = WDATA_M1;
				WSTRB_S1 = WSTRB_M1;
				WLAST_S1 = WLAST_M1;
				WVALID_S1 = WVALID_M1;
				WREADY_M1 = WREADY_S1;
			end
			else if(WVALID_M2) begin
				WDATA_S1 = WDATA_M2;
				WSTRB_S1 = WSTRB_M2;
				WLAST_S1 = WLAST_M2;
				WVALID_S1 = WVALID_M2;
				WREADY_M2 = WREADY_S1;
			end
		end
		S2_transfer : begin
			if(WVALID_M1) begin
				WDATA_S2 = WDATA_M1;
				WSTRB_S2 = WSTRB_M1;
				WLAST_S2 = WLAST_M1;
				WVALID_S2 = WVALID_M1;
				WREADY_M1 = WREADY_S2;
			end
			else if(WVALID_M2) begin
				WDATA_S2 = WDATA_M2;
				WSTRB_S2 = WSTRB_M2;
				WLAST_S2 = WLAST_M2;
				WVALID_S2 = WVALID_M2;
				WREADY_M2 = WREADY_S2;
			end
		end
		S3_transfer : begin
			if(WVALID_M1) begin
				WDATA_S3 = WDATA_M1;
				WSTRB_S3 = WSTRB_M1;
				WLAST_S3 = WLAST_M1;
				WVALID_S3 = WVALID_M1;
				WREADY_M1 = WREADY_S3;
			end
			else if(WVALID_M2) begin
				WDATA_S3 = WDATA_M2;
				WSTRB_S3 = WSTRB_M2;
				WLAST_S3 = WLAST_M2;
				WVALID_S3 = WVALID_M2;
				WREADY_M2 = WREADY_S3;
			end
		end
		S4_transfer : begin
			if(WVALID_M1) begin
				WDATA_S4 = WDATA_M1;
				WSTRB_S4 = WSTRB_M1;
				WLAST_S4 = WLAST_M1;
				WVALID_S4 = WVALID_M1;
				WREADY_M1 = WREADY_S4;
			end
			else if(WVALID_M2) begin
				WDATA_S4 = WDATA_M2;
				WSTRB_S4 = WSTRB_M2;
				WLAST_S4 = WLAST_M2;
				WVALID_S4 = WVALID_M2;
				WREADY_M2 = WREADY_S4;
			end
		end
		S5_transfer : begin
			if(WVALID_M1) begin
				WDATA_S5 = WDATA_M1;
				WSTRB_S5 = WSTRB_M1;
				WLAST_S5 = WLAST_M1;
				WVALID_S5 = WVALID_M1;
				WREADY_M1 = WREADY_S5;
			end
			else if(WVALID_M2) begin
				WDATA_S5 = WDATA_M2;
				WSTRB_S5 = WSTRB_M2;
				WLAST_S5 = WLAST_M2;
				WVALID_S5 = WVALID_M2;
				WREADY_M2 = WREADY_S5;
			end
		end
	endcase
end
always_comb begin
	nextstate = idle;
	busy = 1'b1;
	case(state)
		idle : begin
			busy = 1'b0;
			if(AWVALID_S0) begin
				nextstate = S0_transfer;
			end
			else if(AWVALID_S1) begin
				nextstate = S1_transfer;
			end
			else if(AWVALID_S2) begin
				nextstate = S2_transfer;
			end
			else if(AWVALID_S3) begin
				nextstate = S3_transfer;
			end
			else if(AWVALID_S4) begin
				nextstate = S4_transfer;
			end
			else if(AWVALID_S5) begin
				nextstate = S5_transfer;
			end
		end
		S0_transfer : begin
			if(WVALID_S0 & WLAST_S0 & WREADY_S0)
				nextstate = idle;
			else
				nextstate = S0_transfer;
		end
		S1_transfer : begin
			if(WVALID_S1 & WLAST_S1 & WREADY_S1)
				nextstate = idle;
			else
				nextstate = S1_transfer;
		end
		S2_transfer : begin
			if(WVALID_S2 & WLAST_S2 & WREADY_S2)
				nextstate = idle;
			else
				nextstate = S2_transfer;
		end
		S3_transfer : begin
			if(WVALID_S3 & WLAST_S3 & WREADY_S3)
				nextstate = idle;
			else
				nextstate = S3_transfer;
		end
		S4_transfer : begin
			if(WVALID_S4 & WLAST_S4 & WREADY_S4)
				nextstate = idle;
			else
				nextstate = S4_transfer;
		end
		S5_transfer : begin
			if(WVALID_S5 & WLAST_S5 & WREADY_S5)
				nextstate = idle;
			else
				nextstate = S5_transfer;
		end
		default : begin
			nextstate = idle;
		end
	endcase
end
always_ff@(posedge clk, negedge rst) begin
	if(~rst)begin
		state <= idle;
		AWVALID_S0_reg <= 1'b0;
		AWVALID_S1_reg <= 1'b0;
		AWVALID_S2_reg <= 1'b0;
		AWVALID_S3_reg <= 1'b0;
		AWVALID_S4_reg <= 1'b0;
		AWVALID_S5_reg <= 1'b0;
	end
	else begin
		AWVALID_S0_reg <= (nextstate == S0_transfer | state == S0_transfer) ? 1'b0 : AWVALID_S0 ? 1'b1 : AWVALID_S0_reg;
		AWVALID_S1_reg <= (nextstate == S1_transfer | state == S1_transfer) ? 1'b0 : AWVALID_S1 ? 1'b1 : AWVALID_S1_reg;
		AWVALID_S2_reg <= (nextstate == S2_transfer | state == S2_transfer) ? 1'b0 : AWVALID_S2 ? 1'b1 : AWVALID_S2_reg;
		AWVALID_S3_reg <= (nextstate == S3_transfer | state == S3_transfer) ? 1'b0 : AWVALID_S3 ? 1'b1 : AWVALID_S3_reg;
		AWVALID_S4_reg <= (nextstate == S4_transfer | state == S4_transfer) ? 1'b0 : AWVALID_S4 ? 1'b1 : AWVALID_S4_reg;
		AWVALID_S5_reg <= (nextstate == S5_transfer | state == S5_transfer) ? 1'b0 : AWVALID_S5 ? 1'b1 : AWVALID_S5_reg;
		state <= nextstate;
	end
end

endmodule