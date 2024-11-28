`include "../../include/AXI_define.svh"
module Decoder (
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input VALID,
    input READY_S0,
    input READY_S1,

    output logic READY,
    output logic VALID_desti_0,
    output logic VALID_desti_1,
    output logic VALID_desti_default
);

always_comb begin 
    case(ADDR[31:16])
        16'h0 : begin
            VALID_desti_0 = VALID;
            VALID_desti_1 = 1'b0;
            VALID_desti_default = 1'b0;
            READY = VALID & READY_S0;
        end
        16'h1 : begin
            VALID_desti_0 = 1'b0;
            VALID_desti_1 = VALID;
            VALID_desti_default = 1'b0;
            READY = VALID & READY_S1;
        end 
        default : begin
            VALID_desti_0 = 1'b0;
            VALID_desti_1 = 1'b0;
            VALID_desti_default = 1'b1;
            READY = 1'b0;
        end 
    endcase
end

endmodule