`include "../../include/AXI_define.svh"
module Arbiter (
    input clk,
    input rst,

    input READY,
    output logic master_signal,
 
    //source0 input
    input [`AXI_ID_BITS-1:0] ID_source0,
    input [`AXI_ADDR_BITS-1:0] ADDR_source0,
    input [`AXI_LEN_BITS-1:0] LEN_source0,
    input [`AXI_SIZE_BITS-1:0] SIZE_source0,
    input [1:0] BURST_source0,
    input VALID_source0,

    //source1 input
    input [`AXI_ID_BITS-1:0] ID_source1,
    input [`AXI_ADDR_BITS-1:0] ADDR_source1,
    input [`AXI_LEN_BITS-1:0] LEN_source1,
    input [`AXI_SIZE_BITS-1:0] SIZE_source1,
    input [1:0] BURST_source1,
    input VALID_source1,

    //input READY_desti0,
    //input READY_desti1,

    //output to destination
    output logic [`AXI_IDS_BITS-1:0] ID,
    output logic [`AXI_ADDR_BITS-1:0] ADDR,
    output logic [`AXI_LEN_BITS-1:0] LEN,
    output logic [`AXI_SIZE_BITS-1:0] SIZE,
    output logic [1:0] BURST,
    output logic VALID0,
    output logic VALID1
);
logic [1:0] state, nextstate, master;
localparam  idle = 2'b00,
            transfer_m0 = 2'b01,
            transfer_m1 = 2'b10,
            error = 2'b11;

assign master_signal = master[0];

always_comb begin
    case(state)
        idle : begin
            if(VALID_source1) begin
                nextstate = ~READY ? transfer_m1 : VALID_source0 ? transfer_m0 : idle;
                master = 2'b01;
            end
            else if(VALID_source0) begin
                nextstate = ~READY ? transfer_m0 : idle;
                master = 2'b00;
            end
            else begin  
                nextstate = idle;
                master = 2'b10;
            end
        end
        transfer_m0 : begin
            master = 2'b00;
            if(READY) 
                nextstate = VALID_source1 ? transfer_m1 : idle;
            else 
                nextstate = transfer_m0;
        end
        transfer_m1 : begin
            master = 2'b01;
            if(READY)
                nextstate = VALID_source0 ? transfer_m0 : idle;
            else
                nextstate = transfer_m1;
        end
        default : begin
            nextstate = idle;
            master = 2'b10;
        end
    endcase
end

always_comb begin
    VALID0 = 1'b0;
    VALID1 = 1'b0;
    case(master)
        2'b00 : begin
            ID = {4'b0000, ID_source0};
            ADDR = ADDR_source0;
            LEN = LEN_source0;
            SIZE = SIZE_source0;
            BURST = BURST_source0;
            VALID0 = VALID_source0;//1'b1;
        end
        2'b01 : begin
            ID = {4'b0001, ID_source1};
            ADDR = ADDR_source1;
            LEN = LEN_source1;
            SIZE = SIZE_source1;
            BURST = BURST_source1;
            VALID1 = 1'b1;
            VALID0 = VALID_source1;
        end
        default : begin
            ID = {4'b0010, `AXI_ID_BITS'b0};
            ADDR = `AXI_ADDR_BITS'b0;
            LEN = `AXI_LEN_BITS'b0;
            SIZE = `AXI_SIZE_BITS'b0;
            BURST = 2'b0;
        end
    endcase
end

always_ff@(posedge clk, negedge rst) begin
    if(~rst) begin
        state <= idle;
    end
    else begin
        state <= nextstate;
    end

end

endmodule