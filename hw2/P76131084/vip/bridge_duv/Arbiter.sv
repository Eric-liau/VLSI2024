`include "../../include/AXI_define.svh"
module Arbiter (
    input clk,
    input rst,

    input busy_s0,
    input busy_s1,
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

    input READY_desti0,
    input READY_desti1,

    //output to destination
    output logic [`AXI_IDS_BITS-1:0] ID,
    output logic [`AXI_ADDR_BITS-1:0] ADDR,
    output logic [`AXI_LEN_BITS-1:0] LEN,
    output logic [`AXI_SIZE_BITS-1:0] SIZE,
    output logic [1:0] BURST,
    output logic VALID0,
    output logic VALID1,
    output logic VALIDD
);
logic [1:0] master;
logic key, handshake0, handshake1;
assign master_signal = master[0];
always_comb begin
    if(VALID_source0 & READY_desti0 & ~busy_s0)
        handshake0 = 1'b1;
    else
        handshake0 = 1'b0;

    if(VALID_source1 & READY_desti1 & ~busy_s1)
        handshake1 = 1'b1;
    else
        handshake1 = 1'b0;
end

always_comb begin

    if(handshake0 & handshake1) begin
        master = {1'b0, key};
    end
    else if(~handshake0 & ~handshake1) begin
        master = 2'b10;
    end
    else 
        master = handshake0 ? 2'b00 : 2'b01;
end

always_comb begin
    VALID0 = 1'b0;
    VALID1 = 1'b0;
    VALIDD = 1'b0;
    case(master)
        2'b00 : begin
            ID = {4'b0000, ID_source0};
            ADDR = ADDR_source0;
            LEN = LEN_source0;
            SIZE = SIZE_source0;
            BURST = BURST_source0;
            VALID0 = 1'b1;
        end
        2'b01 : begin
            ID = {4'b0001, ID_source1};
            ADDR = ADDR_source1;
            LEN = LEN_source1;
            SIZE = SIZE_source1;
            BURST = BURST_source1;
            VALID1 = 1'b1;
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

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        key <= 1'b1;
    end
    else begin
        if(handshake0 & handshake1) begin
            key <= ~key;
        end
    end

end

endmodule