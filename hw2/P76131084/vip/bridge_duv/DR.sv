`include "../../include/AXI_define.svh"
module DR(
	input clk,
	input rst,

	input getaddr0,
	input getaddr1,
	input getaddr_default,
	input master_signal,
	output logic last_s0,
	output logic last_s1,

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
logic waitedS0, waitedS1, waited_Sdefault, error_master;
logic [1:0] stage, nextstage;
localparam [1:0]	free = 2'b00,
					S0_transfer = 2'b01,
					S1_transfer = 2'b10,
					error = 2'b11;

always_comb begin
	RID_M0 = `AXI_ID_BITS'b0;
	RDATA_M0 = `AXI_DATA_BITS'b0;
	RRESP_M0 = 2'b0;
	RLAST_M0 = 1'b0;
	RVALID_M0 = 1'b0;
	RREADY_S0 = 1'b0;

	RID_M1 = `AXI_ID_BITS'b0;
	RDATA_M1 = `AXI_DATA_BITS'b0;
	RRESP_M1 = 2'b0;
	RLAST_M1 = 1'b0;
	RVALID_M1 = 1'b0;
	RREADY_S1 = 1'b0;
	case(stage) 
		S0_transfer : begin
			if(RREADY_S0 & RVALID_M0) begin
				RID_M0 = RID_S0;
				RDATA_M0 = RDATA_S0;
				RRESP_M0 = RRESP_S0;
				RLAST_M0 = RLAST_S0;
			end
			RVALID_M0 = RVALID_S0;
			RREADY_S0 = RREADY_M0;
		end
		S1_transfer : begin
			if(RREADY_S1 & RVALID_M1) begin
				RID_M1 = RID_S1;
				RDATA_M1 = RDATA_S1;
				RRESP_M1 = RRESP_S1;
				RLAST_M1 = RLAST_S1;
			end
			RVALID_M1 = RVALID_S1;
			RREADY_S1 = RREADY_M1;
		end
		error : begin
			if(error_master) begin
				RRESP_M1 = `AXI_RESP_DECERR;
				RVALID_M1 = 1'b1;
			end
			else begin
				RRESP_M0 = `AXI_RESP_DECERR;
				RVALID_M0 = 1'b1;	
			end
		end
	endcase
end

always_comb begin
	last_s0 = 1'b0;
	last_s1 = 1'b0;
	case(stage)
		free : begin
			if(getaddr0)
				nextstage = S0_transfer;
			else if(getaddr1)
				nextstage = S1_transfer;
			else if(getaddr_default)
				nextstage = error; 
			else
				nextstage = free;
		end
		S0_transfer : begin
			if(RLAST_S0) begin
				nextstage = (waitedS1 | getaddr1) ? S1_transfer : (waited_Sdefault | getaddr_default) ? error : free;
				last_s0 = 1'b1;
			end
			else
				nextstage = S0_transfer;
		end
		S1_transfer : begin
			if(RLAST_S1) begin
				nextstage = (waitedS0 | getaddr0) ? S0_transfer : (waited_Sdefault | getaddr_default) ? error : free;
				last_s1 = 1'b1;
			end
			else
				nextstage = S1_transfer;
		end
		error : begin
			nextstage = (waitedS0 | getaddr0) ? S0_transfer : (waitedS1 | getaddr1) ? S1_transfer : free;
		end
		default : nextstage = free;
	endcase

end


always_ff@(posedge clk, posedge rst) begin
	if(rst) begin
		stage <= free;
		waitedS0 <= 1'b0;
		waitedS1 <= 1'b0;
		waited_Sdefault <= 1'b0;
	end
	else begin
		stage <= nextstage;
		if(getaddr0) waitedS0 <= 1'b1;
		if(getaddr1) waitedS1 <= 1'b1;
		if(getaddr_default) begin
			waited_Sdefault <= 1'b1;
			error_master <= master_signal;
		end
		if(stage == S0_transfer) waitedS0 <= 1'b0;
		if(stage == S1_transfer) waitedS1 <= 1'b0;
		if(stage == error) waited_Sdefault <= 1'b0;
	end


end


endmodule