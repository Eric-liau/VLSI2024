module interrupt_handler(
    input clk,
    input rst,

    input isWFI,
    input WTO_interrupt,
    input DMA_interrupt,
    output logic interrupt_stall,
    output logic reboot
);

assign reboot = WTO_interrupt;

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        interrupt_stall <= 1'b0;
    end
    else begin
        interrupt_stall <= isWFI ? 1'b1 : DMA_interrupt ? 1'b0 : interrupt_stall;
    end
end



endmodule