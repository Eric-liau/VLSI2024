`include "../../include/AXI_define.svh"
module ROM_wrapper (
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

    input [31:0] ROM_out,
    output logic ROM_read,
    output logic ROM_enable,
    output logic [11:0] ROM_address
);
    
    logic [1:0] c_state, n_state;

    parameter	idle = 2'b0,
				r_data = 2'b1,
				w_data = 2'b10,
            	w_resp = 2'b11;

    always_ff @( posedge clk, posedge rst ) begin
        if(rst)
            c_state <= idle;
        else
            c_state <= n_state;
    end

    always_comb begin
        case(c_state)
            idle: begin
                if(ARVALID & ARREADY)
                    n_state = r_data;
                else if(AWVALID & AWREADY)
                    n_state = w_data;
                else
                    n_state = idle;
            end
            r_data: begin
                if(RVALID & RREADY & RLAST)
                    n_state = idle;
                else
                    n_state = r_data;
            end
            w_data: begin
                if(WVALID & WREADY & WLAST)
                    n_state = w_resp;
                else
                    n_state = w_data;
            end
            w_resp: begin
                if(BVALID & BREADY)
                    n_state = idle;
                else 
                    n_state = w_resp;
            end
        endcase
    end

    logic [13:0] A_now;
    
    logic [`AXI_LEN_BITS-1:0] reg_len, len_counter;

    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            A_now <= 14'b0;
            len_counter <= `AXI_LEN_BITS'b0;
        end
        else if(c_state == idle) begin
            if(ARVALID & ARREADY) begin
                A_now <= ARADDR[15:2];
                reg_len <= ARLEN + `AXI_LEN_BITS'b1;
                len_counter <= len_counter + `AXI_LEN_BITS'b1;
            end
            else if(AWVALID & AWREADY) begin
                A_now <= AWADDR[15:2];
                reg_len <= AWLEN + `AXI_LEN_BITS'b1;
                len_counter <= len_counter + `AXI_LEN_BITS'b1;
            end
        end
        else if(c_state == r_data) begin
            if(RVALID & RREADY) begin
                A_now <= A_now + 14'b1;
                if(len_counter == reg_len)
                    len_counter <= `AXI_LEN_BITS'b0;
                else
                    len_counter <= len_counter + `AXI_LEN_BITS'b1;
            end
        end
        else if(c_state == w_data) begin
            if(WVALID & WREADY)
                A_now <= A_now + 14'b1;
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
                ROM_enable = ARVALID | AWVALID;//
                ROM_read = 1'b0;
                ROM_address = (AWVALID) ? AWADDR[15:2] : ARADDR[15:2];//
            end
            r_data: begin
                ARREADY = 1'b0;
                RVALID = 1'b1;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b0;
                ROM_enable = 1'b1;
                ROM_read = RVALID & RREADY;
                ROM_address = A_now;
            end
            w_data: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b1;
                BVALID = 1'b0;
                ROM_enable = 1'b1;
                ROM_read = 1'b0;
                ROM_address = A_now;
            end
            w_resp: begin
                ARREADY = 1'b0;
                RVALID = 1'b0;
                AWREADY = 1'b0;
                WREADY = 1'b0;
                BVALID = 1'b1;
                ROM_enable = 1'b0;
                ROM_read = 1'b0;
                ROM_address = 14'b0;
            end
        endcase
    end

    logic [`AXI_IDS_BITS-1:0 ] arid_reg, awid_reg;

    always_ff @( posedge clk, posedge rst ) begin
        if(rst) begin
            arid_reg <= `AXI_IDS_BITS'b0;
            awid_reg <= `AXI_IDS_BITS'b0;
        end
        else begin
            if(c_state == idle) begin
                if(ARVALID & ARREADY)
                    arid_reg <= ARID;
                else
                    arid_reg <= arid_reg;
                if(AWVALID & AWREADY)
                    awid_reg <= AWID;
                else
                    awid_reg <= awid_reg;
            end
        end
    end

    always_comb begin
        RID = arid_reg;
        RDATA = ROM_out;
        RRESP = `AXI_RESP_OKAY;
        RLAST = (RVALID & RREADY & (len_counter == reg_len));
        BID = awid_reg;
        BRESP = `AXI_RESP_OKAY;
    end

endmodule