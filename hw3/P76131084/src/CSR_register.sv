module CSR_register(
    input clk,
    input rst,

    input [31:0] write_value,
    output logic [31:0] read_value,
    input isCSR,
    input isCSR_WB,
    input isMRET,
    input isMRET_WB,
    input [3:0] csr,
    input [3:0] csr_WB,
    input isinstruct
);
localparam [3:0]    mstatus = 4'b0000,
                    mtvec = 4'b0001,
                    mie = 4'b0010,
                    mip = 4'b0011,
                    mepc = 4'b0100,
                    instreth = 4'b0101,
                    instret = 4'b0110,
                    cycleh = 4'b0111,
                    cycle = 4'b1000;

//CSR register
logic [31:0] CSR_reg [8:0]; 
logic [3:0] i;

always_ff@(posedge clk, posedge rst) begin
    if(rst) begin
        for(i = 4'd0; i <= 4'd9; i++) begin
            CSR_reg[i] <= 32'b0;
        end
    end
    else begin
        //CSR hardwire
        CSR_reg[mtvec] <= 32'h00010000;

        {CSR_reg[cycleh], CSR_reg[cycle]} <= {CSR_reg[cycleh], CSR_reg[cycle]} + 64'b1;
        if(isinstruct)
            {CSR_reg[instreth], CSR_reg[instret]} <= {CSR_reg[instreth], CSR_reg[instret]} + 64'b1;

        if(isCSR_WB & (rd != 5'b0)) 
            reg_file[rd] <= CSR_reg[csr_WB];
        if(isCSR_WB) begin
            case(csr_WB)
                mstatus : begin
                    CSR_reg[mstatus][12:11] <= write_value[12:11];
                    CSR_reg[mstatus][7] <= write_value[7];
                    CSR_reg[mstatus][3] <= write_value[3];
                end
                mie : begin
                    CSR_reg[mie][11] <= write_value[11];
                    //CSR_reg[mie][7] <= write_value[7];
                end
                //mip : begin
                //    CSR_reg[mip][11] <= write_value[11];
                //    CSR_reg[mip][7] <= write_value[7];
                //end
                mepc : begin
                    CSR_reg[mepc] <= write_value;
                end
            endcase
        end
        if(isMRET_WB) begin
            CSR_reg[mstatus][12:11] <= 2'b11;
            CSR_reg[mstatus][7] <= 1'b1;
            CSR_reg[mstatus][3] <= CSR_reg[mstatus][7];
        end
    end
end

endmodule