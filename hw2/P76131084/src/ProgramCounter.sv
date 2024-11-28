module ProgramCounter (
    input clk,
    input rst,
    input stall,
    input IM_stall,
    input DM_stall,
    input [31:0] pc_in,
    input PCsrc,
    output reg [31:0] pc_out
);

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        pc_out <= 0;
    end
    else if((~stall & ~IM_stall & ~DM_stall) || PCsrc) begin
        pc_out <= pc_in;
    end
end

endmodule