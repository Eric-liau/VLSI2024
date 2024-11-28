`include "../../include/AXI_define.svh"
module Decoder (
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input VALID0,
    input VALID1,
    

    output logic VALID_desti_0,
    output logic VALID_desti_1,
    output logic VALID_desti_default
);

always_comb begin 
    case(ADDR[31:16])
        16'h0000 : begin
            VALID_desti_0 = VALID0;
            VALID_desti_1 = 1'b0;
            VALID_desti_default = 1'b0;
        end
        16'h0001 : begin
            VALID_desti_0 = 1'b0;
            VALID_desti_1 = VALID1;
            VALID_desti_default = 1'b0;
        end 
        default : begin
            VALID_desti_0 = 1'b0;
            VALID_desti_1 = 1'b0;
            VALID_desti_default = 1'b0;
        end 
    endcase
end

endmodule