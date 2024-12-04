module interrupt_handler(
    input clk,
    input rst,

    input WFI_interrupt,
    input WTO_interrupt,
    input DMA_interrupt,
    output logic interrupt_stall,
    output logic reboot
);

//always_comb begin
//    if(WTO_interrupt)
//        reboot = 1'b1;
//    else
//        reboot = 1'b0;
//end

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        interrupt_stall <= 1'b0;
        reboot <= 1'b0;
    end
    else begin
        interrupt_stall <= WFI_interrupt ? 1'b1 : DMA_interrupt ? 1'b0 : interrupt_stall;
        if(WTO_interrupt)
            reboot <= 1'b1;
        else
            reboot <= 1'b0;
    end
end



endmodule