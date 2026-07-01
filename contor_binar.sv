`timescale 1ns / 1ps

module contor_binar(

    input  logic clk,
    input  logic inc,
    input  logic dec,
    input  logic reset,
    output logic [15:0] leds

);

logic inc_prev;
logic dec_prev;

always_ff @(posedge clk) begin
    if (reset) begin
        leds <= 16'd0;
        inc_prev <= 0;
        dec_prev <= 0;
    end
    else begin
        if (inc && !inc_prev)
            leds <= leds + 16'd1;
        else if (dec && !dec_prev)
            leds <= leds - 16'd1;
        inc_prev <= inc;
        dec_prev <= dec;
    end
end
endmodule