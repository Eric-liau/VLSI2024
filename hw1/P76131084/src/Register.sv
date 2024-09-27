module Register(
    input clk,
    //input rst,
    input WBctl,
    input isfloat_rs1,
    input isfloat_rs2,
    input isfloat_rd,
    input [2:0] ALUop,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] val3,
    output reg [31:0] val1,
    output reg [31:0] val2
);
reg [31:0] reg_file[31:0];
reg [31:0] reg_file_float[31:0];
//integer i;


/*always_comb begin
    if(isfloat_ID) begin
        val2 = reg_file_float[rs2];
    end 
    else begin
        val2 = reg_file[rs2];
    end
    if(isfloat_ID & ALUop == 3'b110)
        val1 = reg_file_float[rs1];
    else
        val1 = reg_file[rs1];
end*/
always_comb begin
    if(isfloat_rs1)
        val1 = reg_file_float[rs1];
    else
        val1 = reg_file[rs1];
    
    if(isfloat_rs2)
        val2 = reg_file_float[rs2];
    else
        val2 = reg_file[rs2];
    

end

 
always_ff@(posedge clk/*, posedge rst*/) begin
    reg_file[0] <= 32'b0;
    if(WBctl & (rd != 5'b0) & ~isfloat_rd) 
        reg_file[rd] <= val3;
    else if(WBctl & isfloat_rd)
        reg_file_float[rd] <= val3;
end



endmodule