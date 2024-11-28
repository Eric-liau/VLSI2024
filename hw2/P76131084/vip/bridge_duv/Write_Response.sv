`include "../../include/AXI_define.svh"
module Write_Response(

    input [1:0] write_slave,
    output logic stop,

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


always_comb begin
    BID_M1 = `AXI_ID_BITS'b0;
    BRESP_M1 = 2'b0;
    BVALID_M1 = 1'b0;

    BREADY_S0 = 1'b0;
    BREADY_S1 = 1'b0;
    stop = 1'b0;
    case(write_slave)
        2'b00 : begin
            if(BVALID_S0 & BREADY_M1) begin
                BID_M1 = BID_S0[3:0];
                BRESP_M1 = BRESP_S0;
            end
            BVALID_M1 = BVALID_S0;
            BREADY_S0 = BREADY_M1;
            if(BRESP_S0 == `AXI_RESP_DECERR | BRESP_S0 == `AXI_RESP_SLVERR)
                stop = 1'b1;
        end
        2'b01 : begin
            if(BVALID_S1 & BREADY_M1) begin
                BID_M1 = BID_S1[3:0];
                BRESP_M1 = BRESP_S1;
            end
            BVALID_M1 = BVALID_S1;
            BREADY_S1 = BREADY_M1;
            if(BRESP_S1 == `AXI_RESP_DECERR | BRESP_S1 == `AXI_RESP_SLVERR)
                stop = 1'b1;
        end
        2'b10 : begin
            BRESP_M1 = `AXI_RESP_DECERR;
        end
    endcase
end

endmodule