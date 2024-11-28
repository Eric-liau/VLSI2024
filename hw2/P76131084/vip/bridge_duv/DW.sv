`include "../../include/AXI_define.svh"
module DW(
    input clk,
	input rst,

	input getaddr0,
	input getaddr1,
	input getaddr_default,
	input stop,
	output logic last_s0,
	output logic last_s1,
	output logic [1:0] write_slave,

    //WRITE DATA
	input [`AXI_DATA_BITS-1:0] WDATA_M1,
	input [`AXI_STRB_BITS-1:0] WSTRB_M1,
	input WLAST_M1,
	input WVALID_M1,
	output logic WREADY_M1,

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
	input WREADY_S1
);

logic waitedS0, waitedS1, waited_Sdefault;
logic [1:0] stage, nextstage;

localparam [1:0]	free = 2'b00,
					S0_transfer = 2'b01,
					S1_transfer = 2'b10,
					error = 2'b11;

always_comb begin
	WDATA_S0 = `AXI_DATA_BITS'b0;
	WSTRB_S0 = `AXI_STRB_BITS'b0;
	WLAST_S0 = 1'b0;
	WVALID_S0 = 1'b0;

	WDATA_S1 = `AXI_DATA_BITS'b0;
	WSTRB_S1 = `AXI_STRB_BITS'b0;
	WLAST_S1 = 1'b0;
	WVALID_S1 = 1'b0;

    WREADY_M1 = 1'b0;
	write_slave = 2'b0;
	case(stage) 
		S0_transfer : begin
			// probably don't need 
			if(WREADY_S0 & WVALID_M1) begin
				WDATA_S0 = WDATA_M1;
                WLAST_S0 = WLAST_M1;
				WSTRB_S0 = WSTRB_M1;
			end
			WVALID_S0 = WVALID_M1;
			WREADY_M1 = WREADY_S0;
			write_slave = 2'b0;
		end
		S1_transfer : begin
			// probably don't need 
			if(WREADY_S1 & WVALID_M1) begin
				WDATA_S1 = WDATA_M1;
                WLAST_S1 = WLAST_M1;
				WSTRB_S1 = WSTRB_M1;
			end
			WVALID_S1 = WVALID_M1;
			WREADY_M1 = WREADY_S1;
			write_slave = 2'b01;
		end
		error : begin
			write_slave = 2'b10;
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
			if(WLAST_M1 | stop) begin
				nextstage = (waitedS1 | getaddr1) ? S1_transfer : (waited_Sdefault | getaddr_default) ? error : free;
				last_s0 = 1'b1;
			end
			else
				nextstage = S0_transfer;
		end
		S1_transfer : begin
			if(WLAST_M1 | stop) begin
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
		if(getaddr_default) waited_Sdefault <= 1'b1;
		
		if(stage == S0_transfer) waitedS0 <= 1'b0;
		if(stage == S1_transfer) waitedS1 <= 1'b0;
		if(stage == error) waited_Sdefault <= 1'b0;
	end


end


endmodule