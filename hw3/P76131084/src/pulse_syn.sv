module pulse_syn(
    input clk_a,
    input rst_a,
    input clk_b,
    input rst_b,

    input a_pulse,
    output logic b_pulse_toggle
);

logic a_pulse_toggle;
logic b_pulse1, b_pulse2, b_pulse3;

//assign b_pulse_toggle = b_pulse2 ^ b_pulse3;

always_ff@(posedge clk_a, posedge rst_a) begin
    if(rst_a) begin
        a_pulse_toggle <= 1'b0;
    end
    else begin
        a_pulse_toggle <= a_pulse ^ a_pulse_toggle;
    end
end

always_ff@(posedge clk_b/*, posedge rst_b*/) begin
    //if(rst_b) begin
    //    b_pulse1 <= 1'b0;
    //    b_pulse2 <= 1'b0;
    //    b_pulse3 <= 1'b0;
    //    b_pulse_toggle <= 1'b0;
    //end
    //else begin
        b_pulse1 <= a_pulse_toggle;
        b_pulse2 <= b_pulse1;
        b_pulse3 <= b_pulse2;
        b_pulse_toggle <= b_pulse2 ^ b_pulse3;
    //end
end

endmodule