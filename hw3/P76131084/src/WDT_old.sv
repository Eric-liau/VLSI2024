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
logic WTO_a, isCNTRST_a, WDEN_a1, WDEN_a2, WDLIVE_a1, WDLIVE_a2;
logic WDEN_reg, WDLIVE_reg, CNT_enable_reg, WDLIVE_toggle, WDLIVE_feedback_pulse;
logic CNT_enable_feedback_pulse;//, CNT_enable_a1, CNT_enable_a2;
logic [31:0] WTOCNT_reg;
//clk2
logic [31:0] CNT, WTOCNT_b;
logic WDEN_b2_toggle, enable;
logic WDEN_b1, WDEN_b2,/* WDLIVE_b1, WDLIVE_b2, WDLIVE_b3, */WDLIVE_b_pulse, WTO_b, isCNTRST_b;
logic CNT_enable_b_pulse;//, CNT_enable_b1, CNT_enable_b2;
//FIFO
//logic [3:0] WDLIVE_rdptr_gray, WDLIVE_rdptr_gray_b1, WDLIVE_rdptr_gray_b2;
//logic [3:0] WDLIVE_wtptr_gray, WDLIVE_wtptr_gray_a1, WDLIVE_wtptr_gray_a2;
//logic [3:0] WDLIVE_wtptr, WDLIVE_rdptr;
//logic [3:0] WDLIVE_rdptr_plus, WDLIVE_wtptr_plus;
//logic WDLIVE_fifo_notempty, WDLIVE_fifo_full;

//assign WDLIVE_rdptr_plus = WDLIVE_rdptr + 3'b1;
//assign WDLIVE_wtptr_plus = WDLIVE_wtptr + 3'b1;
//assign WDLIVE_fifo_empty = (WDLIVE_rdptr_gray_b2 == WDLIVE_wtptr_gray);//clk2
//assign WDLIVE_fifo_full = (WDLIVE_wtptr_gray_a2[3:2] == ~WDLIVE_rdptr_gray[3:2])
//            &&(WDLIVE_wtptr_gray_a2[1:0] == WDLIVE_rdptr_gray[1:0]);//clk1
//always_ff@(posedge clk, posedge rst) begin
//    if(rst) begin
//        WDLIVE_rdptr_gray <= 4'b0;
//        WDLIVE_rdptr <= 4'b0;
//        WDLIVE_fifo_full <= 1'b0;
//    end
//    else begin
//        WDLIVE_rdptr <= WDLIVE & ~WDLIVE_fifo_full ? WDLIVE_rdptr + 3'b1 : WDLIVE_rdptr;
//        WDLIVE_rdptr_gray <= WDLIVE ? {WDLIVE_rdptr_plus[3], WDLIVE_rdptr_plus[3] ^ WDLIVE_rdptr_plus[2], 
//            WDLIVE_rdptr_plus[2] ^ WDLIVE_rdptr_plus[1], WDLIVE_rdptr_plus[1] ^ WDLIVE_rdptr_plus[0]} : WDLIVE_rdptr_gray;
//        WDLIVE_fifo_full <= (WDLIVE_wtptr_gray_a2[3:2] == ~WDLIVE_rdptr_gray[3:2])
//            &&(WDLIVE_wtptr_gray_a2[1:0] == WDLIVE_rdptr_gray[1:0]);
//    end
//
//end
//always_ff@(posedge clk2, posedge rst2) begin
//    if(rst2) begin
//        WDLIVE_wtptr_gray <= 4'b0;
//        WDLIVE_wtptr <= 4'b0;
//        WDLIVE_fifo_notempty <= 1'b0;
//        WDLIVE_rdptr_gray_b2 <= 1'b0;
//    end
//    else begin
//        if(WDLIVE_b2) begin
//            WDLIVE_wtptr <= WDLIVE_wtptr + 3'b1;
//            WDLIVE_wtptr_gray <= {WDLIVE_wtptr_plus[3], WDLIVE_wtptr_plus[3] ^ WDLIVE_wtptr_plus[2], 
//                    WDLIVE_wtptr_plus[2] ^ WDLIVE_wtptr_plus[1], WDLIVE_wtptr_plus[1] ^ WDLIVE_wtptr_plus[0]};
//        end
//        //WDLIVE_wtptr <= WDLIVE_b2 & ~WDLIVE_fifo_notempty ? WDLIVE_wtptr + 3'b1 : WDLIVE_wtptr;
//        //WDLIVE_wtptr_gray <= WDLIVE_b2 ? {WDLIVE_wtptr_plus[3], WDLIVE_wtptr_plus[3] ^ WDLIVE_wtptr_plus[2], 
//        //    WDLIVE_wtptr_plus[2] ^ WDLIVE_wtptr_plus[1], WDLIVE_wtptr_plus[1] ^ WDLIVE_wtptr_plus[0]} : WDLIVE_wtptr_gray;
//        if(WDLIVE_rdptr_gray_b2 == WDLIVE_wtptr_gray)
//            WDLIVE_fifo_notempty <= 1'b0;
//        else 
//            WDLIVE_fifo_notempty <= 1'b1;
//        //WDLIVE_fifo_notempty <= (WDLIVE_rdptr_gray_b2 == WDLIVE_wtptr_gray);
//    end
//
//end
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

//pulse_syn CNT_enable_in(
//    .clk_a(clk),
//    .rst_a(rst),
//    .clk_b(clk2),
//    .rst_b(rst2),
//    .a_pulse(CNT_enable_reg),
//    .b_pulse_toggle(CNT_enable_b_pulse)
//);
//
//pulse_syn CNT_enable_out(
//    .clk_a(clk2),
//    .rst_a(rst2),
//    .clk_b(clk),
//    .rst_b(rst),
//    .a_pulse(CNT_enable_b_pulse),
//    .b_pulse_toggle(CNT_enable_feedback_pulse)
//);
//always_ff@(posedge clk, posedge rst) begin
//    if(rst) begin
//        CNT_enable_reg <= 1'b0;
//        CNT_enable_reject <= 1'b0;
//    end
//    else begin
//        CNT_enable_reg <= CNT_enable & ~CNT_enable_reject;
//        CNT_enable_reject <= CNT_enable_feedback_pulse ? 1'b0 : CNT_enable ? 1'b1 : CNT_enable_reject;
//    end
//
//end
//
//pulse_syn WDLIVE_in(
//    .clk_a(clk),
//    .rst_a(rst),
//    .clk_b(clk2),
//    .rst_b(rst2),
//    .a_pulse(WDLIVE_reg),
//    .b_pulse_toggle(WDLIVE_b_pulse)
//);
//
//pulse_syn WDLIVE_out(
//    .clk_a(clk2),
//    .rst_a(rst2),
//    .clk_b(clk),
//    .rst_b(rst),
//    .a_pulse(WDLIVE_b_pulse),
//    .b_pulse_toggle(WDLIVE_feedback_pulse)
//);
//always_ff@(posedge clk, posedge rst) begin
//    if(rst) begin
//        WDLIVE_reg <= 1'b0;
//        WDLIVE_reject <= 1'b0;
//    end
//    else begin
//        WDLIVE_reg <= WDLIVE & ~WDLIVE_reject;
//        WDLIVE_reject <= WDLIVE_feedback_pulse ? 1'b0 : WDLIVE ? 1'b1 : WDLIVE_reject;
//    end
//
//end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        WDEN_reg <= 1'b0;
        //WDLIVE_toggle <= 1'b0;
        //WDLIVE_reg <= 1'b0;
        //CNT_enable_reg <= 1'b0;
        //WTOCNT_reg <= 32'b0;
    end
    else begin
        WDEN_reg <= WDEN ? 1'b1 : WDEN_reg;//WDEN ? 1'b1 : WDEN_reg;
        //WDLIVE_toggle <= (WDLIVE ^ WDLIVE_toggle);
        //WDLIVE_reg <= WDLIVE_a2 ? 1'b0 : WDLIVE ? 1'b1 : WDLIVE_reg; 
        //CNT_enable_reg <= CNT_enable ? 1'b1 : CNT_enable_reg;
        //WTOCNT_reg <= CNT_enable_b_pulse ? WTOCNT : WTOCNT_reg;
    end
end

always_ff@(posedge clk/*, posedge rst*/) begin
    //if(rst) begin
    //    WTO_a <= 1'b0;
    //    WTO <= 1'b0;
    //    isCNTRST_a <= 1'b0;
    //    isCNTRST <= 1'b0;
    //end
    //else begin
        //WTO_a <= WTO_b;
        //WTO <= WTO_a;
        //isCNTRST_a <= isCNTRST_b;
        //isCNTRST <= isCNTRST_a;
        WDEN_a1 <= WDEN_b2/*_toggle*/;
        WDEN_a2 <= WDEN_a1;

        //WDLIVE_a1 <= WDLIVE_b2;
        //WDLIVE_a2 <= WDLIVE_a1;
        //WDLIVE_wtptr_gray_a1 <= WDLIVE_wtptr_gray;
        //WDLIVE_wtptr_gray_a2 <= WDLIVE_wtptr_gray_a1;

        //CNT_enable_a1 <= CNT_enable_b2;
        //CNT_enable_a2 <= CNT_enable_a1;
    //end
end
//assign WDLIVE_b_pulse = WDLIVE_b2 ^ WDLIVE_b3;
always_ff@(posedge clk2/*, posedge rst2*/) begin
    //if(rst2) begin
    //    WDEN_b1 <= 1'b0;
    //    WDEN_b2 <= 1'b0;
    //    WDLIVE_b1 <= 1'b0;
    //    WDLIVE_b2 <= 1'b0;
    //end
    //else begin
        WDEN_b1 <= WDEN_reg;
        WDEN_b2 <= WDEN_b1;
        //WDLIVE_b1 <= WDLIVE_toggle;
        //WDLIVE_b2 <= WDLIVE_b1;
        //WDLIVE_b3 <= WDLIVE_b2;
        //WDLIVE_rdptr_gray_b1 <= WDLIVE_rdptr_gray;
        //WDLIVE_rdptr_gray_b2 <= WDLIVE_rdptr_gray_b1;
    //end
end
always_ff@(posedge clk2, posedge rst2) begin
    if(rst2) begin
        //WDEN_b2_toggle <= 1'b0;
        //CNT_enable_b1 <= 1'b0;
        //CNT_enable_b2 <= 1'b0;
        enable <= 1'b0;
    end
    else begin
        //WDEN_b2_toggle <= WDEN_b2_toggle ^ WDEN_b2;
        //CNT_enable_b1 <= CNT_enable_reg;
        //CNT_enable_b2 <= CNT_enable_b1;
        if(WDEN_b2)
            enable <= 1'b1;
        //enable <= WDEN_b2/*_toggle*/ ? 1'b1 : enable;
    end
end
//always_ff@(posedge clk2, posedge rst2) begin
//    if(rst2) begin
//        //WTOCNT_b <= 32'b0;;
//        //CNT <= 32'b0;
//    end
//    else begin
//        //WTOCNT_b <= CNT_enable_b_pulse ? WTOCNT : WTOCNT_b;
//        //CNT <= WDLIVE_b_pulse/*isCNTRST_b*/ | (CNT > WTOCNT_b) ? 32'b0 : enable ? CNT + 32'b1 : CNT;
//    end
//end
//
//always_ff@(posedge clk2, posedge rst2) begin
//    if(rst2) begin
//        isCNTRST_b <= 1'b0;
//        //WTO_b <= 1'b0;
//    end
//    else begin
//        isCNTRST_b <= WDLIVE_b_pulse | WTO_b ? 1'b1 : 1'b0;
//        //WTO_b <= CNT >= WTOCNT_b & enable ? 1'b1 : 1'b0;
//    end
//
//end

endmodule