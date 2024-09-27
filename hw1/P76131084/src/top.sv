`include "CPU.sv"
`include "SRAM_wrapper.sv"
module top(
    input clk,
    input rst
);
wire [31:0] pc_to_mem, instr, Memadr, store_data, load_data;
wire MemRead;
wire [31:0] MemWrite;
//assign DM_CEB = MemRead ? 0 : ~MemWrite ? 0 : 1;
CPU cpu(
    .clk(clk),
    .rst(rst),
    //IM
    .instr_in(instr),
    .pc_to_mem(pc_to_mem),
    //DM
    .load_data(load_data),
    .store_data(store_data),
    .Memadr(Memadr),
    .MemRead(MemRead),
    .MemWrite(MemWrite)
);
/*SRAM_wrapper IM1(
    .CLK(~clk),
    .OE(IM_OE),
    .WEB(4'b1111),  // low active
    .A(pc_to_mem[15:2]),
    .DI(32'b0),
    .DO(instr)
);*/
SRAM_wrapper IM1(
    .CLK(~clk),
    .RST(1'b0),
    .CEB(1'b0),
    .WEB(1'b1),
    .BWEB(32'h11111111),  // low active
    .A(pc_to_mem[15:2]),
    .DI(32'b0),
    .DO(instr)
);

/*SRAM_wrapper DM1(
    .CLK(~clk),
    .OE(MemRead),
    .WEB(MemWrite),  // low active
    .A(Memadr[15:2]),
    .DI(store_data),
    .DO(load_data)
);*/

SRAM_wrapper DM1(
    .CLK(~clk),
    .RST(1'b0),
    .CEB(1'b0),
    .WEB(MemRead),
    .BWEB(MemWrite),  // low active
    .A(Memadr[15:2]),
    .DI(store_data),
    .DO(load_data)
);

endmodule