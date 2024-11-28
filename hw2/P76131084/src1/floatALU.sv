`include "count_leading_zero.sv"
module floatALU(
    /*input clk,
    input rst,*/
    input [31:0] data1,
    input [31:0] data2,
    input [4:0] ALUctl,
    //output finish,
    output reg [31:0] result
);
wire sign1, sign2;
reg sign;
wire [7:0] exp1, exp2;
reg [7:0] exp, res_exp;
wire [22:0] fra1, fra2;
reg [22:0] fra;
reg [30:0] val1, val2;
reg [31:0] calRes, cal;
reg [7:0] shift_num;
wire [5:0] leading_zero;

assign {sign1, exp1, fra1} = data1;
assign {sign2, exp2, fra2} = data2; 

count_leading_zero count_zero(
    .x(calRes),
    .result(leading_zero)
);

always_comb begin
    if(exp1 > exp2) begin
        exp = exp1;
        shift_num = exp1 - exp2;
        val2 = {1'b1, fra2, 7'b0} >> shift_num;
        val1 = {1'b1, fra1, 7'b0};
    end
    else begin
        exp = exp2;
        shift_num = exp2 - exp1;
        val1 = {1'b1, fra1, 7'b0} >> shift_num;
        val2 = {1'b1, fra2, 7'b0};
    end
    if(ALUctl == 5'b01111) begin //add
        if(sign1 == sign2) begin
            calRes = {1'b0, val1} + {1'b0, val2};
            sign = sign1;
        end
        else begin
            if(val1 >= val2) begin
                calRes = val1 - val2;
                sign = sign1;
            end
            else begin
                calRes = val2 - val1;
                sign = sign2;
            end
        end
    end
    else begin //sub
        if(sign1 != sign2) begin
            calRes = {1'b0, val1} + {1'b0, val2};
            sign = sign1;
        end
        else begin
            if(val1 >= val2) begin
                calRes = val1 - val2;
                sign = sign1;
            end
            else begin
                calRes = val2 - val1;
                sign = ~sign1;
            end
        end
    end
    if(calRes == 32'b0) begin
        fra = 23'b0;
        res_exp = 8'b0;
        sign = 1'b0;
        cal = 32'b0;
    end
    else begin
        
        cal = calRes << leading_zero;
        if(cal[7:0] > 8'b10000000)
            fra = cal[30:8] + 23'b1;
        else if(cal[7:0] < 8'b10000000)
            fra = cal[30:8];
        else begin
            if(cal[8])
                fra = cal[30:8] + 23'b1;
            else
                fra = cal[30:8];
        end
        res_exp = exp - {2'b0, leading_zero} + 8'b1; //1'b1 : prevent overflow bit
    end
    result = {sign, res_exp, fra};

end

endmodule