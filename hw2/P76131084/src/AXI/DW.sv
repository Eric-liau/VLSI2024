`include "../../include/AXI_define.svh"
module DW(
	input clk,
	input rst,
	//input getaddr_default,
	input [1:0] write_slave,
	input write_slave0,
	input write_slave1,

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
logic [1:0] state, nextstate;
localparam [1:0]	idle = 2'b00,
					S0_transfer = 2'b01,
					S1_transfer = 2'b10,
					default_transfer = 2'b11;

logic write_slave0_reg, write_slave1_reg;
always_comb begin
	WDATA_S0 = 1'b0;
	WSTRB_S0 = 1'b0;
	WLAST_S0 = 1'b0;
	WVALID_S0 = 1'b0;
	WREADY_M1 = 1'b0;

	WDATA_S1 = 1'b0;
	WSTRB_S1 = 1'b0;
	WLAST_S1 = 1'b0;
	WVALID_S1 = 1'b0;
	case(state)
		S0_transfer : begin
			WDATA_S0 = WDATA_M1;
			WSTRB_S0 = WSTRB_M1;
			WLAST_S0 = WLAST_M1;
			WVALID_S0 = WVALID_M1;
			WREADY_M1 = WREADY_S0;
		end
		S1_transfer : begin
			WDATA_S1 = WDATA_M1;
			WSTRB_S1 = WSTRB_M1;
			WLAST_S1 = WLAST_M1;
			WVALID_S1 = WVALID_M1;
			WREADY_M1 = WREADY_S1;
		end
	endcase
end
always_comb begin
	nextstate = idle;
	case(state)
		idle : begin
			nextstate = write_slave0 ? S0_transfer : write_slave1 ? S1_transfer : idle;
		end
		S0_transfer : begin
			if(WVALID_M1 & WLAST_M1 & WREADY_S0)
				nextstate = write_slave1 | write_slave1_reg ? S1_transfer : idle;
			else
				nextstate = S0_transfer;
		end
		S1_transfer : begin
			if(WVALID_M1 & WLAST_M1 & WREADY_S1)
				nextstate = write_slave0 | write_slave0_reg ? S0_transfer : idle;
			else
				nextstate = S1_transfer;
		end
	endcase
end
always_ff@(posedge clk, negedge rst) begin
	if(~rst)begin
		state <= idle;
		write_slave0_reg <= 1'b0;
		write_slave1_reg <= 1'b0;
	end
	else begin
		write_slave0_reg <= (nextstate == S0_transfer | state == S0_transfer) ? 1'b0 : write_slave0 ? 1'b1 : write_slave0_reg;
		write_slave1_reg <= (nextstate == S1_transfer | state == S1_transfer) ? 1'b0 : write_slave1 ? 1'b1 : write_slave1_reg;
		state <= nextstate;
	end
end

endmodule