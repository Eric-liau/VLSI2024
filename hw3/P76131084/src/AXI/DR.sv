`include "../../include/AXI_define.svh"
module DR(
	input clk,
	input rst,

	input getaddr_default,
	//input master_signal,
	output logic finish_S0,
	output logic finish_S1,
	output logic finish_S2,
	output logic finish_S5,

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

	//READ DATA2
	output logic [`AXI_ID_BITS-1:0] RID_M2,
	output logic [`AXI_DATA_BITS-1:0] RDATA_M2,
	output logic [1:0] RRESP_M2,
	output logic RLAST_M2,
	output logic RVALID_M2,
	input RREADY_M2,

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
	output logic RREADY_S1,

	//READ DATA2
	input [`AXI_IDS_BITS-1:0] RID_S2,
	input [`AXI_DATA_BITS-1:0] RDATA_S2,
	input [1:0] RRESP_S2,
	input RLAST_S2,
	input RVALID_S2,
	output logic RREADY_S2,

	//READ DATA5
	input [`AXI_IDS_BITS-1:0] RID_S5,
	input [`AXI_DATA_BITS-1:0] RDATA_S5,
	input [1:0] RRESP_S5,
	input RLAST_S5,
	input RVALID_S5,
	output logic RREADY_S5
);
logic waited_Sdefault/*, error_master*/, RVALID_default;
logic [2:0] state, nextstate, slave;
logic READY;
logic success, finish;

localparam [2:0]	idle = 3'b00,
					S0_transfer = 3'b001,
					S1_transfer = 3'b010,
					S2_transfer = 3'b011,
					S3_transfer = 3'b100,
					S4_transfer = 3'b101,
					S5_transfer = 3'b110,
					default_transfer = 3'b111;

assign RVALID_default = getaddr_default | waited_Sdefault;

always_comb begin
	RVALID_M0 = 1'b0;
	RDATA_M0 = `AXI_DATA_BITS'b0;
	RRESP_M0 = 2'b0;
	RLAST_M0 = 1'b0;
	RID_M0 = `AXI_ID_BITS'b0;

	RVALID_M1 = 1'b0;
	RDATA_M1 = `AXI_DATA_BITS'b0;
	RRESP_M1 = 2'b0;
	RLAST_M1 = 1'b0;
	RID_M1 = `AXI_ID_BITS'b0;

	RVALID_M2 = 1'b0;
	RDATA_M2 = `AXI_DATA_BITS'b0;
	RRESP_M2 = 2'b0;
	RLAST_M2 = 1'b0;
	RID_M2 = `AXI_ID_BITS'b0;

	RREADY_S0 = 1'b0;
	RREADY_S1 = 1'b0;
	RREADY_S2 = 1'b0;
	RREADY_S5 = 1'b0;

	success = 1'b0;
	finish_S0 = 1'b0;
	finish_S1 = 1'b0;
	finish_S2 = 1'b0;
	finish_S5 = 1'b0;
	case(slave) 
		3'b000 : begin
			case(RID_S0[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b00 : begin
					RVALID_M0 = RVALID_S0;
					RREADY_S0 = RREADY_M0 & RVALID_S0;
					RDATA_M0 = RDATA_S0;
					RRESP_M0 = RRESP_S0;
					RLAST_M0 = RLAST_S0;
					RID_M0 = RID_S0[`AXI_ID_BITS-1:0];
					success = RVALID_S0 & RLAST_S0 & RREADY_M0;
					finish_S0 = success ? 1'b1 : 1'b0;
				end
				2'b01 : begin
					RVALID_M1 = RVALID_S0;
					RREADY_S0 = RREADY_M1 & RVALID_S0;
					RID_M1 = RID_S0[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S0;
					RRESP_M1 = RRESP_S0;
					RLAST_M1 = RLAST_S0;
					success = RVALID_S0 & RLAST_S0 & RREADY_M1;
					finish_S0 = success ? 1'b1 : 1'b0;
				end
				2'b10 : begin
					RVALID_M2 = RVALID_S0;
					RREADY_S0 = RREADY_M2 & RVALID_S0;
					RID_M2 = RID_S0[`AXI_ID_BITS-1:0];
					RDATA_M2 = RDATA_S0;
					RRESP_M2 = RRESP_S0;
					RLAST_M2 = RLAST_S0;
					success = RVALID_S0 & RLAST_S0 & RREADY_M2;
					finish_S0 = success ? 1'b1 : 1'b0;
				end
			endcase
		end
		3'b001 : begin
			case(RID_S1[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b00 : begin
					RVALID_M0 = RVALID_S1;
					RREADY_S1 = RREADY_M0 & RVALID_S1;
					RDATA_M0 = RDATA_S1;
					RRESP_M0 = RRESP_S1;
					RLAST_M0 = RLAST_S1;
					RID_M0 = RID_S1[`AXI_ID_BITS-1:0];
					success = RVALID_S1 & RLAST_S1 & RREADY_M0;
					finish_S1 = success ? 1'b1 : 1'b0;
				end
				2'b01 : begin
					RVALID_M1 = RVALID_S1;
					RREADY_S1 = RREADY_M1 & RVALID_S1;
					RID_M1 = RID_S1[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S1;
					RRESP_M1 = RRESP_S1;
					RLAST_M1 = RLAST_S1;
					success = RVALID_S1 & RLAST_S1 & RREADY_M1;
					finish_S1 = success ? 1'b1 : 1'b0;
				end
				2'b10 : begin
					RVALID_M2 = RVALID_S1;
					RREADY_S1 = RREADY_M2 & RVALID_S1;
					RID_M2 = RID_S1[`AXI_ID_BITS-1:0];
					RDATA_M2 = RDATA_S1;
					RRESP_M2 = RRESP_S1;
					RLAST_M2 = RLAST_S1;
					success = RVALID_S1 & RLAST_S1 & RREADY_M2;
					finish_S1 = success ? 1'b1 : 1'b0;
				end
			endcase
		end
		3'b010 : begin
			case(RID_S2[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b00 : begin
					RVALID_M0 = RVALID_S2;
					RREADY_S2 = RREADY_M0 & RVALID_S2;
					RDATA_M0 = RDATA_S2;
					RRESP_M0 = RRESP_S2;
					RLAST_M0 = RLAST_S2;
					RID_M0 = RID_S2[`AXI_ID_BITS-1:0];
					success = RVALID_S2 & RLAST_S2 & RREADY_M0;
					finish_S2 = success ? 1'b1 : 1'b0;
				end
				2'b01 : begin
					RVALID_M1 = RVALID_S2;
					RREADY_S2 = RREADY_M1 & RVALID_S2;
					RID_M1 = RID_S2[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S2;
					RRESP_M1 = RRESP_S2;
					RLAST_M1 = RLAST_S2;
					success = RVALID_S2 & RLAST_S2 & RREADY_M1;
					finish_S2 = success ? 1'b1 : 1'b0;
				end
				2'b10 : begin
					RVALID_M2 = RVALID_S2;
					RREADY_S2 = RREADY_M2 & RVALID_S2;
					RID_M2 = RID_S2[`AXI_ID_BITS-1:0];
					RDATA_M2 = RDATA_S2;
					RRESP_M2 = RRESP_S2;
					RLAST_M2 = RLAST_S2;
					success = RVALID_S2 & RLAST_S2 & RREADY_M2;
					finish_S2 = success ? 1'b1 : 1'b0;
				end
			endcase
		end
		3'b101 : begin
			case(RID_S5[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b00 : begin
					RVALID_M0 = RVALID_S5;
					RREADY_S5 = RREADY_M0 & RVALID_S5;
					RDATA_M0 = RDATA_S5;
					RRESP_M0 = RRESP_S5;
					RLAST_M0 = RLAST_S5;
					RID_M0 = RID_S5[`AXI_ID_BITS-1:0];
					success = RVALID_S5 & RLAST_S5 & RREADY_M0;
					finish_S5 = success ? 1'b1 : 1'b0;
				end
				2'b01 : begin
					RVALID_M1 = RVALID_S5;
					RREADY_S5 = RREADY_M1 & RVALID_S5;
					RID_M1 = RID_S5[`AXI_ID_BITS-1:0];
					RDATA_M1 = RDATA_S5;
					RRESP_M1 = RRESP_S5;
					RLAST_M1 = RLAST_S5;
					success = RVALID_S5 & RLAST_S5 & RREADY_M1;
					finish_S5 = success ? 1'b1 : 1'b0;
				end
				2'b10 : begin
					RVALID_M2 = RVALID_S5;
					RREADY_S5 = RREADY_M2 & RVALID_S5;
					RID_M2 = RID_S5[`AXI_ID_BITS-1:0];
					RDATA_M2 = RDATA_S5;
					RRESP_M2 = RRESP_S5;
					RLAST_M2 = RLAST_S5;
					success = RVALID_S5 & RLAST_S5 & RREADY_M2;
					finish_S5 = success ? 1'b1 : 1'b0;
				end
			endcase
		end
		/*3'b111 : begin
			if(error_master) begin
				RRESP_M1 = `AXI_RESP_DECERR;
			end
			else begin
				RRESP_M0 = `AXI_RESP_DECERR;
			end
		end*/
	endcase
end
always_comb begin
	slave = 3'b111;
	case(state)
		idle : begin
			if(RVALID_S1) begin
				nextstate = S1_transfer;//~RREADY_M1 ? S1_transfer : RVALID_S0 ? S0_transfer : RVALID_default ? default_transfer : idle;
				slave = 3'b001;
			end
			else if(RVALID_S0) begin
				nextstate = S0_transfer;//~RREADY_M0 ? S0_transfer : RVALID_default ? default_transfer : idle;
				slave = 3'b000;
			end
			else if(RVALID_S2) begin
				nextstate = S2_transfer;
				slave = 3'b010;
			end
			else if(RVALID_S5) begin
				nextstate = S5_transfer;
				slave = 3'b101;
			end
			else if(RVALID_default) begin
				nextstate = idle;
				slave = 3'b111;
			end
			else
				nextstate = idle;
		end
		S0_transfer : begin
			slave = 3'b000;
			if(RLAST_S0 & RVALID_S0 & RREADY_S0 | finish)
				nextstate = /*RVALID_S1 ? S1_transfer : RVALID_default ? default_transfer : */idle;
			else	
				nextstate = S0_transfer;
		end
		S1_transfer : begin
			slave = 3'b001;
			if(RLAST_S1 & RVALID_S1 & RREADY_S1 | finish)
				nextstate = /*RVALID_S0 ? S0_transfer : RVALID_default ? default_transfer : */idle;
			else
				nextstate = S1_transfer;
		end
		S2_transfer : begin
			slave = 3'b010;
			if(RLAST_S2 & RVALID_S2 & RREADY_S2 | finish)
				nextstate = idle;
			else
				nextstate = S2_transfer;
		end
		S5_transfer : begin
			slave = 3'b101;
			if(RLAST_S5 & RVALID_S5 & RREADY_S5 | finish)
				nextstate = idle;
			else
				nextstate = S5_transfer;
		end
		default : begin
			slave = 3'b111;
			nextstate = /*RVALID_S1 ? S1_transfer : RVALID_S0 ? S0_transfer : */idle;
		end
	endcase
end


always_ff@(posedge clk, negedge rst) begin
	if(~rst) begin
		state <= idle;
		waited_Sdefault <= 1'b0;
		finish <= 1'b0;
		//error_master <= 1'b0;
	end
	else begin
		state <= nextstate;
		finish <= state == idle & nextstate != idle & success;
		if(getaddr_default) begin
			waited_Sdefault <= 1'b1;
			//error_master <= master_signal;
		end

		if(state == default_transfer) 
			waited_Sdefault <= 1'b0;
	end
end


endmodule