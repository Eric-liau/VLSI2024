module count_leading_zero(
    input [31:0] x,
    output reg [5:0] result
);
reg [31:0] x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, y, y1, y2, y3, y4, y5, y6;

always_comb begin
    //x |= (x >> 1)
    x1 = x >> 1;
    x2 = x | x1;
    //x |= (x >> 2)
    x3 = x2 >> 2;
    x4 = x2 | x3;
    //x |= (x >> 4)
    x5 = x4 >> 4;
    x6 = x4 | x5;
    //x |= (x >> 8)
    x7 = x6 >> 8;
    x8 = x6 | x7;
    //x |= (x >> 16)
    x9 = x8 >> 16;
    x10 = x9 | x8;

    //x -= (x >> 1) & 0x55555555
    y = (x10 >> 1) & 32'h55555555;
    y1 = x10 - y;
    //x = ((x >> 2) & 0x33333333) + (x & 0x33333333)
    y2 = ((y1 >> 2) & 32'h33333333) + (y1 & 32'h33333333);
    //x = ((x >> 4) + x) & 0x0f0f0f0f;
    y3 = ((y2 >> 4) + y2) & 32'h0f0f0f0f;
    //x += (x >> 8)
    y4 = y3 + (y3 >> 8);
    //x += (x >> 16)
    y5 = y4 + (y4 >> 16);

    //return (64 - (x & 0x7f));
    y6 = y5 & 32'h7f;
    result = 6'd32 - y6[5:0];

end

endmodule