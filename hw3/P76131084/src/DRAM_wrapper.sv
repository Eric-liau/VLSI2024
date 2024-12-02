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
    logic [`AXI_ADDR_BITS-1:0] A_now, A_act;
    logic [3:0] len_counter, reg_len;
    logic [7:0] AWID_reg, ARID_reg;
    logic [`AXI_DATA_BITS-1:0] RDATA_reg, WDATA_reg;

    parameter	idle = 3'd0,
				act = 3'd1,
				r_data = 3'd2,
            	w_data = 3'd3,
                w_resp = 3'd4,
                prec = 3'd5,
                overflow_prec = 3'd6,
                overflow_act = 3'd7;

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
            else if(c_state == r_data || c_state == w_data) begin
                if(n_state == overflow_prec)
                    delay_counter <= 3'd0;
                else 
                    delay_counter <= delay_counter + 3'd1;
            end
            else if(c_state == overflow_act || c_state == overflow_prec)
                delay_counter <= delay_counter + 3'd1;
        end
    end

    always_ff@(posedge clk, posedge rst) begin
        if(rst) begin
            RDATA_reg <= `AXI_DATA_BITS'b0;
            WDATA_reg <= `AXI_DATA_BITS'b0;
        end
        else begin
            RDATA_reg <= DRAM_valid ? DRAM_Q : RDATA_reg;
            WDATA_reg <= WVALID & WREADY ? WDATA : WDATA_reg;
        end
    end

    always_ff @( posedge clk, posedge rst ) begin
        if(rst)
            len_counter <= 4'd0;
        else begin
            if(c_state == r_data)begin
                if(RVALID & RREADY) begin
                    if(len_counter == reg_len)
                        len_counter <= 4'b0;
                    else
                        len_counter <= len_counter + 4'd1;
                end
            end
            else if(c_state == overflow_act || c_state == overflow_prec) begin
                len_counter <= len_counter;
            end
            else
                len_counter <= 4'd0;
        end
    end

    logic ARVALID_reg, AWVALID_reg;
    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            ARVALID_reg <= 1'b0;
            AWVALID_reg <= 1'b0;
        end
        else begin
            //if(c_state == idle) begin
            //    ARVALID_reg <= ARVALID;
            //    AWVALID_reg <= AWVALID;
            //end
            ARVALID_reg <= ARREADY ? ARVALID : ARVALID_reg;
            AWVALID_reg <= AWREADY ? AWVALID : AWVALID_reg;
        end
    end
    logic RVALID_reg;
    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            RVALID_reg <= 1'b0;
        end
        else begin
            if(c_state == r_data) begin
                RVALID_reg <= DRAM_valid ? 1'b1 : RREADY ? 1'b0 : RVALID_reg;
            end
        end
    end
    always_comb begin
        case(c_state)
            idle: begin
                if(ARVALID & ARREADY)
                    n_state = act;
                else if (AWVALID & AWREADY)
                    n_state = act;
                else
                    n_state = idle;
            end
            act: begin
                if(delay_counter == 3'd5)begin
                    if(AWVALID_reg)
                        n_state = w_data;
                    else if(ARVALID_reg)
                        n_state = r_data;
                end
                else
                    n_state = act;
            end
            r_data:begin//
                if(A_now[11:2] == 10'h3ff && ~RLAST && DRAM_valid) begin
                    n_state = overflow_prec;
                end
                else if(RLAST & RREADY)
                    n_state = prec;
                else
                    n_state = r_data;
            end
            w_data:begin//
                if(WLAST & WREADY & WVALID)
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
                if(delay_counter == 3'd5)
                    n_state = idle;
                else
                    n_state = prec;
            end
            overflow_act:begin
                if(delay_counter == 3'd5)begin
                    n_state = r_data;
                end
                else
                    n_state = overflow_act;
            end
            overflow_prec:begin
                if(delay_counter == 3'd5)
                    n_state = overflow_act;
                else
                    n_state = overflow_prec;
            end
        endcase
    end

    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            A_now <= `AXI_ADDR_BITS'b0;
            A_act <= `AXI_ADDR_BITS'b0;
            reg_len <= `AXI_LEN_BITS'b0;
        end
        else begin
            if(c_state == idle) begin
                if(ARVALID & ARREADY)begin
                    A_now <= ARADDR;
                    A_act <= ARADDR;
                    reg_len <= ARLEN;
                end
                else if(AWVALID & AWREADY)begin
                    A_now <= AWADDR;
                    A_act <= AWADDR;
                    reg_len <= AWLEN;
                end
            end
            else if(c_state == overflow_act)
                A_act <= A_now;
            else if(c_state == r_data) begin
                if(DRAM_valid/*RVALID & RREADY*/) begin
                    A_now <= A_now + 32'd4;
                end
            end
            else if(c_state == w_data) begin
                if(WVALID & WREADY) begin
                    A_now <= A_now + 32'd4;
                end
            end
        end
    end

    always_ff@(posedge clk, posedge rst) begin
        if(rst) begin
            AWID_reg <= 8'b0;
            ARID_reg <= 8'b0;
        end
        else begin
            AWID_reg <= AWVALID ? AWID : AWID_reg;
            ARID_reg <= ARVALID ? ARID : ARID_reg;
        end

    end

    always_comb begin
        case(c_state)
            idle: begin
                ARREADY = ~AWVALID;
                RVALID = 1'b0;
                AWREADY = 1'b1;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b1;
                DRAM_WEn = 4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            act: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = 4'hf;
                DRAM_RASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            r_data: begin
                ARREADY = 1'b0;
                RVALID = RVALID_reg;//DRAM_valid/* & (delay_counter == 3'd5)*/;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = 4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
                DRAM_A = A_now[11:2];// + len_counter;
                DRAM_D = `AXI_DATA_BITS'b0;
            end
            w_data: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = (delay_counter == 3'd5)? 1'b1:1'b0;//1'b1;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = (delay_counter == 3'd5)? WSTRB:4'hf;
                DRAM_RASn = 1'b1;
                DRAM_CASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
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
                DRAM_D = WDATA_reg;//`AXI_DATA_BITS'b0;
            end
            prec: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = (delay_counter == 3'd5)? 4'h0 : 4'hf;
                DRAM_RASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_act[22:12];
                DRAM_D = WDATA_reg;
            end
            overflow_prec: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = (delay_counter == 3'd5)? 4'h0 : 4'hf;
                DRAM_RASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_act[22:12];
                DRAM_D = WDATA_reg;
            end
            overflow_act: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                DRAM_CSn = 1'b0;
                DRAM_WEn = 4'hf;
                DRAM_RASn = (delay_counter == 3'd5)? 1'b0 : 1'b1;
                DRAM_CASn = 1'b1;
                DRAM_A = A_now[22:12];
                DRAM_D = `AXI_DATA_BITS'b0;
            end
        endcase
    end
    assign RID = ARID_reg;
    assign BID = AWID_reg;
    always_comb begin
        //RID = ARID;//ARID_reg;
        RDATA = RDATA_reg;//DRAM_Q;
        RRESP = `AXI_RESP_OKAY;
        RLAST = (RVALID & RREADY & (len_counter == reg_len));

        //BID = AWID;//AWID_reg;
        BRESP = `AXI_RESP_OKAY;
    end

endmodule