`include "../../include/AXI_define.svh"
module Write_Response(
    input clk,
    input rst,

    //WRITE RESPONSEM1
	output logic [`AXI_ID_BITS-1:0] BID_M1,
	output logic [1:0] BRESP_M1,
	output logic BVALID_M1,
	input BREADY_M1,

    //WRITE RESPONSEM2
	output logic [`AXI_ID_BITS-1:0] BID_M2,
	output logic [1:0] BRESP_M2,
	output logic BVALID_M2,
	input BREADY_M2,

    //WRITE RESPONSES0
	input [`AXI_IDS_BITS-1:0] BID_S0,
	input [1:0] BRESP_S0,
	input BVALID_S0,
	output logic BREADY_S0,

    //WRITE RESPONSES1
	input [`AXI_IDS_BITS-1:0] BID_S1,
	input [1:0] BRESP_S1,
	input BVALID_S1,
	output logic BREADY_S1,

    //WRITE RESPONSES2
	input [`AXI_IDS_BITS-1:0] BID_S2,
	input [1:0] BRESP_S2,
	input BVALID_S2,
	output logic BREADY_S2,

    //WRITE RESPONSES3
	input [`AXI_IDS_BITS-1:0] BID_S3,
	input [1:0] BRESP_S3,
	input BVALID_S3,
	output logic BREADY_S3,

    //WRITE RESPONSES4
	input [`AXI_IDS_BITS-1:0] BID_S4,
	input [1:0] BRESP_S4,
	input BVALID_S4,
	output logic BREADY_S4,

    //WRITE RESPONSES5
	input [`AXI_IDS_BITS-1:0] BID_S5,
	input [1:0] BRESP_S5,
	input BVALID_S5,
	output logic BREADY_S5
);

logic BVALID_default;
logic [2:0] state, nextstate, slave;
logic success, finish;
localparam [2:0]	idle = 3'b00,
					S0_transfer = 3'b001,
					S1_transfer = 3'b010,
					S2_transfer = 3'b011,
					S3_transfer = 3'b100,
					S4_transfer = 3'b101,
					S5_transfer = 3'b110,
					default_transfer = 3'b111;

always_comb begin
    BID_M1 = `AXI_ID_BITS'b0;
    BRESP_M1 = 2'b0;
    BVALID_M1 = 1'b0;

    BID_M2 = `AXI_ID_BITS'b0;
    BRESP_M2 = 2'b0;
    BVALID_M2 = 1'b0;

    BREADY_S0 = 1'b0;
    BREADY_S1 = 1'b0;
    BREADY_S2 = 1'b0;
    BREADY_S3 = 1'b0;
    BREADY_S4 = 1'b0;
    BREADY_S5 = 1'b0;

    success = 1'b0;
    case(slave)
        3'b000 : begin
            case(BID_S0[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S0[3:0];
                    BRESP_M1 = BRESP_S0;
                    BVALID_M1 = BVALID_S0;
                    BREADY_S0 = BREADY_M1 & BVALID_S0;
                    success = BVALID_S0 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S0[3:0];
                    BRESP_M2 = BRESP_S0;
                    BVALID_M2 = BVALID_S0;
                    BREADY_S0 = BREADY_M2 & BVALID_S0;
                    success = BVALID_S0 & BREADY_M2;
                end
            endcase
        end
        3'b001 : begin
            case(BID_S1[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S1[3:0];
                    BRESP_M1 = BRESP_S1;
                    BVALID_M1 = BVALID_S1;
                    BREADY_S1 = BREADY_M1 & BVALID_S1;
                    success = BVALID_S1 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S1[3:0];
                    BRESP_M2 = BRESP_S1;
                    BVALID_M2 = BVALID_S1;
                    BREADY_S1 = BREADY_M2 & BVALID_S1;
                    success = BVALID_S1 & BREADY_M2;
                end
            endcase
        end
        3'b010 : begin
            case(BID_S2[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S2[3:0];
                    BRESP_M1 = BRESP_S2;
                    BVALID_M1 = BVALID_S2;
                    BREADY_S2 = BREADY_M1 & BVALID_S2;
                    success = BVALID_S2 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S2[3:0];
                    BRESP_M2 = BRESP_S2;
                    BVALID_M2 = BVALID_S2;
                    BREADY_S2 = BREADY_M2 & BVALID_S2;
                    success = BVALID_S2 & BREADY_M2;
                end
            endcase
        end
        3'b011 : begin
            case(BID_S3[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S3[3:0];
                    BRESP_M1 = BRESP_S3;
                    BVALID_M1 = BVALID_S3;
                    BREADY_S3 = BREADY_M1 & BVALID_S3;
                    success = BVALID_S3 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S3[3:0];
                    BRESP_M2 = BRESP_S3;
                    BVALID_M2 = BVALID_S3;
                    BREADY_S3 = BREADY_M2 & BVALID_S3;
                    success = BVALID_S3 & BREADY_M2;
                end
            endcase
        end
        3'b100 : begin
            case(BID_S4[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S4[3:0];
                    BRESP_M1 = BRESP_S4;
                    BVALID_M1 = BVALID_S4;
                    BREADY_S4 = BREADY_M1 & BVALID_S4;
                    success = BVALID_S4 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S4[3:0];
                    BRESP_M2 = BRESP_S4;
                    BVALID_M2 = BVALID_S4;
                    BREADY_S4 = BREADY_M2 & BVALID_S4;
                    success = BVALID_S4 & BREADY_M2;
                end
            endcase
        end
        3'b101 : begin
            case(BID_S5[`AXI_ID_BITS+1:`AXI_ID_BITS])
				2'b01 : begin
					BID_M1 = BID_S5[3:0];
                    BRESP_M1 = BRESP_S5;
                    BVALID_M1 = BVALID_S5;
                    BREADY_S5 = BREADY_M1 & BVALID_S5;
                    success = BVALID_S5 & BREADY_M1;
				end
                2'b10 : begin
                    BID_M2 = BID_S5[3:0];
                    BRESP_M2 = BRESP_S5;
                    BVALID_M2 = BVALID_S5;
                    BREADY_S5 = BREADY_M2 & BVALID_S5;
                    success = BVALID_S5 & BREADY_M2;
                end
            endcase
        end
        
    endcase
end

always_comb begin
    slave = 3'b111;
    //temp
    BVALID_default = 1'b0;
    case(state)
        idle : begin
            if(BVALID_S1) begin
                slave = 3'b001;
                nextstate = S1_transfer;
            end
            else if(BVALID_S0) begin
                slave = 3'b000;
                nextstate = S0_transfer;
            end
            else if(BVALID_S2) begin
                slave = 3'b010;
                nextstate = S2_transfer;
            end
            else if(BVALID_S3) begin
                slave = 3'b011;
                nextstate = S3_transfer;
            end
            else if(BVALID_S4) begin
                slave = 3'b100;
                nextstate = S4_transfer;
            end
            else if(BVALID_S5) begin
                slave = 3'b101;
                nextstate = S5_transfer;
            end
            else begin
                nextstate = idle;
            end
        end
        S0_transfer : begin
            slave = 3'b000;
            if(BREADY_S0 & BVALID_S0 | finish) 
                nextstate = idle;
            else
                nextstate = S0_transfer;
        end
        S1_transfer : begin
            slave = 3'b001;
            if(BREADY_S1 & BVALID_S1 | finish) 
                nextstate = idle;
            else
                nextstate = S1_transfer;
        end
        S2_transfer : begin
            slave = 3'b010;
            if(BREADY_S2 & BVALID_S2 | finish) 
                nextstate = idle;
            else
                nextstate = S2_transfer;
        end
        S3_transfer : begin
            slave = 3'b011;
            if(BREADY_S3 & BVALID_S3 | finish) 
                nextstate = idle;
            else
                nextstate = S3_transfer;
        end
        S4_transfer : begin
            slave = 3'b100;
            if(BREADY_S4 & BVALID_S4 | finish) 
                nextstate = idle;
            else
                nextstate = S4_transfer;
        end
        S5_transfer : begin
            slave = 3'b101;
            if(BREADY_S5 & BVALID_S5 | finish) 
                nextstate = idle;
            else
                nextstate = S5_transfer;
        end
        default : begin
            slave = 3'b111;
            nextstate = idle;
        end
    endcase
end
always_ff@(posedge clk, negedge rst) begin
    if(~rst) begin
        state <= idle;
        finish <= 1'b0;
        //BVALID_S2 <= 1'b0;
    end
    else begin
        state <= nextstate;
        finish <= state == idle & nextstate != idle & success;
        //BVALID_S2 <= valid_default ? 1'b1 : BVALID_S2;
        //BVALID_S2 = state == default_transfer ? 1'b0 : BVALID_S2;
    end
end

endmodule