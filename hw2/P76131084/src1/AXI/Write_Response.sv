`include "../../include/AXI_define.svh"
module Write_Response(
    input clk,
    input rst,

    input valid_default,
    output logic [1:0] write_slave,

    //WRITE RESPONSE
	output logic [`AXI_ID_BITS-1:0] BID_M1,
	output logic [1:0] BRESP_M1,
	output logic BVALID_M1,
	input BREADY_M1,

    //WRITE RESPONSE0
	input [`AXI_IDS_BITS-1:0] BID_S0,
	input [1:0] BRESP_S0,
	input BVALID_S0,
	output logic BREADY_S0,

    //WRITE RESPONSE1
	input [`AXI_IDS_BITS-1:0] BID_S1,
	input [1:0] BRESP_S1,
	input BVALID_S1,
	output logic BREADY_S1
);

logic BVALID_S2;
logic [1:0] state, nextstate, slave;
localparam [1:0]    idle = 2'b00,
                    S0_transfer = 2'b01,
                    S1_transfer = 2'b10,
                    default_transfer = 2'b11;
assign write_slave = slave;
always_comb begin
    BID_M1 = `AXI_ID_BITS'b0;
    BRESP_M1 = 2'b0;
    BVALID_M1 = 1'b0;
    BREADY_S0 = 1'b0;
    BREADY_S1 = 1'b0;
    case(slave)
        2'b00 : begin
            BID_M1 = BID_S0[3:0];
            BRESP_M1 = BRESP_S0;
            BVALID_M1 = BVALID_S0;
            BREADY_S0 = BREADY_M1 & BVALID_S0;
        end
        2'b01 : begin
            BID_M1 = BID_S1[3:0];
            BRESP_M1 = BRESP_S1;
            BVALID_M1 = BVALID_S1;
            BREADY_S1 = BREADY_M1 & BVALID_S1;
        end
        2'b10 : begin
            BRESP_M1 = `AXI_RESP_DECERR;
        end
    endcase
end

always_comb begin
    slave = 2'b11;
    //temp
    BVALID_S2 = 1'b0;
    case(state)
        idle : begin
            if(BVALID_S1) begin
                slave = 2'b01;
                nextstate = ~BREADY_M1 ? S1_transfer : BVALID_S0 ? S0_transfer : BVALID_S2 ? default_transfer : idle;
            end
            else if(BVALID_S0) begin
                slave = 2'b00;
                nextstate = ~BREADY_M1 ? S0_transfer : BVALID_S2 ? default_transfer : idle;
            end
            else if(BVALID_S2) begin
                slave = 2'b10;
                nextstate = ~BREADY_M1 ? default_transfer : idle;
            end
            else
                nextstate = idle;
        end
        S0_transfer : begin
            slave = 2'b00;
            if(BREADY_M1 & BVALID_S0) 
                nextstate = BVALID_S1 ? S1_transfer : BVALID_S2 ? default_transfer : idle;
            else
                nextstate = S0_transfer;
        end
        S1_transfer : begin
            slave = 2'b01;
            if(BREADY_M1 & BVALID_S1) 
                nextstate = BVALID_S0 ? S0_transfer : BVALID_S2 ? default_transfer : idle;
            else
                nextstate = S1_transfer;
        end
        default : begin
            slave = 2'b10;
            nextstate = BVALID_S1 ? S1_transfer : BVALID_S0 ? S0_transfer : idle;
        end
    endcase
end
always_ff@(posedge clk, negedge rst) begin
    if(~rst) begin
        state <= idle;
        //BVALID_S2 <= 1'b0;
    end
    else begin
        state <= nextstate;
        //BVALID_S2 <= valid_default ? 1'b1 : BVALID_S2;
        //BVALID_S2 = state == default_transfer ? 1'b0 : BVALID_S2;
    end
end

endmodule