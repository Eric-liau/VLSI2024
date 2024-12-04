
module ALU(
    input [2:0] ALUop,
    input [2:0] funct3,
    input [4:0] ALUctl,
    input [31:0] data1,
    input [31:0] data2,
    output reg [31:0] result,
    output reg isSet
);
//wire isMul;
//wire [31:0] fdata1, fdata2;
reg [63:0] mulres;
reg [31:0] temp;



localparam [4:0]    Add = 5'b00000,
                    Sub = 5'b00001,
                    Sl = 5'b00010,
                    Sr = 5'b00011,
                    Sr_unsigned = 5'b00100,
                    Slt = 5'b00101,
                    Slt_unsigned = 5'b00110,
                    Xor_a = 5'b00111,
                    Or_a = 5'b01000,
                    And_a = 5'b01001,
                    Lui = 5'b01010,
                    Mul = 5'b01011,
                    Mulh = 5'b01100,
                    Mulhsu = 5'b01101,
                    Mulhu = 5'b01110,
                    fAdd = 5'b01111,
                    fSub = 5'b10000,
                    isrs1 = 5'b10001,
                    And_not = 5'b10010;

always_comb begin
    case(ALUctl)
        Add : begin
            result = data1 + data2;
            mulres = 64'b0;
        end
        Sub : begin
            result = data1 - data2;
            mulres = 64'b0;
        end
        Sl : begin
            result = data1 << data2[4:0];
            mulres = 64'b0;
        end
        Sr : begin
            result = $signed(data1) >>> data2[4:0];
            mulres = 64'b0;
        end
        Sr_unsigned : begin
            result = data1 >> data2[4:0];
            mulres = 64'b0;
        end
        Slt : begin
            result = ($signed(data1) < $signed(data2)) ? 32'd1 : 32'd0;
            mulres = 64'b0;
        end
        Slt_unsigned : begin
            result = data1 < data2 ? 32'd1 : 32'd0;
            mulres = 64'b0;
        end
        Xor_a : begin
            result = data1 ^ data2;
            mulres = 64'b0;
        end
        Or_a : begin
            result = data1 | data2;
            mulres = 64'b0;
        end
        And_a : begin
            result = data1 & data2;
            mulres = 64'b0;
        end
        Lui : begin
            result = data2;
            mulres = 64'b0;
        end
        Mul : begin
            mulres = data1 * data2;
            result = mulres[31:0];
        end
        Mulh : begin
            mulres = $signed(data1) * $signed(data2);
            result = mulres[63:32];
        end
        Mulhsu : begin
            /*temp = data1[31] ? ~data1 + 1'b1 : data1;
            if(data1[31])
                mulres = ~(temp * $unsigned(data2)) + 1'b1;
            else
                mulres = temp * $unsigned(data2);*/
            mulres = $signed(data1) * $signed({1'b0, data2});
            result = mulres[63:32];
        end
        Mulhu : begin
            mulres = data1 * data2;
            result = mulres[63:32];
        end
        isrs1 : begin
            result = data1;
            mulres = 64'b0;
        end
        And_not : begin
            result = (~data1) & data2;
            mulres = 64'b0;
        end
        default : begin
            result = 32'b0;
            mulres = 64'b0;
        end
    endcase

    case(funct3)
        3'b000 : isSet = (data1 == data2) ? 1'b1 : 1'b0;
        3'b001 : isSet = (data1 != data2) ? 1'b1 : 1'b0;
        3'b100 : isSet = ($signed(data1) < $signed(data2)) ? 1'b1 : 1'b0;
        3'b101 : isSet = ($signed(data1) >= $signed(data2)) ? 1'b1 : 1'b0;
        3'b110 : isSet = (data1 < data2) ? 1'b1 : 1'b0;
        3'b111 : isSet = ({1'b0, data1} >= {1'b0, data2}) ? 1'b1 : 1'b0;
        default : isSet = 1'b0;
    endcase

end

endmodule