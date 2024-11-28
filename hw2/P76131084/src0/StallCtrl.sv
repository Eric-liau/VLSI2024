module StallCtrl(
    input ID_MemRead,
    input ID_isfloat_rd,
    input IF_isfloat_rs1,
    input IF_isfloat_rs2,
    input [4:0] ID_rd_adr,
    input [4:0] IF_rs1_adr,
    input [4:0] IF_rs2_adr,
    output isStall
);

assign isStall = ID_MemRead && (IF_rs1_adr == ID_rd_adr || IF_rs2_adr == ID_rd_adr) && ((ID_isfloat_rd == IF_isfloat_rs1) || (ID_isfloat_rd == IF_isfloat_rs2));

endmodule