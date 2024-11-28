`include "../../include/AXI_define.svh"
module Decoder (
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input VALID,
    input READY_S0,
    input READY_S1,
    input READY_S2,
    input READY_S3,
    input READY_S4,
    input READY_S5,

    output logic READY,
    output logic VALID_desti_0,
    output logic VALID_desti_1,
    output logic VALID_desti_2,
    output logic VALID_desti_3,
    output logic VALID_desti_4,
    output logic VALID_desti_5,
    output logic VALID_desti_default
);

always_comb begin
    
    if(ADDR[31:16] == 16'h0 && ADDR[15:0] <= 16'h1fff) begin //ROM
        VALID_desti_0 = VALID;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S0;
    end
    else if(ADDR[31:16] == 16'h1) begin //IM
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = VALID;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S1;
    end
    else if(ADDR[31:16] == 16'h2) begin //DM
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = VALID;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S2;
    end
    else if(ADDR[31:16] == 16'h1002 && ADDR[15:0] <= 16'h0400) begin //DMA
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = VALID;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S3;
    end
    else if(ADDR[31:16] == 16'h1001 && ADDR[15:0] <= 16'h03ff) begin //WDT
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = VALID;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S4;
    end
    else if(ADDR[31:16] >= 16'h2000 && ADDR[31:16] < 16'h2020) begin //DRAM
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = VALID;
        VALID_desti_default = 1'b0;
        READY = VALID & READY_S5;
    end
    else begin
        VALID_desti_0 = 1'b0;
        VALID_desti_1 = 1'b0;
        VALID_desti_2 = 1'b0;
        VALID_desti_3 = 1'b0;
        VALID_desti_4 = 1'b0;
        VALID_desti_5 = 1'b0;
        VALID_desti_default = 1'b1;
        READY = 1'b0;
    end
end

endmodule