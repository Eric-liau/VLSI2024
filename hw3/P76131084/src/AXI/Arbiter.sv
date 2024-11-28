`include "../../include/AXI_define.svh"
module Arbiter (
    input clk,
    input rst,

    input READY,
 
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

    //source2 input
    input [`AXI_ID_BITS-1:0] ID_source2,
    input [`AXI_ADDR_BITS-1:0] ADDR_source2,
    input [`AXI_LEN_BITS-1:0] LEN_source2,
    input [`AXI_SIZE_BITS-1:0] SIZE_source2,
    input [1:0] BURST_source2,
    input VALID_source2,

    //input READY_desti0,
    //input READY_desti1,

    //output to destination
    output logic [`AXI_IDS_BITS-1:0] ID,
    output logic [`AXI_ADDR_BITS-1:0] ADDR,
    output logic [`AXI_LEN_BITS-1:0] LEN,
    output logic [`AXI_SIZE_BITS-1:0] SIZE,
    output logic [1:0] BURST,
    output logic VALID,

    output logic READY_M0,
    output logic READY_M1,
    output logic READY_M2

);
logic [2:0] state, nextstate;
logic [1:0] master;
localparam  [2:0]   idle = 3'b000,
                    transfer_m0 = 3'b001,
                    transfer_m1 = 3'b010,
                    transfer_m2 = 3'b011,
                    error = 3'b100;


always_comb begin
    case(state)
        idle : begin
            if(VALID_source1) begin
                nextstate = ~READY ? transfer_m1 : VALID_source0 ? transfer_m0 : VALID_source2 ? transfer_m2 : idle;
                master = 2'b01;
            end
            else if(VALID_source0) begin
                nextstate = ~READY ? transfer_m0 : VALID_source2 ? transfer_m2 : idle;
                master = 2'b00;
            end
            else if(VALID_source2) begin
                nextstate = ~READY ? transfer_m2 : idle;
                master = 2'b10;
            end
            else begin  
                nextstate = idle;
                master = 2'b11;
            end
        end
        transfer_m0 : begin
            master = 2'b00;
            if(READY) 
                nextstate = VALID_source1 ? transfer_m1 : VALID_source2 ? transfer_m2 : idle;
            else 
                nextstate = transfer_m0;
        end
        transfer_m1 : begin
            master = 2'b01;
            if(READY)
                nextstate = VALID_source0 ? transfer_m0 : VALID_source2 ? transfer_m2 : idle;
            else
                nextstate = transfer_m1;
        end
        transfer_m2 : begin
            master = 2'b10;
            if(READY)
                nextstate = VALID_source1 ? transfer_m1 : VALID_source0 ? transfer_m0 : idle;
            else
                nextstate = transfer_m2;
        end
        default : begin
            nextstate = idle;
            master = 2'b11;
        end
    endcase
end

always_comb begin
    VALID = 1'b0;
    READY_M0 = 1'b0;
    READY_M1 = 1'b0;
    READY_M2 = 1'b0;
    case(master)
        2'b00 : begin
            ID = {4'b0000, ID_source0};
            ADDR = ADDR_source0;
            LEN = LEN_source0;
            SIZE = SIZE_source0;
            BURST = BURST_source0;
            VALID = VALID_source0;//1'b1;
            READY_M0 = VALID & READY;
        end
        2'b01 : begin
            ID = {4'b0001, ID_source1};
            ADDR = ADDR_source1;
            LEN = LEN_source1;
            SIZE = SIZE_source1;
            BURST = BURST_source1;
            VALID = VALID_source1;
            READY_M1 = VALID & READY;
        end
        2'b10 : begin
            ID = {4'b0010, ID_source2};
            ADDR = ADDR_source2;
            LEN = LEN_source2;
            SIZE = SIZE_source2;
            BURST = BURST_source2;
            VALID = VALID_source2;
            READY_M2 = VALID & READY;
        end
        default : begin
            ID = {4'b1111, `AXI_ID_BITS'b0};
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