`include "../../include/AXI_define.svh"
module DRAM_wrapper (
    input clk,
    input rst,

    input [`AXI_IDS_BITS-1:0] ARID,
	input [`AXI_ADDR_BITS-1:0] ARADDR,
	input [`AXI_LEN_BITS-1:0] ARLEN,
	input [`AXI_SIZE_BITS-1:0] ARSIZE,
	input [1:0] ARBURST,
	input ARVALID,
	output logic ARREADY,

	output logic [`AXI_IDS_BITS-1:0] RID,
	output logic [`AXI_DATA_BITS-1:0] RDATA,
	output logic [1:0] RRESP,
	output logic RLAST,
	output logic RVALID,
	input RREADY,
		
	input [`AXI_IDS_BITS-1:0] AWID,
	input [`AXI_ADDR_BITS-1:0] AWADDR,
	input [`AXI_LEN_BITS-1:0] AWLEN,
	input [`AXI_SIZE_BITS-1:0] AWSIZE,
	input [1:0] AWBURST,
	input AWVALID,
	output logic AWREADY,

	input [`AXI_DATA_BITS-1:0] WDATA,
	input [`AXI_STRB_BITS-1:0] WSTRB,
	input WLAST,
	input WVALID,
	output logic WREADY,

	output logic [`AXI_IDS_BITS-1:0] BID,
	output logic [1:0] BRESP,
	output logic BVALID,
	input BREADY,

    output logic DRAM_CSn,
    output logic [`AXI_STRB_BITS-1:0] DRAM_WEn,
    output logic DRAM_RASn,
    output logic DRAM_CASn,
    output logic [10:0] DRAM_A,
    output logic [`AXI_DATA_BITS-1:0] DRAM_D,
    input [`AXI_DATA_BITS-1:0] DRAM_Q,
    input DRAM_valid
);

    logic [2:0] c_state, n_state;
    logic [2:0] delay_counter;
    logic [`AXI_ADDR_BITS-1:0] A_now;
    logic [1:0] len_counter, reg_len;

    parameter	idle = 3'd0,
				act = 3'd1,
				r_data = 3'd2,
            	w_data = 3'd3,
                w_resp = 3'd4,
                prec = 3'd5;

    always_ff @( posedge clk, posedge rst ) begin
        if(rst)
            c_state = idle;
        else
            c_state = n_state;
    end 

    always_ff @( posedge clk, posedge rst ) begin
        if(rst)
            delay_counter <= 3'd0;
        else begin
            if(c_state == prec && delay_counter == 3'd5)
                delay_counter <= 3'd0;
            else if(c_state == prec)
                delay_counter <= delay_counter + 3'd1;
            else if(c_state == act && delay_counter == 3'd5)
                delay_counter <= 3'd0;
            else if(c_state == act)
                delay_counter <= delay_counter + 3'd1;
            else if((c_state == r_data || c_state == w_data) && delay_counter == 3'd5)
                delay_counter <= 3'd0;
            else if(c_state == r_data || c_state == w_data)
                delay_counter <= delay_counter + 3'd1;
        end
    end

    always_ff @( posedge clk, posedge rst ) begin
        if(rst)
            len_counter <= 2'd0;
        else begin
            if(c_state == r_data)begin
                if(RVALID & RREADY)
                    len_counter <= len_counter + 2'd1;
            end
            else
                len_counter <= 2'd0;
        end
    end

    always_comb begin
        case(c_state)
            idle: begin
                if(ARVALID/* & ARREADY*/)
                    n_state = r_data;
                else if (AWVALID/* & AWREADY*/)
                    n_state = w_data;
                else
                    n_state = idle;
            end
            /*act: begin
                if(delay_counter == 3'd5)begin
                    if(WVALID)
                        n_state = w_data;
                    else
                        n_state = r_data;
                end
                else
                    n_state = act;
            end*/
            r_data:begin//
                if(RLAST)
                    n_state = prec;
                else
                    n_state = r_data;
            end
            w_data:begin//
                if(WLAST)
                    n_state = w_resp;
                else
                    n_state = w_data;
            end
            w_resp:begin
                if(BVALID & BREADY)
                    n_state = prec;
                else
                    n_state = w_resp;
            end
            prec:begin
                if(delay_counter == 3'h5)
                    n_state = idle;
                else
                    n_state = prec;
            end
        endcase
    end

    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            A_now <= `AXI_ADDR_BITS'b0;
            reg_len <= `AXI_LEN_BITS'b0;
        end
        else begin
            if(c_state == idle) begin
                if(ARVALID & ARREADY)begin
                    A_now <= ARADDR;
                    reg_len <= ARLEN;
                end
                else if(AWVALID & AWREADY)begin
                    A_now <= AWADDR;
                    reg_len <= AWLEN;
                end
            end
        end
    end

    always_comb begin
        case(c_state)
            idle: begin
                ARREADY = ARVALID ? 1'b1 : 1'b0;//~AWVALID;
                RVALID = 1'b0;
                AWREADY = AWVALID ? 1'b1 : 1'b0;//1'b1;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b1;
                DRAM_WEn = 4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            /*act: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = 4'hf;
                DRAM_RASn = (delay_counter == 3'b0)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end*/
            r_data: begin
                ARREADY = 1'b0;
                RVALID = DRAM_valid & (delay_counter == 3'd5);
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = 4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = (delay_counter == 3'b0)? 1'b0 : 1'b1;
                DRAM_A = A_now[11:2] + len_counter;
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            w_data: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b1;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = (delay_counter == 3'b0)? WSTRB:4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = (delay_counter == 3'b0)? 1'b0 : 1'b1;
                DRAM_A = {1'b0,A_now[11:2]};
                DRAM_D = WDATA;
            end
            w_resp: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b1;
                DRAM_CSn = 1'b1;
                DRAM_WEn = 4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            prec: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = (delay_counter == 3'b0)? 4'h0 : 4'hf;
                DRAM_RASn = (delay_counter == 3'b0)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = WDATA;
            end
        endcase
    end

    always_comb begin
        RID = ARID;
        RDATA = DRAM_Q;
        RRESP = `AXI_RESP_OKAY;
        RLAST = (RVALID & RREADY & (len_counter == reg_len));

        BID = AWID;
        BRESP = `AXI_RESP_OKAY;
    end

endmodule