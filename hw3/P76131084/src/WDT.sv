`include "pulse_syn.sv"
module WDT(
    input clk,
    input rst,
    input clk2,
    input rst2,
    input WDEN,
    input WDLIVE,
    input [31:0] WTOCNT,
    input CNT_enable,
    output logic WTO,
    output logic WDLIVE_reject,
    output logic CNT_enable_reject,
    output logic isCNTRST
);

//clk1
logic enable_a_pulse, WDEN_reg;
logic [31:0] CNT;
//clk2
logic enable;
logic WDEN_b1, WDEN_b2;
logic [1:0] wait_cycle;


pulse_syn CNTenable(
    .clk_a(clk2),
    .rst_a(rst2),
    .clk_b(clk),
    .rst_b(rst),
    .a_pulse(enable),
    .b_pulse_toggle(enable_a_pulse)
);
always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        WTO <= 1'b0;
    end
    else begin
        WTO <= CNT > WTOCNT ? 1'b1 : 1'b0;
    end
end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        CNT <= 32'b0;
    end
    else begin
        if(WTO | WDLIVE)
            CNT <= 32'b0;
        else if(enable_a_pulse)
            CNT <= CNT + 32'b1;
    end

end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        WDEN_reg <= 1'b0;
    end
    else begin
        WDEN_reg <= WDEN ? 1'b1 : WDEN_reg;
    end
end

/*always_ff@(posedge clk) begin
    WDEN_a1 <= WDEN_b2;
    WDEN_a2 <= WDEN_a1;
end*/

always_ff@(posedge clk2) begin
    WDEN_b1 <= WDEN_reg;
    WDEN_b2 <= WDEN_b1;
end

always_ff@(posedge clk2, posedge rst2) begin
    if(rst2) begin
        enable <= 1'b0;
        wait_cycle <= 2'b0;
    end
    else begin
        wait_cycle <= wait_cycle < 2'd2 ? wait_cycle + 2'd1 : wait_cycle;
        if(wait_cycle == 2'd2) begin
            if(WDEN_b2)
                enable <= 1'b1;
        end
    end
end


endmodule