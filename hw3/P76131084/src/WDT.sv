module WDT(
    input clk,
    input rst,
    input clk2,
    input rst2,
    input WDEN,
    input WDLIVE,
    input [31:0] WTOCNT,
    output logic WTO,
    output logic isCNTRST
);

logic [31:0] CNT;
logic WDEN_b1, WDEN_b2, WDLIVE_b1, WDLIVE_b2, WTO_b, isCNTRST_b;
logic WTO_a, isCNTRST_a;

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        WTO_a <= 1'b0;
        WTO <= 1'b0;
        isCNTRST_a <= 1'b0;
        isCNTRST <= 1'b0;
    end
    else begin
        WTO_a <= WTO_b;
        WTO <= WTO_a;
        isCNTRST_a <= isCNTRST_b;
        isCNTRST <= isCNTRST_a;
    end
end

always_ff@(posedge clk2, posedge rst2) begin
    if(rst2) begin
        WDEN_b1 <= 1'b0;
        WDEN_b2 <= 1'b0;
        WDLIVE_b1 <= 1'b0;
        WDLIVE_b2 <= 1'b0;
    end
    else begin
        WDEN_b1 <= WDEN;
        WDEN_b2 <= WDEN_b1;
        WDLIVE_b1 <= WDLIVE;
        WDLIVE_b2 <= WDLIVE_b1;
    end
end

always_ff@(posedge clk2, posedge rst2) begin
    if(rst2) begin
        CNT <= 32'b0;
    end
    else begin
        CNT <= isCNTRST_b ? 32'b0 : WDEN_b2 ? CNT + 32'b1 : CNT;
    end
end

always_ff@(posedge clk2, posedge rst2) begin
    if(rst2) begin
        isCNTRST_b <= 1'b0;
        WTO_b <= 1'b0;
    end
    else begin
        isCNTRST_b <= WDLIVE_b2 | WTO_b ? 1'b1 : 1'b0;
        WTO_b <= CNT >= WTOCNT ? 1'b1 : 1'b0;
    end

end

endmodule