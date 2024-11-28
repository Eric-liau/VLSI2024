module Register(
    input clk,
    input rst,

    //CSR
    input isCSR,
    input isCSR_WB,
    input isMRET,
    input isMRET_WB,
    input [3:0] csr,
    input [3:0] csr_WB,
    input isinstruct,

    input WBctl,
    input isfloat_rs1,
    input isfloat_rs2,
    input isfloat_rd,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] val3,
    output reg [31:0] val1,
    output reg [31:0] val2
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

reg [31:0] reg_file[31:0];
reg [31:0] reg_file_float[31:0];

//CSR register
logic [31:0] CSR_reg [8:0]; 
logic [3:0] i;


//check if read writing register
always_comb begin
    if(isfloat_rs1) begin
        if(WBctl & (rs1 == rd) & isfloat_rd)
            val1 = val3;
        else
            val1 = reg_file_float[rs1];
    end
    else begin
        if(WBctl & (rs1 == rd) & ~isfloat_rd)
            val1 = val3;
        else if(isCSR_WB & (rs1 == rd) & ~isfloat_rd)
            val1 = CSR_reg[csr_WB];
        else
            val1 = reg_file[rs1];
    end
    
    if(isCSR) begin
        if(isCSR_WB && csr_WB == csr) begin
            val2 = 32'b0;
            case(csr_WB)
                mstatus : begin
                    val2[12:11] = val3[12:11];
                    val2[7] = val3[7];
                    val2[3] = val3[3];
                end
                mie : begin
                    val2 = val3[11];
                end
                default : val2 = val3;
            endcase
        end
        else
            val2 = CSR_reg[csr];
    end
    else if(isfloat_rs2) begin
        if(WBctl & (rs2 == rd) & isfloat_rd)
            val2 = val3;
        else
            val2 = reg_file_float[rs2];
    end
    else begin
        if(WBctl & (rs2 == rd) & ~isfloat_rd)
            val2 = val3;
        else if(isCSR_WB & (rs2 == rd) & ~isfloat_rd)
            val2 = CSR_reg[csr_WB];
        else
            val2 = reg_file[rs2];
    end
end

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
                    CSR_reg[mstatus][12:11] <= val3[12:11];
                    CSR_reg[mstatus][7] <= val3[7];
                    CSR_reg[mstatus][3] <= val3[3];
                end
                mie : begin
                    CSR_reg[mie][11] <= val3[11];
                    //CSR_reg[mie][7] <= val3[7];
                end
                //mip : begin
                //    CSR_reg[mip][11] <= val3[11];
                //    CSR_reg[mip][7] <= val3[7];
                //end
                mepc : begin
                    CSR_reg[mepc] <= val3;
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
 
always_ff@(posedge clk) begin
    reg_file[0] <= 32'b0;

    if(WBctl & (rd != 5'b0) & ~isfloat_rd) 
        reg_file[rd] <= val3;
    else if(WBctl & isfloat_rd)
        reg_file_float[rd] <= val3;    
end



endmodule