`include "../../include/AXI_define.svh"
module DR(
	input clk,
	input rst,

	input getaddr_default,
	input master_signal,

    //READ DATA0
	output logic [`AXI_ID_BITS-1:0] RID_M0,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M0,
	output logic [1:0] RRESP_M0,
	output logic RLAST_M0,
	output logic RVALID_M0,
	input RREADY_M0,

    //READ DATA1
	output logic [`AXI_ID_BITS-1:0] RID_M1,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M1,
	output logic [1:0] RRESP_M1,
	output logic RLAST_M1,
	output logic RVALID_M1,
	input RREADY_M1,

    //READ DATA0
	input [`AXI_IDS_BITS-1:0] RID_S0,
	input [`AXI_DATA_BITS-1:0] RDATA_S0,
	input [1:0] RRESP_S0,
	input RLAST_S0,
	input RVALID_S0,
	output logic RREADY_S0,

    //READ DATA1
	input [`AXI_IDS_BITS-1:0] RID_S1,
	input [`AXI_DATA_BITS-1:0] RDATA_S1,
	input [1:0] RRESP_S1,
	input RLAST_S1,
	input RVALID_S1,
	output logic RREADY_S1
);
logic waited_Sdefault, error_master, RVALID_S2;
logic [1:0] state, nextstate, slave;
logic READY;
localparam [1:0]	idle = 2'b00,
					S0_transfer = 2'b01,
					S1_transfer = 2'b10,
					default_transfer = 2'b11;

assign RVALID_S2 = getaddr_default | waited_Sdefault;
always_comb begin
	
	RVALID_M0 = 1'b0;
	RREADY_S0 = 1'b0;

	RVALID_M1 = 1'b0;
	RREADY_S1 = 1'b0;
	case(slave) 
		2'b01 : begin
			case(RID_S0[`AXI_ID_BITS])
				1'b0 : begin
					RVALID_M0 = RVALID_S0;
					RREADY_S0 = RREADY_M0 & RVALID_S0;
					RDATA_M0 = RDATA_S0;
					RRESP_M0 = RRESP_S0;
					RLAST_M0 = RLAST_S0;
					RID_M0 = RID_S0[`AXI_ID_BITS-1:0];
				end
				1'b1 : begin
					RVALID_M1 = RVALID_S0;
					RREADY_S0 = RREADY_M1 & RVALID_S0;
					RID_M1 = RID_S0[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S0;
					RRESP_M1 = RRESP_S0;
					RLAST_M1 = RLAST_S0;
				end
			endcase
		end
		2'b10 : begin
			case(RID_S1[`AXI_ID_BITS])
				1'b0 : begin
					RVALID_M0 = RVALID_S1;
					RREADY_S1 = RREADY_M0 & RVALID_S1;
					RDATA_M0 = RDATA_S1;
					RRESP_M0 = RRESP_S1;
					RLAST_M0 = RLAST_S1;
					RID_M0 = RID_S0[`AXI_ID_BITS-1:0];
				end
				1'b1 : begin
					RVALID_M1 = RVALID_S1;
					RREADY_S1 = RREADY_M1 & RVALID_S1;
					RID_M1 = RID_S1[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S1;
					RRESP_M1 = RRESP_S1;
					RLAST_M1 = RLAST_S1;
				end
			endcase
		end
		2'b11 : begin
			if(error_master) begin
				RRESP_M1 = `AXI_RESP_DECERR;
			end
			else begin
				RRESP_M0 = `AXI_RESP_DECERR;
			end
		end
	endcase
end
always_comb begin
	slave = 2'b11;
	case(state)
		idle : begin
			if(RVALID_S1) begin
				nextstate = S1_transfer;//~RREADY_M1 ? S1_transfer : RVALID_S0 ? S0_transfer : RVALID_S2 ? default_transfer : idle;
				slave = 2'b01;
			end
			else if(RVALID_S0) begin
				nextstate = S0_transfer;//~RREADY_M0 ? S0_transfer : RVALID_S2 ? default_transfer : idle;
				slave = 2'b00;
			end
			else if(RVALID_S2) begin
				nextstate = idle;
				slave = 2'b10;
			end
			else
				nextstate = idle;
		end
		S0_transfer : begin
			slave = 2'b01;
			if(RLAST_S0 & RVALID_S0 & RREADY_S0)
				nextstate = RVALID_S1 ? S1_transfer : RVALID_S2 ? default_transfer : idle;
			else	
				nextstate = S0_transfer;
		end
		S1_transfer : begin
			slave = 2'b10;
			if(RLAST_S1 & RVALID_S1 & RREADY_S1)
				nextstate = RVALID_S0 ? S0_transfer : RVALID_S2 ? default_transfer : idle;
			else
				nextstate = S1_transfer;
		end
		default : begin
			slave = 2'b11;
			nextstate = RVALID_S1 ? S1_transfer : RVALID_S0 ? S0_transfer : idle;
		end
	endcase
end


always_ff@(posedge clk, negedge rst) begin
	if(~rst) begin
		state <= idle;
		waited_Sdefault <= 1'b0;
	end
	else begin
		state <= nextstate;
		if(getaddr_default) begin
			waited_Sdefault <= 1'b1;
			error_master <= master_signal;
		end

		if(state == default_transfer) 
			waited_Sdefault <= 1'b0;
	end
end


endmodule